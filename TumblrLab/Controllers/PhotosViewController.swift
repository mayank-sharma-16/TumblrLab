//
//  PhotosViewController.swift
//  TumblrLab
//
//  Created by Lily Pham on 4/7/19.
//  Copyright © 2019 Lily Pham. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    // Initialize to empty array so we don't worry about it being nil later
    var posts: [[String: Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        getPosts()
    }
    
    func getPosts(){
        API().getPosts() { (posts) in // calling API class from within helper and asking for posts
            if let posts = posts { // this is saying that if there are no embedded posts, then display something by default (functions like a
                //lambda, no pun intended
                self.posts = posts //fetches the initialized global version of posts and assigns it to the local variable posts
                self.tableView.reloadData() //refresh and get posts and show it
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //functions as a built-in for loop that iterates using posts.count as a counter
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell") as! PhotoCell //the as! names class to "PhotoCell", suppressing warnings
        
        let post = posts[indexPath.row] //indexPath.row iterates through each row
        
        if let photos = post["photos"] as? [[String: Any]] {
            
            let photo = photos[0]
            
            let originalSize = photo["original_size"] as! [String:Any]
            
            let urlString = originalSize["url"] as! String
            
            let url = URL(string: urlString)
            
            
            
        }
            
        return cell //return statement is expected
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
