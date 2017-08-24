//
//  ViewController.swift
//  Zodiac
//
//  Created by fen san on 2017/8/24.
//  Copyright © 2017 sanfen. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var yearOfBirth: UITextField!

    @IBOutlet weak var image: UIImageView!

    let offset = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(_ sender: Any) {
        if let year = Int(yearOfBirth.text!){
            var imageIndex = (year + offset) % 12
            image.image = UIImage(named: String(imageIndex))
        }
    }


}
