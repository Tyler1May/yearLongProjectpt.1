//
//  UserPostTableViewController.swift
//  yearLongProjectpt.1
//
//  Created by Tyler May on 10/18/23.
//

import UIKit

class UserPostTableViewController: UITableViewController {
    
    var darkMode = false
    
    var myPosts: [Post] = [
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today"),
        Post(user: "Bob Pug", userImage: UIImage(imageLiteralResourceName: "Profile pic").jpegData(compressionQuality: 0.9), description: "How do you guys feel about the new Iphone?", postImage: UIImage(imageLiteralResourceName: "Post").jpegData(compressionQuality: 0.9), datePosted: "Posted: today")
        
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myPosts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "post", for: indexPath)
        let userImageView = cell.viewWithTag(1) as! UIImageView
        let userNameLabel = cell.viewWithTag(2) as! UILabel
        let postImageView = cell.viewWithTag(3) as! UIImageView
        let descriptionLabel = cell.viewWithTag(4) as! UILabel
        let datePostedLabel = cell.viewWithTag(5) as! UILabel
        let post = myPosts[indexPath.row]
        
        userImageView.image = UIImage(data: post.userImage!)
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
        userNameLabel.text = post.user
        postImageView.image = UIImage(data: post.postImage!)
        descriptionLabel.text = post.description
        datePostedLabel.text = post.datePosted
        
        if darkMode {
            userNameLabel.textColor = .white
        } else {
            userNameLabel.textColor = .black
        }
        
        if darkMode {
            descriptionLabel.textColor = .white
        } else {
            descriptionLabel.textColor = .black
        }
        
        if darkMode {
            datePostedLabel.textColor = .white
        } else {
            datePostedLabel.textColor = .black
        }
        
        if darkMode {
            cell.backgroundColor = .black
        } else {
            cell.backgroundColor = .white
        }
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400.0
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
    


}
