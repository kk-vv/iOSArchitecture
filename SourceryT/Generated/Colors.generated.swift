// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable operator_usage_whitespace
internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
// swiftlint:enable operator_usage_whitespace

// swiftlint:disable identifier_name line_length type_body_length
internal extension Color {
  /// 0x000000ff
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  static let bodyColor = Color(rgbaValue: 0x000000ff)
  /// 0x00af66ff
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#00af66"></span>
  /// Alpha: 100% <br/> (0x00af66ff)
  static let subTintColor = Color(rgbaValue: 0x00af66ff)
  /// 0x018952ff
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#018952"></span>
  /// Alpha: 100% <br/> (0x018952ff)
  static let tintColor = Color(rgbaValue: 0x018952ff)
  /// 0xc8af70ff
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c8af70"></span>
  /// Alpha: 100% <br/> (0xc8af70ff)
  static let titleColor = Color(rgbaValue: 0xc8af70ff)
}
// swiftlint:enable identifier_name line_length type_body_length
