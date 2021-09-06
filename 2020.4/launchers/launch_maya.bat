@echo off

echo Opening Maya 2020.4 with Pixar USD Support...

set PYTHONPATH=%PYTHONPATH%;D:\pxrUSD\2020.4\pxrUSDCore\lib\python
set PATH=%PATH%;D:\pxrUSD\2020.4\pxrUSDCore\bin;D:\pxrUSD\2020.4\pxrUSDCore\lib
set MAYA_MODULE_PATH=%MAYA_MODULE_PATH%;D:\pxrUSD\2020.4\pxrUSDMayaCore

"C:\Program Files\Autodesk\Maya2020\bin\maya.exe"