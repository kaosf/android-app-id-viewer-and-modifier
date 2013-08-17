# App ID Viewer (Empty App)

Display App ID in MainActivity.

...Now, you can change it very easily.

## Usage

This App ID is `net.kaosfield.app` defaultly. Change it to `com.example.app` with a following command;

```sh
./rename.sh com example app
```

Application ID will be changed to `com.example.app` and some others (e.g. the structure of directories, res/values/strings.xml) also be modified.

Undo feature is implemented as `undo.sh`, but it is too naive (git command is required).

## License

[MIT](http://opensource.org/licenses/MIT)
