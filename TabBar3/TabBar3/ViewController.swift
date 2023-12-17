//
//  ViewController.swift
//  TabBar3
//
//  Created by 232-11 on 2023/11/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pink(_ sender: UIButton) {
        tabBarController?.selectedIndex=1
        print(tabBarController!)
    }
    
    @IBAction func blue(_ sender: UIButton) {
        tabBarController?.selectedIndex=2
    }
}

