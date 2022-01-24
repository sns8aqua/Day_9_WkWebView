//
//  ViewController.swift
//  WkWebView
//
//  Created by Santhosh on 21/01/22.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webView.navigationDelegate = self
        if let url = URL(string: "https://www.raywenderlich.com/") {
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
        }
        
       
    }
    
    func webView(_ webView: WKWebView,didFinish navigation: WKNavigation!) {
        print("loaded")
//        webView.evaluateJavaScript("document.getElementById('pageTitle').innerHTML") { (result, error) -> Void in
//            if error != nil {
//                print(error)
//            }
//            print(result)
//        }
    }

    
    
    

    @IBAction func backClicked(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    @IBAction func reloadClicked(_ sender: Any) {
        webView.reload()
    }
    @IBAction func forwardClicked(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
        
    }
    
   
}

