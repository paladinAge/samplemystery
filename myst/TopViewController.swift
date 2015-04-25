//
//  TopViewController.swift
//  myst
//
//  Created by inuzuka on 2015/02/18.
//  Copyright (c) 2015年 inuzuka. All rights reserved.
//

import UIKit
import AVFoundation

class TopViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer?
    @IBOutlet weak var opening: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("one", ofType: "mp3")!)
        var audioError:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: audioPath, error:&audioError)
        if let error = audioError {
            println("Error \(error.localizedDescription)")
        }
        
        audioPlayer!.delegate = self
        audioPlayer!.prepareToPlay()
        audioPlayer!.play()
        
        
        //背景を黒にする
        self.view.backgroundColor  = UIColor(white: 0, alpha: 1)
        
        // 画像を読み込み
        let openingImage: UIImage = UIImage(named: "opening.png")!
        
        // 画面の画像領域に画像を設定する
        opening.image = openingImage
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unWindows(segue: UIStoryboardSegue) {
    }
    

    
}