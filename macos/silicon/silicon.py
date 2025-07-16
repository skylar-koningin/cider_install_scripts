def silicon_cpu():
    print("Chose MacOS with an Silicon CPU...")
    import subprocess
    import os

    def run_cmd(cmd, shell=False, check=True):
        """Helper function to run shell commands."""
        return subprocess.run(cmd, shell=shell, check=check)

    def main():
        try:
            silicon_path = os.path.expanduser('~/cider_install_scripts/macos/silicon')
            os.chdir(silicon_path)

            dmg_file = os.path.join(silicon_path, 'cider-v3.0.2-macos-arm64.dmg')
            run_cmd(['hdiutil', 'attach', dmg_file])

            run_cmd(['sudo', 'cp', '-rf', '/Volumes/Cider Installer (arm64)/Cider.app', '/Applications'])

            run_cmd(['sudo', 'hdiutil', 'detach', '/Volumes/Cider Installer (arm64)/'])

            print("Cider has been installed!")

            run_cmd(['sudo', 'rm', dmg_file])

            os.chdir(os.path.expanduser('~/'))

        except subprocess.CalledProcessError as e:
            print(f"Command failed: {e}")
            exit(1)

    if __name__ == '__main__':
        main()
