//
//  SettingsViewController.swift
//  Planets
//
//  Created by Victor  on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//



import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var plutoLabel: UILabel!
    @IBOutlet weak var shouldShowPlutoKey: UISwitch!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    private func updateViews() {
        shouldShowPlutoKey.isOn = UserDefaults.standard.bool(forKey: "showPlutoKey")
    }
    
    @IBAction func switchButton(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: "showPlutoKey")
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
