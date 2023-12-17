//
//  CodePushViewController.swift
//  NavigationController
//
//  Created by 232-11 on 2023/11/07.
//

import UIKit

class CodePushViewController: UIViewController {
    @IBOutlet var nameLbl: UILabel!
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name{
            self.nameLbl.text = name
            self.nameLbl.sizeToFit()
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
