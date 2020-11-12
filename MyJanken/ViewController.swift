//
//  ViewController.swift
//  MyJanken
//
//  Created by 齋藤友祐 on 2019/08/21.
//  Copyright © 2019年 Swift-Beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    
    @IBOutlet weak var answerLabel: UILabel!
    // じゃんけん（数字）
    var answerNumber = 0
    
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        //新しいじゃんけんの結果を一時的に格納する変数を設ける
        var newAnswerNumber = 0
        
        //ランダムに結果を出すが、前回の結果と異なる場合のみ採用
        //repeat は繰り返しを意味する
        repeat {
            
            //0,1,2の数値をランダムに算出（変数）する
            //arc4random_uniform()の戻り値はUInt32だがSwiftの標準的な整数型Intにキャスト（変換）する
            newAnswerNumber = Int(arc4random_uniform(3))
            
            //前回と同じ結果のときは、再度、ランダムに数値を出す
            //異なる結果のときは、repeat を抜ける
        } while answerNumber == newAnswerNumber
        
        //新しいジャンケンの結果を格納
        answerNumber = newAnswerNumber
        
        
        if answerNumber == 0 {
        //グー
        answerLabel.text = "グー"
        answerImageView.image = UIImage(named:"gu")
        } else if answerNumber == 1 {
            
        //チョキ
        answerLabel.text = "チョキ"
        answerImageView.image = UIImage(named: "choki")
        } else if answerNumber == 2 {
            
        //パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
            
        }
    
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//GitHubの使い方練習用にコメント記載

}

