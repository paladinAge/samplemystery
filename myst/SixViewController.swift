//
//  SecondViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/16.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class SixViewController: UIViewController {
    

    @IBOutlet weak var answer5: UIImageView!
    
    @IBOutlet weak var question6: UIImageView!
    
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var answer6: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        let answer4: UIImage = UIImage(named: "answer4.png")!
        // 画面に画像を設定する
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 画像を読み込み
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        let questionImage6: UIImage = UIImage(named: "question6.png")!
        
        
        // 画面に画像を設定する
        errorMessage.text = ""
        question6.image = questionImage6
        
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
        if answer6.text.isEmpty {
            errorMessage.text = "答えを入力してください"
            return false
        }
        if answer6.text != "囚人" {
            errorMessage.text = "不正解！！！"
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        println(answer6.text)
        var secondViewController:LastViewController = segue.destinationViewController as LastViewController
    }
    
    
}
