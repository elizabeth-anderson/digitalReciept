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
    //@IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
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
   // calls camera button
    @IBAction func cameraButtonAction(sender: UIButton)
    {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)
    }
    //lalalalal
    // enables choising an image 
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
      //  collectionView.image = info[UIImagePickerControllerOriginalImage] as? UIImage;dismiss(animated: true, completion: nil)
      collectionView.cell = info[UIImagePickerControllerOriginalImage] as? UIImage;dismiss(animated: true, completion: nil)
      
    }

}
