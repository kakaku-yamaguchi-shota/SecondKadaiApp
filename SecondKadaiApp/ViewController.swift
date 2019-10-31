//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 山口 彰太 on 2019/10/31.
//  Copyright © 2019 shouta.yamaguchi4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var formLabel: UILabel! {
        didSet {
            formLabel.font = .boldSystemFont(ofSize: 13)
            formLabel.backgroundColor = UIColor.yellow
            formLabel.textAlignment = NSTextAlignment.center
        }
    }
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            nameTextField.placeholder = "名前を入力してください"
        }
    }
    @IBOutlet weak var helloButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hellowViewController: HelloViewController = segue.destination as! HelloViewController

        hellowViewController.name = nameTextField.text ?? ""
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

}

