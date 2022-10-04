# swift-log-console-colors
This is a small SwiftLog API compatible library that implements colors to make it easier for finding specific logs in the XCode console.


It is an implementation of a [`LogHandler`](https://github.com/apple/swift-log#on-the-implementation-of-a-logging-backend-a-loghandler) as defined by the Swift Server Working Group logging API.

## Usage

Add `https://github.com/nneuberger1/swift-log-console-colors.git` as a dependency in your Package.swift.

Then, during your application startup, do:

```swift
import Logging
import SwiftLogConsoleColors

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

```
2021-05-09T16:13:30-0500 🐛 debug thingsAboveAdmin : Testing log levels..
2021-05-09T16:13:30-0500 ℹ️ info thingsAboveAdmin : Testing log levels..
2021-05-09T16:13:30-0500 📖 notice thingsAboveAdmin : Testing log levels..
2021-05-09T16:13:30-0500 ⚠️ warning thingsAboveAdmin : Testing log levels..
2021-05-09T16:13:30-0500 ⚡ error thingsAboveAdmin : Testing log levels..
2021-05-09T16:13:30-0500 🔥 critical thingsAboveAdmin : Testing log levels..
```


The output will look like this if passing in `.rainbow`

```
2021-05-09T16:17:07-0500 🟪 debug thingsAboveAdmin : Testing log levels..
2021-05-09T16:17:07-0500 🟦 info thingsAboveAdmin : Testing log levels..
2021-05-09T16:17:07-0500 🟩 notice thingsAboveAdmin : Testing log levels..
2021-05-09T16:17:07-0500 🟨 warning thingsAboveAdmin : Testing log levels..
2021-05-09T16:17:07-0500 🟧 error thingsAboveAdmin : Testing log levels..
2021-05-09T16:17:07-0500 🟥 critical thingsAboveAdmin : Testing log levels..
```
