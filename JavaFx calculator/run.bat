@echo off
cd /d "%~dp0"
echo Compiling...
javac --module-path "C:\javafx-sdk-17\lib" --add-modules javafx.controls,javafx.fxml Main.java Controller.java
if %errorlevel% neq 0 (
    echo Compilation failed!
    pause
    exit /b 1
)
echo Running Calculator...
java --module-path "C:\javafx-sdk-17\lib" --add-modules javafx.controls,javafx.fxml Main
pause
