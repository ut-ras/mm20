# Installation Guide

## Windows
### Building
* Install [Keil](https://www.keil.com/demo/eval/arm.htm)
  * The device we're using is the `TM4C123GH6PM`
  * If it doesn't accept your UT email, download it from [here](https://utexas.box.com/s/gsnnv6mcyqviivyvzziii3ygvl9g9866)
* Install the [GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) using option 2 in the linked page
* Clone this repository `git clone https://github.com/ut-ras/mm20.git` from command prompt or use github desktop for a graphical experience
* Double click mm.uvprojx, it should open the micromouse project in Keil
* Starting from the `Project` menu at the top of the screen, navigate to `Project->Manage->Project Items->Folder/Extensions`
* Check the option `Use gcc compiler`, the ARM compiler should now be grayed out
* Click on the folder sub-field and browse to `C:\Program Files (x86)\GNU Tools ARM Embedded\8 2019-q3-update\`
* Exit the menu, and navigate to the menu `Project -> Options -> Debug`
  * In the dropdown next to the `use` field, select `Stellaris ICDI`
* Because of peculiarities in the way Keil links the c libraries we need, we must now manual move the library files to our repository
  * From the folder `C:\Program Files (x86)\GNU Tools ARM Embedded\8 2019-q3-update\arm-none-eabi\lib\thumb\v7e-m+fp\hard` copy the files `libc_nano.a`, `libm.a`, and `libnosys.a`
  * Paste them into `mm20/misc`
* Click the build button, you might have warnings but the build should complete without errors
### Flashing
* Next download and unzip [Stellaris ICDI](http://www.ti.com/tool/STELLARIS_ICDI_DRIVERS)
  * Once a TM4C microcontroller is plugged in, open `Device Manager` and find and right click on the unrecognized usb device
  * Select `Update Drivers` and select `browse my computer for driver software`, then select the uncompressed ICDI folder
  * Unplug and Reconnect your microcontroller
  * In Keil you should now be able to hit the flash button to flash code to the TM4C microcontroller
### Serial (UART)
* Download [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
* In the `Ports -> USB serial device` menu of `Device Manager` you should be able to see the `COM` port the microcontroller is hooked up to ex. `COM4`.
* In the `Session` menu, select the `Serial` connection type
* Enter the correct serial line from device manager, ex. `COM4` and set the speed to `115200`
* You will now be able to send and recieve information to the TM4C through UART
### Simulation
* Install the MinGW gcc compiler
  * Download `MinGW-W64-install.exe` from [the download page](https://sourceforge.net/projects/mingw-w64/files/)
  * Install from the exe, make sure to change the architecture selection to x86_64
* Add the MinGW compiler to your path
  * Open the Windows Environment variables settings screen
  * Select PATH, click edit, choose the next empty line and click browse
  * Navigate to the `MinGW` folder in `Program Files` and select the `bin` folder
  * save your settings and open command prompt, type in gcc and hit enter, if you get an error meesage from gcc, it was correctly added to your path
* Clone the template algorithm `git clone https://github.com/mackorone/mms-c.git`
* Download and uncompress the [mms](https://github.com/mackorone/mms/releases) simulator
* Run `mms.exe` and click the "+" button to configure a new algorithm
  * Enter a name, then for the directory field navigate to where you cloned `mms-c` and select the `mms-c` folder
  * Enter `gcc API.c Main.c` for the build command
  * For the run command, copy the directory path and append `\a.exe`
  * The build and run buttons should now be able to run the algorithm
  
## Ubuntu (Not WSL)
  * Create a file called `61.dialout.rules` in `/etc/udev/rules.d` with the following line:
    * `SUBSYSTEM=="usb", ATTRS{idVendor}=="1cbe", ATTRS{idProduct}=="00fd", MODE="0666"`
    * This allows any program to read or write to your TM4C
    * Run `udevadm control --reload` and/or unplug and reconnect your TM4C
  * `sudo apt update`
  * `sudo apt install gcc-arm-none-eabi gdb-arm-none-eabi make clang openocd screen`
  * `git clone https://github.com/ut-ras/mm20.git`
  * `cd mm20`
  * Run `make` to build, `make flash` to flash, `make debug` to debug, and `make uart` to view serial output
  
## Arch
  * Create a file called `61.dialout.rules` in `/etc/udev/rules.d` with the following line:
    * `SUBSYSTEM=="usb", ATTRS{idVendor}=="1cbe", ATTRS{idProduct}=="00fd", MODE="0666"`
    * This allows any program to read or write to your TM4C
    * Run `udevadm control --reload` and/or unplug and reconnect your TM4C
  * Using an AUR compatible package manager, install the compiler, simulator and `screen` to view UART
    * `yay -Syu arm-none-eabi-newlib arm-none-eabi-gdb mms-git screen`
  * `git clone https://github.com/ut-ras/mm20.git`
  * `cd mm20`
  * Run `make` to build, `make flash` to flash, `make debug` to debug, and `make uart` to view serial output
