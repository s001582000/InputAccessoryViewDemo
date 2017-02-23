//
//  KeyboardFollowView.swift
//  InputAccessoryViewDemo
//
//  Created by 梁雅軒 on 2017/2/23.
//  Copyright © 2017年 zoaks. All rights reserved.
//

import UIKit

class KeyboardFollowView: NSObject {
    private var mTextField:UITextField!
    private var mBtnDone:UIButton!
    private var mBtnValue1:UIButton!
    init(tf:UITextField) {
        super.init()
        self.initSelf(tf: tf)
    }
    
    private func initSelf(tf:UITextField) {
        mTextField = tf
        let baseWidth = UIScreen.main.bounds.size.width
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.frame = CGRect(x: 0, y: 0, width: baseWidth, height: 44)
        
        mBtnDone = UIButton(type: .system)
        mBtnDone.addTarget(self, action: #selector(pickerDoneClicked), for: .touchUpInside)
        mBtnDone.frame = CGRect(x: baseWidth - 40 - 10, y: 44 - 33 - 5, width: 40, height: 33)
        mBtnDone.setTitle("Done", for: .normal)
        mBtnDone.setTitleColor(UIColor.white, for: .normal)
        mBtnDone.backgroundColor = UIColor.black
        mBtnDone.layer.cornerRadius = 4
        view.addSubview(mBtnDone)
        
        mBtnValue1 = UIButton(type: .system)
        mBtnValue1.addTarget(self, action: #selector(pickerDoneClicked), for: .touchUpInside)
        mBtnValue1.frame = CGRect(x: 10, y: 44 - 33 - 5, width: 40, height: 33)
        mBtnValue1.setTitle("100", for: .normal)
        mBtnValue1.setTitleColor(UIColor.white, for: .normal)
        mBtnValue1.backgroundColor = UIColor.black
        mBtnValue1.layer.cornerRadius = 4
        view.addSubview(mBtnValue1)
        
        mTextField.inputAccessoryView = view;
    }
    
    @objc private func pickerDoneClicked(sender:UIButton) {
        if sender == mBtnDone {
            mTextField.sendActions(for: .editingDidEndOnExit)
        }else if sender == mBtnValue1{
            mTextField.text = sender.currentTitle
        }
    }
}
