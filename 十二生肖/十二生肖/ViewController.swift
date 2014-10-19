//
//  ViewController.swift
//  十二生肖
//
//  Created by bingoogol on 14/10/19.
//  Copyright (c) 2014年 bingoogol. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate {
    let offset = 4
    @IBOutlet weak var yearTV: UITextField!
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func ok(sender: UIButton) {
        var year = yearTV.text.toInt()
        if year != nil && year > 999  {
            var imageNumber = (year! - offset) % 12
            imageView.image = UIImage(named: "\(imageNumber).png")
            yearTV.resignFirstResponder()
        } else {
            imageView.image = nil
            var alertView = UIAlertView(title: "提示", message: "年份必须大于999", delegate: self, cancelButtonTitle: "确定")
            alertView.show()
        }
    }
    
    func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int) {
        if buttonIndex == 0 {
            yearTV.text = ""
        }
    }

}