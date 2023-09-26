//
//  ProfileViewController.swift
//  yearLongProjectpt.1
//
//  Created by Tyler May on 9/22/23.
//

import UIKit

class ProfileViewController: UIViewController {

    var darkMode  = false
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet var labels: [UILabel]!
    
    @IBAction func unwindToProfile(segue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let svc = segue.destination as? SettingsViewController {
            svc.darkMode = darkMode
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateUI()
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
            tabBarController?.tabBar.unselectedItemTintColor = .lightGray
        } else {
            view.backgroundColor = .white
            tabBarController?.tabBar.unselectedItemTintColor = .darkGray
        }
        if let postTab = tabBarController?.viewControllers?[0] as? ViewController {
            postTab.darkMode = darkMode
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
       
    }
    


}
