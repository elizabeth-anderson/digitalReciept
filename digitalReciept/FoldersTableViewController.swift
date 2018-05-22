//
//  FoldersTableViewController.swift
//  digitalReciept
//
//  Created by Elizabeth on 4/16/18.
//  Copyright © 2018 Elizabeth. All rights reserved.
//
import UIKit
class FoldersTableViewController: UITableViewController {
    
    var folders = [String]()
    var newFolder = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        folders = ["Restaurants","Travel","Shopping"]
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        editButtonItem.tintColor = UIColor.black
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return folders.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "folderCell", for: indexPath)
        cell.textLabel!.text = folders[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let folder = folders.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            folders.append(newFolder)
        }    
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    @IBAction func addButton(_ sender: UIBarButtonItem)
    {
        insertNewFolder()
        tableView.reloadData()
    }
    
    func insertNewFolder()
    {
        let alert = UIAlertController(title: "Add Folder", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Folder"
        }
        let cancelAction = UIAlertAction(title:"cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        let insertAction = UIAlertAction(title: "add", style: .default) { (action) in
            let folderTextField = alert.textFields![0] as UITextField
            let newFolder = folderTextField.text
            
            self.folders.append(newFolder!)
            self.tableView.reloadData()
        }
        alert.addAction(insertAction)
        present(alert, animated: true, completion: nil)
    }
}
