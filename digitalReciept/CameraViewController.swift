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
    //@IBOutlet weak var collectionView: UICollectionView!
    
    
     let picker = UIImagePickerController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }
    
    
   
    
    
    
    
    @IBAction func photoLibraryAction(sender:UIButton)
    {
//        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
   // calls camera button
    @IBAction func cameraButtonAction(sender: UIButton)
    {
//        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
//        present(picker, animated: true, completion: nil)
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
        {
            picker.sourceType = UIImagePickerControllerSourceType.camera
            present(picker, animated: true, completion: nil)
        }
        
        
    }
    // enables choising an image 
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        //let picker = UIImagePickerController()
        picker.dismiss(animated: true)
        {
            let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.imageView.image = selectedImage
        }
//      imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage;dismiss(animated: true, completion: nil)
      //collectionView.cell = info[UIImagePickerControllerOriginalImage] as? UIImage;dismiss(animated: true, completion: nil)
      
    }

}
