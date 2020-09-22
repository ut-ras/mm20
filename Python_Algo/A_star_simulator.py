import pygame
import math
from queue import PriorityQueue

width = 800
win = pygame.display.set_mode((width, width))
pygame.display.set_caption('A* Path finding Algorithm')

# colors
red = (255, 0, 0)
green = (0, 255, 0)
blue = (0, 0, 255)
yellow = (255, 255, 0)
black = (0, 0, 0)
white = (255, 255, 255)
purple = (128, 0, 128)
orange = (255, 165, 0)
grey = (128, 128, 128)
turquoise = (64, 224, 208)


class Spot:
    def __init__(self, row, col, width, total_rows):
        self.row = row
        self.col = col
        self.x = row * width
        self.y = col * width
        self.color = white
        self.neighbors = []
        self.width = width
        self.total_rows = total_rows

    def get_pos(self):
        return self.row, self.col

    def is_closed(self):
        return self.color == red

    def is_open(self):
        return self.color == green

    def is_barrier(self):
        return self.color == black

    def is_start(self):
        return self.color == orange

    def is_end(self):
        return self.color == turquoise

    def make_start(self):
        self.color = orange

    def reset(self):
        self.color = white

    def make_closed(self):
        self.color = red

    def make_open(self):
        self.color = green

    def make_barrier(self):
        self.color = black

    def make_end(self):
        self.color = turquoise

    def make_path(self):
        self.color = purple

    def draw(self, win):
        pygame.draw.rect(win, self.color, (self.x, self.y, self.width, self.width))

    def update_neighbors(self, grid):
        self.neighbors = []
        if self.row < self.total_rows - 1 and not grid[self.row + 1][
            self.col].is_barrier():  # check if you can move down
            self.neighbors.append(grid[self.row + 1][self.col])

        if self.row > 0 and not grid[self.row - 1][self.col].is_barrier():  # check if you can move up
            self.neighbors.append(grid[self.row - 1][self.col])

        if self.col < self.total_rows - 1 and not grid[self.row][
            self.col + 1].is_barrier():  # check if you can move right
            self.neighbors.append(grid[self.row][self.col + 1])

        if self.col > 0 and not grid[self.row][self.col - 1].is_barrier():  # check if you can move left
            self.neighbors.append(grid[self.row][self.col - 1])

    def __lt__(self, other):  # lt means less than, this is how we will handle comparing two spot objects
        return False


def h(p1, p2):  # formula: manhattan distance where its like a L sum of the x and y distance
    x1, y1 = p1
    x2, y2 = p2
    return abs(x1 - x2) + abs(y1 - y2)


def reconstruct_path(came_from, current, draw):  # drawing the main path
    while current in came_from:
        current = came_from[current]
        current.make_path()
        draw()


def algorithm(draw, grid, start, end):
    count = 0
    open_set = PriorityQueue()
    open_set.put((0, count, start))  # add the start node to the set
    came_from = {}  # what node did we come from
    g_score = {spot: float('inf') for row in grid for spot in row}  # setting all starting g scores to infinite
    g_score[start] = 0  # setting start node g score to 0
    f_score = {spot: float('inf') for row in grid for spot in row}  # setting all starting f scores to infinite
    f_score[start] = h(start.get_pos(), end.get_pos())  # since f= g + h and g[start] =0 so f=h

    open_set_hash = {start}  # keeps track of all items in the queue and not in the queue

    while not open_set.empty():
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()

        current = open_set.get()[2]  # get just the node
        open_set_hash.remove(current)  # syncing with priority queue

        if current == end:  # found the end; now make path
            reconstruct_path(came_from, end, draw)
            end.make_end()
            return True

        for neighbor in current.neighbors:
            temp_g_score = g_score[current] + 1

            if temp_g_score < g_score[neighbor]:  # if we find a better path than before update this as the better path
                came_from[neighbor] = current
                g_score[neighbor] = temp_g_score
                f_score[neighbor] = temp_g_score + h(neighbor.get_pos(), end.get_pos())  # f score of neighbor
                if neighbor not in open_set_hash:
                    count += 1
                    open_set.put((f_score[neighbor], count, neighbor))  # adding optimal node to the open set
                    open_set_hash.add(neighbor)  # syncing with priority queue
                    neighbor.make_open()  # make this green for open

        draw()

        if current != start:
            current.make_closed()  # if the node we just looked at make it red bc we have already considered it.
    return False  # we did not find a path


def make_grid(rows, width):  # this will make
    grid = []  # a 2d list [ [ [ [], [], [], ], [], [] ]
    gap = width // rows
    for i in range(rows):
        grid.append([])
        for j in range(rows):
            spot = Spot(i, j, gap, rows)  # this tells spot where to make each block
            grid[i].append(spot)  # adding each block into the current row
    return grid


def draw_grid(win, rows, width):  # this will the draw the grid lines
    gap = width // rows
    for i in range(rows):
        pygame.draw.line(win, grey, (0, i * gap), (width, i * gap))  # horizontal lines drawing

    for i in range(rows):
        pygame.draw.line(win, grey, (i * gap, 0), (i * gap, width))  # vertical lines drawing


# def draw_borders(win, rows, width):
#     borders = []
#     def create_spot(rows)
#     for i in range(rows):
#         current = Spot()


def draw(win, grid, rows, width):  # main draw function that will draw everything
    win.fill(white)  # fills the entire screen with white

    # drawing all the cubes
    for row in grid:
        for spot in row:
            if spot.row == 0 or spot.col == 0 or spot.row == rows-1 or spot.col == rows-1:
                spot.make_barrier()
            spot.draw(win)  # draws a cube

    draw_grid(win, rows, width)
    pygame.display.update()  # this tells pygame to make all the changes we made above and update the display


def get_clicked_pos(pos, rows, width):  # figuring out which block the user clicks on
    gap = width // rows
    y, x = pos
    row = y // gap
    col = x // gap
    return row, col


def main(win, width):  # main loop; determines all of the checks we are doing
    rows = 50
    grid = make_grid(rows, width)

    start = None
    end = None

    run = True
    started = False

    while run:
        draw(win, grid, rows, width)
        for event in pygame.event.get():  # check what events are happening
            if event.type == pygame.QUIT:  # if we quit pygame end the pygame window
                run = False

            if started:  # if the algorithm is started we don't want the user changing anything; only thing allowed is quitting the window
                continue

            if pygame.mouse.get_pressed()[0]:  # if left clicked then place start, stop, and barriers
                pos = pygame.mouse.get_pos()
                row, col = get_clicked_pos(pos, rows, width)
                spot = grid[row][col]
                if not start and spot != end:
                    start = spot
                    start.make_start()
                elif not end and spot != start:
                    end = spot
                    end.make_end()
                elif spot != end and spot != start:
                    spot.make_barrier()

            elif pygame.mouse.get_pressed()[2]:  # if right clicked then reset clicked block
                pos = pygame.mouse.get_pos()
                row, col = get_clicked_pos(pos, rows, width)
                spot = grid[row][col]
                spot.reset()
                if spot == start:
                    start = None
                elif spot == end:
                    end = None

            if event.type == pygame.KEYDOWN:  # check if space is press so start the algo
                if event.key == pygame.K_SPACE and start and end:
                    for row in grid:
                        for spot in row:
                            spot.update_neighbors(grid)

                    algorithm(lambda: draw(win, grid, rows, width), grid, start,
                              end)  # once we start we are gonna start the algo

                if event.key == pygame.K_c:
                    start = None
                    end = None
                    grid = make_grid(rows, width)

    pygame.quit()


main(win, width)
