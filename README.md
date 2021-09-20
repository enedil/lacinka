# lacinka

Belarusian Latin keyboard layout for Windows and Mac. The layout is based on the US-english with the adiotion of the belarusian and polish letters enabling a user to type in 3 languages without switching the layout. It is suppoised to replace the english layout in your system.

## Layout preview

![Layout preview][layout-preview]

## Installation

### Automatic

Go to the [releases section][releases] of this repository and download the package for your operating system.

### Manual

**macOS:**

1. Clone this repository.
2. Put `./lacinka/mac/Belarusian (Latin).bundle` directory into `~/Library/Keyboard Layouts`. If you want to be able to select this layout on the login window, put it into the `/Library/Keyboard Layouts` directory instead.
3. Restart your Mac.
4. Open keyboard settings and add "Belarusian (Latin)" on the "Input Sources" tab.

**Windows:**

1. Clone this repository.
2. Download [Microsoft Keyboard Layout Creator][msklc].
3. Open `Belarusian (Latin).klc`.
4. Go to `Project > Build DLL and Setup Package`.
5. Skip the layout verification warning messages.
6. Go to the build directory and run `setup.exe` from there.

## Contributing

Use [Ukelele][ukelele] on macOS and [Microsoft Keyboard Layout Creator][msklc] on Windows to edit the source files.


[layout-preview]: ./.static/Lacinka-BY-PL-US.png
[releases]: https://github.com/aicantar/lacinka/releases
[msklc]: https://support.microsoft.com/en-us/help/823010/the-microsoft-keyboard-layout-creator
[ukelele]: http://software.sil.org/ukelele/
