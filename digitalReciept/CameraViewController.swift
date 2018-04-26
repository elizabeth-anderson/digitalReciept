//
//  CameraViewController.swift
//  digitalReciept
//
//  Created by Victoria Anderson on 4/24/18.
//  Copyright © 2018 Elizabeth. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    @IBOutlet weak var photoLibary: UIButton!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }
    @IBAction func photoLibraryAction(sender:UIButton)
    {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
   
    @IBAction func cameraButtonAction(sender: UIButton)
    {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage;dismiss(animated: true, completion: nil)
        //what is the update in xcode for "imageDisplay"?
    }

}
