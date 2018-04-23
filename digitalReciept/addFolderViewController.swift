//
//  addFolderViewController.swift
//  digitalReciept
//
//  Created by Elizabeth on 4/16/18.
//  Copyright © 2018 Elizabeth. All rights reserved.
//

import UIKit

class addFolderViewController: UIViewController {

    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBOutlet weak var folderName: UITextField!
    
//  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
//  {
//        if segue.identifier == "doneSegue"
//        {
//            name = folderName.text!
//        }
//    }
    
 func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "doneSegue"
        {
            name = folderName.text!
        }

    }
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
