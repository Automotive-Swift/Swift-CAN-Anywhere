import Swift_CAN
#if os(Linux)
import Swift_SocketCAN
#endif
#if os(macOS)
import TouCAN
#endif

extension CAN.Interface {

    static func createAnywhere(iface: String) -> CAN.Interface {

#if os(macOS)
        return TouCAN()
#endif
#if os(Linux)
        return SocketCAN(iface: interface)
#endif
        fatalError("Not a supported platform yet.")
    }
}
