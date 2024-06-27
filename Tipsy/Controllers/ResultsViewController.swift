//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Arthur Coelho on 20/12/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
	
	var totalPerPerson: Float?
	var numberOfPeople: Int?
	var tip: Float?

	@IBOutlet weak var totalLabel: UILabel!
	@IBOutlet weak var settingsLabel: UILabel!
		
	override func viewDidLoad() {
        super.viewDidLoad()
		totalLabel.text = String(totalPerPerson ?? 0.0)
		settingsLabel.text = "Split between \(numberOfPeople ?? 2) people, with \(Int((tip ?? 0.0) * 100)) % tip."
    }	
	
	@IBAction func recalculatePressed(_ sender: UIButton) {
		self.dismiss(animated: true, completion: nil)
	}
}
