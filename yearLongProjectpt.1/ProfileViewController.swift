//
//  ProfileViewController.swift
//  yearLongProjectpt.1
//
//  Created by Tyler May on 9/22/23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
       
    }
    


}
