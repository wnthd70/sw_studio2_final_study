//
//  ViewController.swift
//  PageControl
//
//  Created by 232-11 on 2023/10/17.
//

import UIKit

var images = ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png"]

class ViewController: UIViewController {

    @IBOutlet var imgVIew: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgVIew.image = UIImage(named: images[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgVIew.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

