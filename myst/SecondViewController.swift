//
//  SecondViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/16.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var answer1: UIImageView!

    @IBOutlet weak var question2: UIImageView!
    
    @IBOutlet weak var answer2: UITextField!
    
    @IBOutlet weak var errorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        let answer1: UIImage = UIImage(named: "answer1.png")!
        // 画面に画像を設定する
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 画像を読み込み
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        let questionImage2: UIImage = UIImage(named: "question2.png")!
        
        
        // 画面に画像を設定する
        errorMessage.text = ""
        question2.image = questionImage2
        
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
        if answer2.text.isEmpty {
            errorMessage.text = "答えを入力してください"
            return false
        }
        if answer2.text != "ラーメン" {
            errorMessage.text = "不正解！！！"
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        println(answer2.text)
        var secondViewController:ThirdViewController = segue.destinationViewController as ThirdViewController
    }

    
}
