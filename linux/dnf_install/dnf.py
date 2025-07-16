import subprocess

def dnf_install():
    print("Selected dnf package manager")
    import subprocess
    import os

    def run_cmd(cmd, shell=False, check=True, input_text=None):
        """Helper function to run shell commands with optional input."""
        if input_text:
            return subprocess.run(cmd, shell=shell, check=check, text=True, input=input_text)
        return subprocess.run(cmd, shell=shell, check=check)

    def main():
        try:
            run_cmd(['sudo', 'dnf', 'upgrade', '-y'])

            os.chdir(os.path.expanduser('~/cider_install_scripts/linux/dnf'))

            run_cmd(['sudo', 'rpm', '--import', 'https://repo.cider.sh/RPM-GPG-KEY'])

            run_cmd(['sudo', 'mv', '~/cider_install_scripts/linux/dnf/cider.repo', '/etc/yum.repos.d'], shell=True)

            run_cmd(['sudo', 'dnf', 'makecache'])

            run_cmd(['sudo', 'rpm', '-i', 'cider', 'cider-v3.0.2-linux-x64.rpm'])

            run_cmd(['sudo', 'dnf', 'install', '-y', 'cider'])

            print("Cider has been installed!")

            run_cmd(['sudo', 'rm', '~/cider_install_scripts/linux/dnf/cider-v3.0.2-linux-x64.rpm'], shell=True)

            os.chdir(os.path.expanduser('~/'))

        except subprocess.CalledProcessError as e:
            print(f"Command failed: {e}")
            exit(1)

    if __name__ == '__main__':
        main()
