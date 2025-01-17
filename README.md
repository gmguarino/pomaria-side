# Pomaria-Side Conky

Pomaria-side is a conky theme that displays system resources usage in fine lines, on the side of the screen.
This fork is the setup I use for my personal Linux Mint 20.2 Uma laptop so that I can reproduce the setup elsewhere quickly.
Clone to the `~/.conky/` folder and run setup.sh (do not run with `sudo`, you will be prompted for a password). 

Find the original repo at https://github.com/SZinedine/pomaria-side

## Screenshots

### For dark themes

##### monochrome dark

![monochrome dark](.github/monochrome_dark.jpg)

##### blue dark

![blue dark](.github/blue_dark.jpg)

***

### For light themes

##### monochrome light

![monochrome light](.github/monochrome_light.jpg)


##### blue light

![blue light](.github/blue_light.jpg)



More colors schemes are available. Choose a color from the `settings.lua` file and restart conky to take effect.

***


## Download and Launch

```sh
git clone https://www.github.com/SZinedine/pomaria-side
cd pomaria-side
conky -c conkyrc
```

Edit `settings.lua` to choose your network interface, Internet speed and other settings.

***

## Dependencies

- Conky 1.10+
- cairo
- imlib2

