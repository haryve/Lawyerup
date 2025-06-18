# constitutionsimplified

This Flutter project was created with FlutterFlow.

## Getting Started

1. Ensure you are using the Flutter **stable** channel.
2. Run `flutter pub get` to install dependencies.
3. Launch the app with `flutter run`.

### Network image caching

All network images now use `CachedNetworkImage` which provides caching, a placeholder spinner, and an error icon if the image fails to load.

### Customizing the iOS launch screen

Replace the images in `ios/Runner/Assets.xcassets/LaunchImage.imageset/` to customize the launch screen. See the README in that directory for details.
