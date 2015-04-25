//
//  LastViewController.swift
//  myst
//
//  Created by inuzuka on 2015/04/04.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import Foundation
import UIKit
import Social

class LastViewController: UIViewController{
    
    @IBOutlet weak var webView: UIWebView!

    @IBAction func twitter(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            var controller = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            var link = entry["link"] as String
            var url = NSURL(string: link)
            controller.addURL(url)
            
            var title = entry["title"] as String
            controller.setInitialText(title)
            
            presentViewController(controller, animated: true, completion: {})
        }
    }
    
    var entry = NSDictionary()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        let answer6: UIImage = UIImage(named: "answer6.png")!
        // 画面に画像を設定する
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 画像を読み込み
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        
//        var url = NSURL(string: self.entry["link"] as String)!
//        var request = NSURLRequest(URL: url)
//        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
}