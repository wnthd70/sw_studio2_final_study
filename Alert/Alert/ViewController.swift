//
//  ViewController.swift
//  Alert
//
//  Created by 232-11 on 2023/10/31.
//

import UIKit

class ViewController: UIViewController {
    var lamp_btn = false
    
    let lamp_on = UIImage(named: "lamp-on.png")
    let lamp_off = UIImage(named: "lamp-off.png")
    let lamp_remove = UIImage(named: "lamp-remove.png")
    
    var  isLampOn = false
    
    @IBOutlet var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = lamp_off
    }


    @IBAction func btnOn(_ sender: UIButton) {
        if isLampOn == true {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태 입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }else{
            isLampOn = true
            imgView.image = lamp_on
        }
    }
    @IBAction func bntOff(_ sender: UIButton) {
        if isLampOn {
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            let offAction = UIAlertAction(title: "네",
                                          style: UIAlertAction.Style.default,
                                          handler: {ACTION in self.imgView.image = self.lamp_off; self.isLampOn = false})
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
//        else{
//            isLampOn = false
//            imgView.image = lamp_off
//        }
    }
    @IBAction func btnRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        
        let offAction = UIAlertAction(title: "아니오, 끕니다(off).",
                                      style: UIAlertAction.Style.default,
                                      handler: {ACTION in self.imgView.image = self.lamp_off; self.isLampOn = false}
        )
        let onAction = UIAlertAction(title: "아니오, 켭니다(on).",
                                      style: UIAlertAction.Style.default,
                                      handler: {ACTION in self.imgView.image = self.lamp_on; self.isLampOn = true}
        )
        let removeAction = UIAlertAction(title: "네, 제거합니다.",
                                      style: UIAlertAction.Style.default,
                                      handler: {ACTION in self.imgView.image = self.lamp_remove; self.isLampOn = false}
        )
        let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        
        present(lampRemoveAlert, animated: true, completion: nil)
    }
}


