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
            , handler: {action in print("フルーツが押されました")}
        ))
        present(
              alert
            , animated: true
            , completion: {() -> Void in print("フルーツを触ろうとしています。")
            }
        )
    }
    
    @IBAction func myImagepinappul(_ sender: UILongPressGestureRecognizer) {
        let alert = UIAlertController(
              title: "パイナップル"
            , message: "そんなに押して、痛くないの？？"
            , preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
              title: "OK"
            , style: .default
            , handler: {action in print("パイナップルが押されました")
            }
        ))
        present(
              alert
            , animated: true
            , completion: {() -> Void in print("パイナップルが表示されました。")
            }
        )
    }
    
    @IBAction func myImageBudo(_ sender: UIRotationGestureRecognizer) {
        let alert = UIAlertController(
              title: "ブドウ"
            , message: "ブドウを、バラバラにしないでください。"
            , preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
              title: "OK"
            , style: .default
            , handler: {action in print("ブドウが押されました")}
        ))
        present(
              alert
            , animated: true
            , completion: {() -> Void in print("ブドウが表示されました。")}
        )
    }
    
    @IBAction func myImageapple(_ sender: UIPanGestureRecognizer) {
        let alert = UIAlertController(
              title: "リンゴ"
            , message: "リンゴの表面って、微妙に毛羽立ってて良いよね。"
            , preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK"
            ,style: .default
            , handler: {action in print("OKが押されました")}
        ))
        present(
              alert
            , animated: true
            , completion: {() -> Void in print("アップルが表示されました。")}
        )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

