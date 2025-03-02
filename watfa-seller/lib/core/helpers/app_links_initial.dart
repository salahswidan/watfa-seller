import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';


late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;
Future<void> initDeepLinks(
   
) async {
    _appLinks = AppLinks();

    // Only handle deep links when the link is pressed
    _linkSubscription = _appLinks.uriLinkStream.listen((uriValue) {
      // Misc.fromAppLink = true; // Set flag only for new link interactions
      handleDeepLink(uriValue);
        }, onError: (err) {
      debugPrint('Deep link error: $err');
    });
  }
  Future<void> handleDeepLink(Uri uri) async {
    // Misc.appLink = uri;
    
    // context.pushNamed(Routes.loginScreen);
    print(uri);

  }