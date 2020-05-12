# Config file for the gnome terminal

## Export config from gnome-terminal

```bash
dconf dump /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ > ./gnome-terminal/my.dconf
```

## Import from repo to gnome-terminal
```bash
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ./gnome-terminal/my.dconf
```
