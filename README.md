# Swift-CAN-Anywhere

## A platform independent CAN library

This package is a shim that returns a [Swift-TouCAN](https://github.com/Automotive-Swift/Swift-TouCAN) interface on macOS
and a [Swift-SocketCAN](https://github.com/Automotive-Swift/Swift-SocketCAN) interface on Linux, both conforming to the
[Swift-CAN](https://github.com/Automotive-Swift/Swift-CAN) interface protocol.

## Integration

This is a Swift Package Manager (SPM) compliant package. Add 
```swift
.package(url: "https://github.com/AutomotiveSwift/Swift-SocketCAN.git", from: "0.9.0")
```

to your `Package.swift`.

## How to use

Create the interface by using the static factory method:

```swift
import Swift_CAN_Anywhere

let can = CAN.createAnywhere("can0")
```

## Contributions

Feel free to use this under the obligations of the MIT license. Contributions are always welcome. Stay safe and sound!
