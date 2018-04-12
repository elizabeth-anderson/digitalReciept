//
//  ViewController.swift
//  digitalReciept
//
//  Created by Elizabeth on 4/9/18.
//  Copyright © 2018 Elizabeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var folders = [String]()


    override func viewDidLoad()
    {
        super.viewDidLoad()
      
    }

    @IBOutlet weak var foldersTableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return folders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = folders[indexPath.row]
        return cell!
    }
    
    @IBAction func addButtonTapped(_ sender: Any)
    {
        let alert = UIAlertController(title: "add a folder", message: nil, preferredStyle: .alert)
        alert.addTextField
        {
            (textField) in textField.placeholder = "folder"
        }
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        let insertAction = UIAlertAction(title: "add", style: .default)
        { (action) in
            let folderTextField = alert.textFields![0] as UITextField
            let folder = folderTextField.text
            self.folders.append(folder!)
            self.foldersTableView.reloadData()
        }
        
        alert.addAction(cancelAction)
        alert.addAction(insertAction)
        present(alert, animated: true)
    }
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

