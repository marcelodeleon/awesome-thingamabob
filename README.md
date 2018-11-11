# Awesome Thingamabob setup
Ansible configuration for dev machine

## Installing :rocket:
Before running the setup script, make sure that you have git installed.
Run ```git --version``` to check. If git is missing, Xcode will prompt an installation.

Clone the repo:
```
$ git clone https://github.com/marcelodeleon/awesome-thingamabob.git
```

Then, inside the root of the repo run:
```
$ ./setup.sh
```

## Manual configuration
TODO: Verify if you need to set zsh to default manually or if there's a way to automate it with ansible.

### Alfred
- Set the Alfred hotkey to cmd+space
- Activate the PowerPack

### iTerm2
- Alt + left is not moving back a word
- Activate Dracula theme
    1. iTerm2 > Preferences > Profiles > Colors Tab
    2. Open the Color Presets... drop-down in the bottom right corner
    3. Select Import... from the list
    4. Select the Dracula.itermcolors file
    5. Select the Dracula from Color Presets...
- Load Fura Code Retina Complete and enable ligatures

## Caveats
I was not able to get the Dracula theme for vim installed with vim-plug.
Instead, I had to copy the `dracula.vim` file into `~/.vim/colors`.
Make sure to override it if the file gets bugfixes or improvements over time.
