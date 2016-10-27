//
//  WebViewController.swift
//  SwiftWebViewApp
//
//  Created by Natsumo Ikeda on 2016/10/25.
//  Copyright © 2016年 NIFTY Corporation. All rights reserved.
//

import UIKit
import NCMB
//import AssetsLibrary

class WebViewController: UIViewController {
    // WebView
    @IBOutlet weak var webView: UIWebView!
    // index.htmlの公開URL
    let url = "YOUR_HTML_PUBLIC_URL"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // スクロールを有効にする
        webView.scrollView.contentOffset.y = 200
        webView.scrollView.isScrollEnabled = true
        
        // webViewに表示する
        let nsurl = NSURL(string: url)
        let request = NSURLRequest(url: nsurl as! URL)
        self.webView.loadRequest(request as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
