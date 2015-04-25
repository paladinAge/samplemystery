//
//  SecondViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/16.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {
    
    
    @IBOutlet weak var answer3: UIImageView!

    @IBOutlet weak var question4: UIImageView!
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var answer4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        let answer3: UIImage = UIImage(named: "answer3.png")!
        // 画面に画像を設定する
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 画像を読み込み
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        let questionImage4: UIImage = UIImage(named: "question4.png")!
        
        
        // 画面に画像を設定する
        errorMessage.text = ""
        question4.image = questionImage4
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unWindows(segue: UIStoryboardSegue) {
        errorMessage.text = ""
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        errorMessage.textColor = UIColor.redColor()
        if answer4.text.isEmpty {
            errorMessage.text = "答えを入力してください"
            return false
        }
        if answer4.text != "海" {
            errorMessage.text = "不正解！！！"
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        println(answer4.text)
        var secondViewController:FifthViewController = segue.destinationViewController as FifthViewController
    }
    
    
}
