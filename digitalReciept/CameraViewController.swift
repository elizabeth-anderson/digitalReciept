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
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func photoLibraryAction(sender:UIButton)
    {
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func cameraButtonAction(sender: UIButton)
    {
        picker.delegate = self
        picker.sourceType = .camera
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
        {
            picker.sourceType = UIImagePickerControllerSourceType.camera
            present(picker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        picker.dismiss(animated: true)
        {
            let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.imageView.image = selectedImage
        }
    }
}
