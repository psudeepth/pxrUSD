# pxrUSD
Pixar USD build for Maya 2018.6 with Maya plugin.

## Build environment:<br/>
Windows 10 October 2020 Update running on a Oracle VM VirtualBox (Version 6.1.18) on Macbook Air 2017 model with Mac OS Big Sur (11.2.1)

## Project execution:<br/>
Project was build in the path C:\pxrUSD with Pixar USD build files in pxrUSDCore and Maya plugin build in pxrUSDMayaCore. for execution clone the repo to C:\ and to launch the Maya 
run C:\pxrUSD\launchers\launch_maya.bat file. All the variables are set in the batch file as per build files in C:\pxrUSD folder. If cloning is done in any other location please
change the path accordingly in the below files

1. launchers\launch_maya.bat
2. pxrUSDMayaCore - inside all three .mod files

After launching maya, plugins has to be loaded manually as of now or can be loaded automatically through usersetup.py

## Bugs:<br/>
Initial testing of loading the plugins has be been done from the default build path and found the below bugs

1. Pixar maya plugin is not loading

## ToDo:<br/>
1. Cloning the repo to a diffrent location ie server path and testing the working of pixar USD and Maya plugins.
2. Exporting, importing, or referencing of USD files in maya.
3. Pipeline integration.
