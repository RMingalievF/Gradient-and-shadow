//
//  ViewController.swift
//  Gradient-and-shadow
//
//  Created by Руслан Мингалиев on 03.11.2023.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var viewGrad: UIView!
	
	private let primaryColor = UIColor(
		red: 210/255,
		green: 109/255,
		blue: 230/255,
		alpha: 1
	)
	private let secondaryColor = UIColor(
		red: 107/255,
		green: 148/255,
		blue: 230/255,
		alpha: 1
	)
	
	override func viewDidLoad() {
		viewGrad.addShadowAndRoundCorner()
		viewGrad.addVerticalDradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
		super.viewDidLoad()
	}
}
// MARK: - Set background color
extension UIView {
	func addVerticalDradientLayer(topColor: UIColor, bottomColor: UIColor) {
		let gradient = CAGradientLayer()
		gradient.cornerRadius = 10
		gradient.frame = bounds
		gradient.colors = [topColor.cgColor, bottomColor.cgColor]
		gradient.locations = [0.0, 1.0]
		gradient.startPoint = CGPoint(x: 0, y: 0)
		gradient.endPoint = CGPoint(x: 0, y: 1)
		layer.insertSublayer(gradient, at: 0)
	}
	func addShadowAndRoundCorner() {
		self.layer.shadowOffset = .zero
		self.layer.shadowOpacity = 0.5
		self.layer.shadowRadius = 10
		self.layer.shadowColor = UIColor.black.cgColor
	}

}

