//
//  SecondViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/16.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    

    @IBOutlet weak var answer4: UIImageView!
    
    @IBOutlet weak var question5: UIImageView!
    
    @IBOutlet weak var errorMessage: UILabel!
    
    
    @IBOutlet weak var answer5: UITextField!
    
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
        let questionImage5: UIImage = UIImage(named: "question5.png")!
        
        
        // 画面に画像を設定する
        errorMessage.text = ""
        question5.image = questionImage5
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
        errorMessage.text = ""
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        errorMessage.textColor = UIColor.redColor()
        if answer5.text.isEmpty {
            errorMessage.text = "答えを入力してください"
            return false
        }
        if answer5.text != "極寒" {
            errorMessage.text = "不正解！！！"
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        println(answer5.text)
        var secondViewController:SixViewController = segue.destinationViewController as SixViewController
    }
    
    
}
