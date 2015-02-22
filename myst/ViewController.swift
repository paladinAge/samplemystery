//
//  ViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/16.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var crossword: UIImageView!
    
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBAction func next(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 画像を読み込み
        let myImage: UIImage = UIImage(named: "crossword.gif")!
        // 画面に画像を設定する
        errorMessage.text = ""
        crossword.image = myImage
        
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
        if textfield1.text.isEmpty {
            errorMessage.text = "答えを入力してください"
            return false
        }
        if textfield1.text != "twilight" {
            errorMessage.text = "不正解！！！"
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        println(textfield1.text)
        var secondViewController:SecondViewController = segue.destinationViewController as SecondViewController
        secondViewController.param = textfield1.text
    }

}

