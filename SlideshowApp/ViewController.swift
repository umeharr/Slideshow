//
//  ViewController.swift
//  SlideshowApp
//
//  Created by user on 2020/05/26.
//  Copyright © 2020 chizku.umehara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var next: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var playStop: UIButton!
    var displayImageNo = 0
    var timer: Timer!
    let imageNameArray = ["image0", "image1", "image2"]
    @IBAction func tap(_ sender: Any) {
        if self.timer != nil {
            timer.invalidate()
            self.timer = nil
            next.isEnabled = true
            back.isEnabled = true
            playStop.setTitle("再生", for: .normal)
        }
        self.performSegue(withIdentifier: "Result", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        let name = imageNameArray[displayImageNo]
        let image = UIImage(named: name)
        resultViewController.selectedImage = image
        
    }
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "image0")
        imageView.image = image
    }

        var displayImageNo = 0
        

        let imageNameArray = ["image0", "image1", "image2"]


        func displayImage() {
    
            let name = imageNameArray[displayImageNo]
            
            let image = UIImage(named: name)
            imageView.image = image
        }
    @IBAction func next(_ sender: Any) {
        self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        if displayImageNo < imageNameArray.count - 1 {
            displayImageNo += 1
            displayImage()
            
        } else {
            displayImageNo = 0
            displayImage()
        }
    }
    
    // 戻るボタン
    @IBAction func back(_ sender: Any) {
        if displayImageNo  >= 1 && displayImageNo  <= imageNameArray.count - 1  {
            displayImageNo -= 1
            displayImage()
            
        }  else {
            displayImageNo = imageNameArray.count - 1
            displayImage()
            
        }
        
    }
    
    @IBAction func playStop(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0,
               target: self, selector:#selector(updateTimer(_:)), userInfo: nil, repeats: true)
            next.isEnabled = false
            back.isEnabled = false
            playStop.setTitle("停止", for: .normal)
            
        } else if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
            next.isEnabled = true
            back.isEnabled = true
            playStop.setTitle("再生", for: .normal)
            
        }
        
    }
    @objc func updateTimer(_ timer: Timer) {
        if displayImageNo < imageNameArray.count - 1 {
            displayImageNo += 1
            displayImage()
            print(displayImageNo)
            
        } else {
            displayImageNo = 0
            displayImage()
            print(displayImageNo)
            
        }
        
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
}


