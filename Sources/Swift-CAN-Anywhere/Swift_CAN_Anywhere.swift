//
// Swift-CAN-Anywhere. (C) Dr. Michael 'Mickey' Lauer <mickey@vanille-media.de>
//
@_exported import Swift_CAN
#if os(Linux)
import Swift_SocketCAN
#endif
#if os(macOS)
import TouCAN
#endif

extension CAN {

    public static func attachToInterface(_ interface: String) -> CAN.Interface {

#if os(macOS)
        return TouCAN()
#endif
#if os(Linux)
        return SocketCAN(iface: interface)
#endif
        fatalError("Not a supported platform yet.")
    }
}
