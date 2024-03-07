//
//  ViewController.swift
//  swift_playground20240301
//
//  Created by 松垣菜櫻 on 2024/03/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    // 変数hogeをnilで宣言
    // 変数をnilで宣言するにはOptional型を使用する
    // Optional型は値が存在しないことを示すためにnilを持つことができる
    var hoge: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button1.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)
        
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
    }

    
        @objc func button1Tapped() {
            // hogeを「if let」でnilチェックする
            if let hogeCheck = hoge {
                // nilでない場合の処理
                // \()の中に変数名を入れることでその変数の値が出力される位置に組み込める
                print("\(hogeCheck)です")
            } else {
                // nilの場合の処理
                print("nilです")
            }

        }
    
        @IBAction func button2Tapped(sender: UIButton) {
        
            self.hoge = "fuga"
            
            if let unwrappedHoge = self.hoge {
            print(unwrappedHoge)
        }
//        @objc func button2Tapped() {
//            // button2を押すとhogeの中にfugaが入る
//            self.hoge = "fuga"
//            //print(self.hoge)
//
//            // print(self.hoge) で "Optional(...)" の形式も出力されてしまうため、
//            // if letでfugaのみが出力されるようにした
//             if let unwrappedHoge = self.hoge {
//             print(unwrappedHoge)
//         }
    }
}

