//
//  ProfileVC.swift
//  SocialMediaApp
//
//  Created by Milos Mladenovic on 4/4/17.
//  Copyright © 2017 Milos Mladenovic. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var proImage: CircleView!
    
    var proimagePicker: UIImagePickerController!
    static var imageCache: NSCache<NSString, UIImage> = NSCache()
   


    override func viewDidLoad() {
        super.viewDidLoad()

        proimagePicker = UIImagePickerController()
        proimagePicker.allowsEditing = true
        proimagePicker.delegate = self

    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            proImage.image = image
           
        } else {
            print("A valid image wasn't selected")
        }
        proimagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addImageTapped(_ sender: UIButton) {
        present(proimagePicker, animated: true, completion: nil)
    }
    
   func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "goToFeedPage") {
            
            let feedVC: FeedVC = segue.destination as! FeedVC
            
           feedVC.profileImage = proImage.image
            
           
        }
    }
  

    
   
}
