//
//  ViewController.swift
//  HelloWorld
//
//  Created by sdt5 on 2015. 10. 19..
//  Copyright © 2015년 khe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var imageArray: [UIImage] = [
        UIImage(named: "world.jpg")!,
        UIImage(named: "casino.jpg")!,
        UIImage(named: "quantum.jpg")!,
        UIImage(named: "skyfall.jpg")!,
        UIImage(named: "spectre.jpg")!
    ]
    
    var i = 4;
    
    @IBOutlet weak var photoView: UIImageView!
    
    @IBAction func showNext(sender: AnyObject) {
        if i == 4 {
            i = 0
        }
        else {
            i++
        }
        photoView.image = imageArray[i]
    }
    
    @IBAction func showPrevious(sender: AnyObject) {
        if i == 0 {
            i = 4
        }
        else {
            i--
        }
        photoView.image = imageArray[i]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

