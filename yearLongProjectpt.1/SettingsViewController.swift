//
//  SettingsViewController.swift
//  yearLongProjectpt.1
//
//  Created by Tyler May on 9/26/23.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet var labels: [UILabel]!
    var darkMode = false
    
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ProfileViewController {
            vc.darkMode = self.darkMode
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateUI()
        if darkMode {
            darkModeSwitch.isOn = true
        } else {
            darkModeSwitch.isOn = false
        }
    }
    
    @IBAction func darkModeSwitched(_ sender: Any) {
        if darkModeSwitch.isOn {
            darkMode = true
            updateUI()
        } else {
            darkMode = false
            updateUI()
        }
    }
    
    func updateUI() {
        for label in labels {
            if darkMode {
                label.textColor = .white
            } else {
                label.textColor = .black
            }
        }
        if darkMode {
            view.backgroundColor = .black
            backButton.titleLabel?.textColor = .white
        } else {
            view.backgroundColor = .white
            backButton.titleLabel?.textColor = .black
        }
    }
    

}
