//
//  ViewController.swift
//  NavigationController
//
//  Created by 232-11 on 2023/11/07.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    
    
    @IBOutlet var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func codePush(_ sender: UIButton) {
        // guard : 조건이 만족하면 이렇게, 아니면 저렇게
        guard let viewController =  self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "길또이"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func codePresent(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else {return}
        viewController.name = "홍길동"
        viewController.delegate = self
        self.present(viewController, animated: true)
//        self.navigationController?.pushViewController(viewController, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController{
            viewController.name = "욤맨"
        }
    }
    func sendData(name: String) {
        self.nameLbl.text = name
        self.nameLbl.sizeToFit()
    }
    
}

