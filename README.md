# mm20
🐭🤖

TM4C Code Composer Studio Environment Setup
1. Download and install [Code Composer Studio (CCS) v9.3.0](https://www.ti.com/tool/download/CCSTUDIO/9.3.0.00012).
    * Choose either the single-file installer or on-demand installer.
    * Leave all settings as default except the following:
    * ![Settings Image](https://i.imgur.com/PTGEXd5.png)
    
2. Open Resource Explorer
    * ![Resource Explorer Image](https://i.imgur.com/TyU6Rpb.png)
    
3. Navigate to Software -> Click on TI-RTOS for TivaC and click install. Leave settings as default in the popup box.
      * ![Resource Explorer Image 2](https://i.imgur.com/BMF9vZH.png)
      * ![Resource Explorer Install Image](https://i.imgur.com/8Pujq0D.png)

4. To open up and test an example project, go to Resource Explorer -> TI-RTOS for TivaC -> EK-TM4C123GXL -> Driver Examples -> GPIO Examples -> GPIO Interrupt
      * Press the import button ![Import](https://i.imgur.com/aZa60IC.png)
      * Press OK on any dialogs that come up

5. After the project is imported, it should appear in your project explorer. If you can't find the project explorer, click on View -> Project Explorer
      * ![Project Explorer](https://i.imgur.com/gMqyJJb.png)

6. The example code can be found in gpiointerrupt_EK_TM4C.../gpiointerrupt.c
7. Plug the board into your computer and set the board power switch so that the green LED turns on. Make sure to plug the USB into the same port as the one in       the picture. Press the debug button and accept any dialog boxes. 
      * ![USB Port](https://i.imgur.com/XmdeF07.png)
      * ![Debug Button](https://i.imgur.com/fHwHgSs.png)
8. In the window that pops up, change your settings to the following and click on save:
      * Connection: Stellaris In-Circuit Debug Interface
      * Board or Device: In the search bar, look up GH6PM and activate the checkbox for Tiva TM4C123GH6PM
      * Click on the save button under Save Configuration
      * ![CCXML](https://i.imgur.com/Tz6Cn8R.png)
9. Click on the debug button again. CCS will now flash your TM4C board with the new code. To test the code, press the bottom 2 buttons and make sure the red LED turns on.
