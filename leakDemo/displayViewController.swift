//
//  displayViewController.swift
//  leakDemo
//
//  Created by 孙俊祥 on 2017/8/26.
//  Copyright © 2017年 dist. All rights reserved.
//

import UIKit

class displayViewController: UIViewController {
    
    @IBOutlet weak var clickBtn: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    var inputCon : textFiledViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputCon = textFiledViewController()//有新功能啦
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        inputCon.textBlock = {[weak self] text in
            self?.displayLabel.text = text
        }
        self.navigationController?.pushViewController(inputCon, animated: true)
    }
    
    deinit {
        print("delloc")
    }

}
