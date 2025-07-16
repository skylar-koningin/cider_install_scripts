import subprocess

def pacman_install():
    print("Selected pacman package manager")
    import subprocess
    import os

    def run_cmd(cmd, shell=False, check=True, input_text=None):
        """Helper function to run shell commands with optional input."""
        if input_text:
            return subprocess.run(cmd, shell=shell, check=check, text=True, input=input_text)
        return subprocess.run(cmd, shell=shell, check=check)

    def main():
        try:
            run_cmd(['sudo', 'pacman', '-Syu'])

            cider_dir = os.path.expanduser('~/cider_install_scripts/linux/pacman')
            os.chdir(cider_dir)

            curl = subprocess.Popen(
                ['curl', '-s', 'https://repo.cider.sh/ARCH-GPG-KEY'],
                stdout=subprocess.PIPE
            )
            run_cmd(['sudo', 'pacman-key', '--add', '-'], input_text=curl.stdout.read().decode())

            run_cmd(['sudo', 'pacman-key', '--lsign-key', 'A0CD6B993438E22634450CDD2A236C3F42A61682'])

            repo_config = """
    # Cider Collective Repository
    [cidercollective]
    SigLevel = Required TrustedOnly
    Server = https://repo.cider.sh/arch
    """
            run_cmd(['sudo', 'tee', '-a', '/etc/pacman.conf'], input_text=repo_config)

            run_cmd(['sudo', 'pacman', '-Sy'])

            run_cmd(['sudo', 'pacman', '-U', 'cider-v3.0.0-linux-x64.pkg.tar.zst'])

            run_cmd(['sudo', 'pacman', '-S', 'cider'])

            print("Cider has been installed!")

            pkg_path = os.path.expanduser('~/cider_install_scripts/linux/pacman/cider-v3.0.0-linux-x64.pkg.tar.zst')
            run_cmd(['sudo', 'rm', pkg_path])

            os.chdir(os.path.expanduser('~/'))

        except subprocess.CalledProcessError as e:
            print(f"Command failed: {e}")
            exit(1)

    if __name__ == '__main__':
        main()
