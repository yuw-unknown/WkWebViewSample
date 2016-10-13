//
//  ViewController.swift
//  WKWebViewSample
//
//  Created by yuw on 2016/10/14.
//  Copyright © 2016年 ProjectUnknown. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {

    @IBOutlet var ibWKWebView: WKWebView?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.ibWKWebView = WKWebView()
        self.ibWKWebView!.navigationDelegate = self
        self.ibWKWebView!.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(self.ibWKWebView!)
        
        var viewBindingsDict = [String: AnyObject]()
        viewBindingsDict["webView"] = self.ibWKWebView
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[webView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewBindingsDict))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[webView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewBindingsDict))
        
        let url = NSURL(string: "http://project-unknown.hatenablog.com/entry/2015/04/18/201907")
        let request = NSURLRequest(url: url! as URL)
        
        self.ibWKWebView!.load(request as URLRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

