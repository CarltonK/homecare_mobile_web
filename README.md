## Running the app
```
docker compose up
```
Once the container is confirmed to be running, the app can be accessed at http://localhost:8080

## Generate Models
```
dart run build_runner build
```

## Changing App Logo
1. Edit the bottom section of the pubspec.yaml labelled flutter_launcher_icons. 
   Set the correct path to the icon.
2. Run the command below on the terminal on the project root folder
```
dart run flutter_launcher_icons
```

