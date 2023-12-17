//
//  ViewController.swift
//  WebView
//
//  Created by 232-11 on 2023/10/17.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var txturl: UITextField!
    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    func loadWebPage(_ url:String){
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadWebPage("https://naver.com")
    }
    
    
    func checkUrl(_ url:String)->String{
        var strUrl = url
        let flag = strUrl.hasPrefix("https://")
        if(!flag){
            strUrl = "https://"+strUrl
        }
        return strUrl
    }
    
    @IBAction func btnGotoUrl(_ sender: UIButton) {
        let myUrl = checkUrl(txturl.text!)
        txturl.text = ""
        loadWebPage(myUrl)
    }
    
    @IBAction func btnGoSite1(_ sender: UIButton) {
        loadWebPage("https://www.kakaocorp.com")
    }
    
    @IBAction func btnGoSite2(_ sender: UIButton) {
        loadWebPage("https://github.com")
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    
}

