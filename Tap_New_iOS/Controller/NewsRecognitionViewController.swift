//
//  NewsRecognitionViewController.swift
//  Tap_New_iOS
//
//  Created by Yichi Zhang on 1/10/18.
//  Copyright © 2018 Yichi Zhang. All rights reserved.
//

import UIKit

class NewsRecognitionViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let imagePicker = UIImagePickerController()
    var imageToRecognize:UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
    }


    @IBAction func takePhoto(_ sender: UIButton) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageToRecognize = pickedImage
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
}
