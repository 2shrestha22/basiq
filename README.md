<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A Basiq SDK for Flutter. [This SDK does not have all feature.]

## Features

- Authentication
- BASIQ Consent UI (WebView)
- getConnections
- getInstitutions
- getAccounts
- getUserDetails

## Getting started

Add `basiq` as dependency to start using it.

## Usage

Initialze BASIQ instance.
```dart
Basiq.instance.init(apiKey: "YOUR_BASIQ_API_KEY");
```


BASIQ Consent Widget. It is a webview to present Consent Page.

```dart
BasiqConsentWidget(
  initialLoader: CircularProgressIndicator(),
  onFinish: (jobId) {
    // jobId
  },
  action: ConsentUiAction.connect,
)
```

```dart
final basiq = Basiq.instance;
final connections = await basiq.getConnections();
final institutions = await basiq.getInstitutions();
final accounts = await basiq.getAccounts();
final userDetails = await basiq.getUserDetails();
```

## Contributing

Contributions are welcomed!

Here is a curated list of how you can help:

- Report bugs and scenarios that are difficult to implement
- Report parts of the documentation that are unclear
- Fix typos/grammar mistakes
- Update the documentation / add examples
- Implement new features by making a pull-request
