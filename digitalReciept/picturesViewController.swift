////
////  picturesViewController.swift
////  digitalReciept
////
////  Created by Elizabeth on 4/11/18.
////  Copyright © 2018 Elizabeth. All rights reserved.
////
//
////import UIKit
////import Photos
////class picturesViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout
////{
//    //let image = [UIImage]()
//   // @IBOutlet weak var picturesCollectionView: UICollectionView!
//    //var imageArray = [UIImage]()
//    //@IBOutlet weak var picturesCell: UICollectionViewCell!
//    //override func viewDidLoad()
//   // {
//        //super.viewDidLoad()
//        //grabPhotos()
//    //}
//func grabPhotos()
//    {
//        let imgManager = PHImageManager.default()
//        let requestOptions = PHImageRequestOptions()
//        requestOptions.isSynchronous = true
//        requestOptions.deliveryMode = .highQualityFormat
//        let fetchOptions = PHFetchOptions()
//        fetchOptions.sortDescriptors = [NSSortDescriptor(key: "creationdate", ascending: false)]//last image taken will show first
//        if let fetchResult : PHFetchResult = PHAsset.fetchAssets(with: .image, options: fetchOptions)
//        {
//            if fetchResult.count > 0
//            {
//                for i in 0..<fetchResult.count
//                {
//                    do
//                    {
//                        imgManager.requestImage(for: fetchResult.object(at: i) as PHAsset, targetSize: CGSize(width: 200, height: 200), contentMode: .aspectFill, options: requestOptions, resultHandler:
//                            {
//                               image, error in
//                                self.imageArray.append(image!)
//                            })
//                    }
//                }
//            }
//        }
//        else
//        {
//            print("You have no photos")// if user has no photos in camera roll
//            self.collectionView?.reloadData()
//        }
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int //load images in collection view
//    {
//        return imageArray.count
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell //adds images to cells
//    {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
//        let imageView = cell.viewWithTag(1) as! UIImageView
//        imageView.image = imageArray[indexPath.row] //grabbing images according to number of cells
//        return cell
//        
//    }
//        
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize //determines size of collection view
//    {
//        let width = collectionView.frame.width / 3-1 //3 images displayed per row
//        return CGSize(width: width, height: width)//square shaped images width=height
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionIndex section: Int) -> CGFloat
//    {
//        return 1.0 //1 pixel of space between images
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
//    {
//        return 1.0 //1 pixel of space between images
//    }
//    
//    
//
//
//
//}
//
