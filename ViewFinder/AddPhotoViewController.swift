//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Colby Dickinson on 5/17/19.
//  Copyright © 2019 Colby Dickinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    // must connect each function to the button and create variables for all outlets (see textField and imageView above)
    @IBAction func cameraTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = selectedImage
        }
        present(imagePicker, animated: true, completion: nil)
    }

    
    @IBAction func chooseFromLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
}
