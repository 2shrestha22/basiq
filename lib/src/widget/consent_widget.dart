import '../../basiq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BasiqConsentWidget extends StatefulWidget {
  /// This should be only used with client access.
  ///
  /// Basiq should be authenticated as CLIENT_ACCESS.
  const BasiqConsentWidget({
    Key? key,
    required this.onFinish,
    this.initialLoader = const Center(child: CircularProgressIndicator()),
    this.errorIndicator = const Center(
        child: Text('Client token bound to userId is not available')),
    this.action = ConsentUiAction.defaultAction,
  }) : super(key: key);

  /// If a connection is successfully created the UI will pass back a jobId.
  /// You can use this to track the success/failure of the remaining steps,
  /// and stay informed on when the relevant data is ready to be fetched.
  final void Function(String? jobId) onFinish;

  final Widget initialLoader;
  final Widget errorIndicator;
  final ConsentUiAction action;

  @override
  State<BasiqConsentWidget> createState() => _BasiqConsentWidgetState();
}

class _BasiqConsentWidgetState extends State<BasiqConsentWidget> {
  bool loading = true;
  late final Future<Token?> future;
  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webViewController;

  late WebUri webUri;

  @override
  void initState() {
    future = Basiq.instance.authenticate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final clientToken = snapshot.data!.accessToken;

            if (widget.action == ConsentUiAction.defaultAction) {
              webUri = WebUri(
                'https://consent.basiq.io/home?token=$clientToken',
                forceToStringRawValue: true,
              );
            } else {
              webUri = WebUri(
                'https://consent.basiq.io/home?token=$clientToken&action=${widget.action.name}',
                forceToStringRawValue: true,
              );
            }
            return Stack(
              fit: StackFit.expand,
              children: [
                Opacity(
                  opacity: !loading ? 1 : 0,
                  child: InAppWebView(
                    key: webViewKey,
                    onWebViewCreated: (controller) {
                      webViewController = controller;
                    },
                    initialSettings: InAppWebViewSettings(
                      supportZoom: false,
                    ),
                    initialUrlRequest: URLRequest(url: webUri),
                    shouldOverrideUrlLoading:
                        (controller, navigationAction) async {
                      final uri = navigationAction.request.url;
                      if (uri != null &&
                          uri.rawValue
                              .split('/')
                              .last
                              .contains("consent_exit")) {
                        if (uri.queryParameters.isNotEmpty &&
                            uri.queryParameters.containsKey('jobId')) {
                          final jobId = uri.queryParameters['jobId'] as String;
                          if (jobId == 'null') {
                            widget.onFinish(null);
                          } else {
                            widget.onFinish(jobId);
                          }
                        } else {
                          widget.onFinish(null);
                        }
                      }
                      return NavigationActionPolicy.ALLOW;
                    },
                    onLoadStart: (controller, url) {
                      setState(() {
                        loading = true;
                      });
                    },
                    onLoadStop: (controller, url) {
                      setState(() {
                        loading = false;
                      });
                    },
                  ),
                ),
                if (loading) widget.initialLoader
              ],
            );
          } else if (snapshot.hasError) {
            return widget.errorIndicator;
          } else {
            return widget.initialLoader;
          }
        });
  }
}
