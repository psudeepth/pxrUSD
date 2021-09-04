@echo off

echo Opening Maya 2018.6 with Pixar USD Support...

set PYTHONPATH=%PYTHONPATH%;C:\pxrUSD\pxrUSDCore\lib\python
set PATH=%PATH%;C:\pxrUSD\pxrUSDCore\bin;C:\pxrUSD\pxrUSDCore\lib
set MAYA_MODULE_PATH=%MAYA_MODULE_PATH%;C:\pxrUSD\pxrUSDMayaCore

"C:\Program Files\Autodesk\Maya2018\bin\maya.exe"