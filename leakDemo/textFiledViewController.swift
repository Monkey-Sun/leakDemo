//
//  inputViewController.swift
//  leakDemo
//
//  Created by 孙俊祥 on 2017/8/26.
//  Copyright © 2017年 dist. All rights reserved.
//

import UIKit

class textFiledViewController: UIViewController {

    var inputBox : UITextField!
    var textBlock : ((_ text:String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        // Do any additional setup after loading the view.
        inputBox = UITextField(frame: CGRect(x: 50, y: 100, width: 200, height: 44))
        inputBox.backgroundColor = UIColor.white
        view.addSubview(inputBox)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if textBlock != nil {
            textBlock!(inputBox.text!)
        }
    }
}
