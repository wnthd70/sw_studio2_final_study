//
//  CodePresentViewController.swift
//  NavigationController
//
//  Created by 232-11 on 2023/11/07.
//

import UIKit
protocol SendDataDelegate: AnyObject{
    func sendData(name: String)
}


class CodePresentViewController: UIViewController {
    @IBOutlet var nameLbl: UILabel!
    var name:String?
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLbl.text = name
            self.nameLbl.sizeToFit()
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.delegate?.sendData(name: "홍길이")
        self.presentingViewController?.dismiss(animated: true)
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
