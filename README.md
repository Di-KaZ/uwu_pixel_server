# uwu_pixel_server

# Run the server

#### UPDATE DOCKERFILE

With the dockerfile just use those two commands :

```bash
docker build -t uwu_server .
docker run -it -p 8080:8080 --rm --name uwu_server uwu_server
```

```
 📦 Install the dart_frog cli from pub.dev
dart pub global activate dart_frog_cli
```

## If youre on windows
modify the [initial_load.dart file](routes/initial_load.dart#L10-L12)

comment line `10` and uncomment line `12`

```
dart run build_runner build
dart_frog dev
```
