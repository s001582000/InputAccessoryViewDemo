//
//  ViewController.swift
//  InputAccessoryViewDemo
//
//  Created by 梁雅軒 on 2017/2/23.
//  Copyright © 2017年 zoaks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var followView:KeyboardFollowView!
    @IBOutlet weak var textMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
         followView = KeyboardFollowView(tf: textMessage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textMessage.resignFirstResponder()
    }
    
    @IBAction func tfDidEndOnExit(_ sender: UITextField) {
        sender.resignFirstResponder()
    }

}
