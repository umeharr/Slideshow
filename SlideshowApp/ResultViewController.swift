//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by user on 2020/05/28.
//  Copyright © 2020 chizku.umehara. All rights reserved.
//s

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var play: UIImageView!
    var selectedImage: UIImage!
    
    @IBOutlet weak var bacjkButton: UIButton!
    @IBAction func bacjkButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        }
    var displayImageNo = 0
    var timer: Timer!
    let imageNameArray = ["image0", "image1", "image2"]
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController:ViewController = segue.destination as! ViewController
        let name = imageNameArray[displayImageNo]
        let image = UIImage(named: name)
        viewController.selectedImage = image
        
    }
override func viewDidLoad() {
    super.viewDidLoad()
    play.image = selectedImage
    
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
