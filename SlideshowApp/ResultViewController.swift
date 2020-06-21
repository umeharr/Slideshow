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
