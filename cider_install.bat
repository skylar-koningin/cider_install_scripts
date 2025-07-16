@echo off

clear

:operating_system
    echo "What operating system are you on?"
    echo "1. Windows"
    set /p os="Select an Operating system (choose 0 to abort): "
}

IF "%os%" "=" "0" (
  echo "Aborting install..."
  exit

) ELSE (
  IF "%os%" "=" "1" (
    cd "%CD%\windows"
    windows.bat

  ) ELSE (
    echo "Invalid option, choose again."
    CALL :operating_system

  )
)
