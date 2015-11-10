## cordova-plugin-ios-safari

It is surprisingly hard, and likely even impossible, to open a URL in Safari
on an iOS device when using Cordova 4. This is frustrated by the immense amount
of documentation that says how to do it using Phonegap, which is entirely different
in this regard.

This small plugin provides that functionality. To use:

```
var success = function(winParam) {};
var failure = function(error) {};
cordova.exec(success, failure, "Safari", "openExternally", [url]);
```
