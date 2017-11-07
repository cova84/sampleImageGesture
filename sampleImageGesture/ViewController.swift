//
//  ViewController.swift
//  sampleImageGesture
//
//  Created by 小林由知 on 2017/11/07.
//  Copyright © 2017年 Yoshitomo Kobatashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func myImageBack(_ sender: UITapGestureRecognizer) {
        let alert = UIAlertController(
              title: "フルーツ"
            , message: "フルーツって、なんか可愛いよね。", preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK"
            , style: .default
            ,handler: {action in print("フルーツのOKが押されました。")}
        ))
        present(
              alert
            , animated: true
            , completion: {() -> Void in print("フルーツが表示されました。")}
        )

    }
    
    @IBAction func myImagepinappul(_ sender: UILongPressGestureRecognizer) {
        let alert = UIAlertController(
              title: "パイナップル"
            , message: "そんなに触って、痛くないの？？"
            , preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK"
            , style: .default
            ,handler: {action in print("パイナップルのOKが押されました。")}
        ))
        present(
              alert
            , animated: true
            , completion: {() -> Void in print("パイナップルが表示されました。")}
        )

    }
    
    @IBAction func Budo(_ sender: UIRotationGestureRecognizer) {
        let alert = UIAlertController(
              title: "ブドウ"
            , message: "乱暴しないで！バラバラになっちゃう！"
            , preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
              title: "OK"
            , style: .default
            ,handler: {action in print("ブドウのOKが押されました。")}
        ))
        present(
            alert
            , animated: true
            , completion: {() -> Void in print("ブドウが表示されました。")}
        )
    }
    
    func applePara(titlePara:String, maseegePara:String){
        let alert = UIAlertController(
            title: "\(titlePara)"
            , message: "\(maseegePara)"
            , preferredStyle: .alert
        )
        present(
            alert
            , animated: true
            , completion: {() -> Void in print("アップルが表示されました。")}
        )
        alert.addAction(UIAlertAction(
            title: "OK"
            ,style: .default
            ,handler: {action in print("アップルのOKが押されました。")}
        ))
    }
    
    @IBAction func AppleTap(_ sender: UITapGestureRecognizer) {
        applePara(titlePara:"リンゴちゃん", maseegePara:"リンゴの表面って、ちょっと毛羽立ってて気持ちいいよね。")
    }
    
    @IBAction func ApplePan(_ sender: UIPanGestureRecognizer) {
        applePara(titlePara:"リンゴちゃん", maseegePara:"リンゴの表面って、ちょっと毛羽立ってて気持ちいいよね。")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
