require 'fileutils'
system("curl.exe https://builds.dotnet.microsoft.com/dotnet/WindowsDesktop/8.0.18/windowsdesktop-runtime-8.0.18-win-x64.exe")
system("windowsdesktop-runtime-8.0.18-win-x64.exe")
FileUtils.mv(File.expand_path("~/Downloads/cider-v3.0.0-windows-x64.exe"), "./")
system("cider-v3.0.0-windows-x64.exe")
