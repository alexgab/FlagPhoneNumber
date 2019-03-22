import Foundation

public struct FPNCountry {
	let code: FPNCountryCode
	let name: String
	let phoneCode: String
	let flag: UIImage?

	init(code: String, name: String, phoneCode: String) {
		self.name = name
		self.phoneCode = phoneCode
		self.code = FPNCountryCode(rawValue: code)!

		if let flag = UIImage(named: code, in: Bundle.FlagIcons, compatibleWith: nil) {
			self.flag = flag
		} else {
			self.flag = UIImage(named: "unknown", in: Bundle.FlagIcons, compatibleWith: nil)
		}
	}
}
