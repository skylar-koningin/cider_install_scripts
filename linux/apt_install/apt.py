def apt_install():
    print("Selected apt package manager")
    import subprocess
    import os

    def run_cmd(cmd, shell=False, check=True, input_text=None):
        """Helper to run shell commands with optional input."""
        if input_text:
            return subprocess.run(cmd, shell=shell, check=check, text=True, input=input_text)
        return subprocess.run(cmd, shell=shell, check=check)

    def main():
        try:
            run_cmd(['sudo', 'apt', 'install', '-y', 'curl'])

            run_cmd(['sudo', 'apt', 'update'])
            run_cmd(['sudo', 'apt', 'upgrade', '-y'])

            cider_dir = os.path.expanduser('~/cider_install_scripts/linux/apt')
            os.chdir(cider_dir)

            gpg_key = subprocess.check_output(['curl', '-fsSL', 'https://repo.cider.sh/APT-GPG-KEY'], text=True)
            run_cmd(['sudo', 'gpg', '--dearmor', '-o', '/usr/share/keyrings/cider-archive-keyring.gpg'],
                    input_text=gpg_key)

            repo_entry = 'deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main'
            run_cmd(['sudo', 'tee', '/etc/apt/sources.list.d/cider.list'], input_text=repo_entry)

            run_cmd(['sudo', 'apt', 'update'])
            run_cmd(['sudo', 'apt', 'upgrade', '-y'])
            run_cmd(['sudo', 'dpkg', '-i', 'cider-v3.0.2-linux-x64.deb'])

            run_cmd(['sudo', 'apt', 'install', '-f', '-y'])
            run_cmd(['sudo', 'apt', 'install', '-y', 'cider'])

            print("Cider has been installed!")

            deb_file = os.path.join(cider_dir, 'cider-v3.0.2-linux-x64.deb')
            run_cmd(['sudo', 'rm', deb_file])

            os.chdir(os.path.expanduser('~/'))

        except subprocess.CalledProcessError as e:
            print(f"Command failed: {e}")
            exit(1)

    if __name__ == '__main__':
        main()
