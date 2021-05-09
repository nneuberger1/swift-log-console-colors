# swift-log-console-colors
This is a small SwiftLog API compatible library that implements colors to make it easier for finding specific logs in the XCode console.


It is an implementation of a [`LogHandler`](https://github.com/apple/swift-log#on-the-implementation-of-a-logging-backend-a-loghandler) as defined by the Swift Server Working Group logging API.

## Usage

Add `https://github.com/nneuberger1/swift-log-console-colors.git` as a dependency in your Package.swift.

Then, during your application startup, do:

```swift
import Logging
import LoggingSyslog

// Initialize the logger
ColorStreamLogHandler.standardOutput(label: label, logIconType: .cool)
```

Elsewhere in your application, when you need to log, do:

```swift
// Create a logger (or re-use one you already have)
let logger = Logger(label: "MyApp")

// Log!
logger.info("Hello World!")
```

The output will look like this if passing in `.cool`

