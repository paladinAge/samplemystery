//
//  ViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/16.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var question1: UIImageView!

    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var answer1: UITextField!
    @IBAction func next(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 画像を読み込み
        self.view.backgroundColor = UIColor(white: 0, alpha: 1)
        let questionImage1: UIImage = UIImage(named: "question1.png")!
        

        // 画面に画像を設定する
        errorMessage.text = ""
        question1.image = questionImage1
        
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
        if answer1.text.isEmpty {
            errorMessage.text = "答えを入力してください"
            return false
        }
        if answer1.text != "針" {
            errorMessage.text = "不正解！！！"
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        println(answer1.text)
        var secondViewController:SecondViewController = segue.destinationViewController as SecondViewController
    }

}

