
For now, just do
```sh
ln -s $PWD/containers $HOME/.config/containers
systemctl --user daemon-reload
systemctl enable --now syncthing
```

But I'll probably switch to GNU Stow.
