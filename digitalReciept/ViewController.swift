//
//  ViewController.swift
//  digitalReciept
//
//  Created by Elizabeth on 4/9/18.
//  Copyright © 2018 Elizabeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var reciepts = [String()]
    {
        didSet {
            defaults.set(folders, forKey: folders)
        }
    }
   var folders = String()
   let defaults = UserDefaults.standard

    override func viewDidLoad()
    {
        super.viewDidLoad()
      
    }

    @IBOutlet weak var foldersTableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return folders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = reciepts[indexPath.row]
        return cell!
    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

