//
//  ViewController.swift
//  TapBar
//
//  Created by 232-11 on 2023/10/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "4.png")
    }
    @IBAction func btnMoveImgView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    

}

