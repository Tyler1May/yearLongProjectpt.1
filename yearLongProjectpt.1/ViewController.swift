//
//  ViewController.swift
//  yearLongProjectpt.1
//
//  Created by Tyler May on 9/22/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet var labels: [UILabel]!
    
    var darkMode = false
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
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
        
    }
    
}

