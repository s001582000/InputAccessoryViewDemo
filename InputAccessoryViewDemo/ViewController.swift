//
//  ViewController.swift
//  InputAccessoryViewDemo
//
//  Created by 梁雅軒 on 2017/2/23.
//  Copyright © 2017年 zoaks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var textMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textMessage.inputAccessoryView = contentView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textMessage.resignFirstResponder()
    }

    @IBAction func btnOnClick(_ sender: UIButton) {
        textMessage.text = sender.currentTitle
    }
    
    

}
