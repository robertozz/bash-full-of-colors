# Le mie modifiche

Ho aggiunto ccze per colorare i file a video e figlet per visualizzare un testo grande in ASCII art con il font roman.

```
sudo apt install ccze figlet wget
sudo wget http://www.figlet.org/fonts/roman.flf && sudo mv roman.flf /usr/share/figlet/roman.flf
```

Implemento un comando in ~/.bashrc per vedere i log colorati

```
tailc /var/log/ESEMPIO
```

Adatto il file ~/.bash_aliases alle mie esigenze

Inoltre ho aggiunto un messaggio all'avvio che mi avvisa su che server stò lavorando con il figlet nel file ~/.bashrc_profile.

Di seguito il testo originale del repository da cui questo deriva.

# Bash *full of colors*

Powerful `.bashrc` and `.bash_profile` coming together with colorful output. It adds additional information
to your command prompt and many useful aliases.

Features:
* shows number of active background jobs
* shows number of open *screen* sockets
* *hostname* color is based on host unique identifier to simplify server identification by the user when working with multiple open SSH sessions
* shows checked-out branch name when current directory is within Git repository
* shows last command return code if it differs from 0


## Installation

The most convenient way of installation is to checkout the repository and symlink the relevant scripts.
Assuming the installation in home directory:

```bash
git clone https://github.com/robertozz/bash-full-of-colors.git .bash-full-of-colors
[ -f .bashrc ] && mv -v .bashrc bashrc.old
[ -f .bash_profile ] && mv -v .bash_profile bash_profile.old
[ -f .bash_aliases ] && mv -v .bash_aliases bash_aliases.old
[ -f .bash_logout ] && mv -v .bash_logout bash_logout.old
ln -s .bash-full-of-colors/bashrc.sh .bashrc
ln -s .bash-full-of-colors/bash_profile.sh .bash_profile
ln -s .bash-full-of-colors/bash_aliases.sh .bash_aliases
ln -s .bash-full-of-colors/bash_logout.sh .bash_logout
```


## Application aliases

Many Unix commands have already newer and more feature-rich replacements. Following aliases are defined in
`bash_aliases.sh`:

|Command:       |Replacement:    |
| ------------- | -------------- |
|df             |pydf            |
|less           |most            |
|tail           |multitail       |
|top            |htop            |
|tracepath      |mtr             |
|traceroute     |mtr             |

To install them, run following command:

```bash
sudo apt install most multitail pydf mtr htop
```

If you don't have them installed, script falls back to the original command.


## Credits

2015 Michał Słomkowski. The code is published under the terms of Apache License 2.0.
