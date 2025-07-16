def apt_install():
    print("Selected apt package manager")
    import subprocess
    try:
        subprocess.run(["sudo", "apt", "install", "curl" "-y"])
        subprocess.run(["curl", "-fsSL", "https://repo.cider.sh/APT-GPG-KEY", "|", "sudo", "gpg", "--dearmor", "-o", "/usr/share/keyrings/cider-archive-keyring.gpg"])
        subprocess.run(["echo", '"deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main"', "|", "sudo", "tee", "/etc/apt/sources.list.d/cider.list"])
        subprocess.run(["sudo", "apt", "update"])
        subprocess.run(["sudo", "apt", "install", "cider"])
        subprocess.run(["echo", '"Cider installed successfully"'])
    except:
        print("Install Failed")
