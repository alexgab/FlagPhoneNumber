import Foundation

class FPNCountryView: NibLoadingView {

    var locale: Locale = .current
    
	@IBOutlet weak var flagImageView: UIImageView!
	@IBOutlet weak var countryNameLabel: UILabel!
	@IBOutlet weak var countryCodeLabel: UILabel!

	override init(frame: CGRect) {
		super.init(frame: frame)
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

	func setup(_ country: FPNCountry) {
		flagImageView.image = country.flag
		countryCodeLabel.text = country.phoneCode
		countryNameLabel.text = locale.localizedString(forRegionCode: country.code.rawValue) ?? country.name
	}
}
