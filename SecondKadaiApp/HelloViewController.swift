//
//  HelloViewController.swift
//  SecondKadaiApp
//
//  Created by 山口 彰太 on 2019/10/31.
//  Copyright © 2019 shouta.yamaguchi4. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel! {
        didSet {
            helloLabel.numberOfLines = 0
            helloLabel.lineBreakMode = .byWordWrapping
            helloLabel.font = .boldSystemFont(ofSize: 13)
            helloLabel.textAlignment = NSTextAlignment.center
        }
    }

    var hour: Int {
        get {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH"
            return Int(formatter.string(from: Date()))!
        }
    }
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        print("表示開始")
        print(hour)
        print("時間取得完了")
        var greetingPrefix: String {
            switch hour {
            case 0...4:
                return "こんばんわ"
            case 5...9:
                return "おはようございます"
            case 10...16:
                return "こんにちは"
            case 17...23:
                return "こんばんわ"
            default:
                return "こんにちは"
            }
        }
        print(greetingPrefix)
        if (name.isEmpty) {
            name = "誰か"
        }
        helloLabel.text = "\(greetingPrefix)\n \(name) さん"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
