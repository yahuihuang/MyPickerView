//
//  Page2ViewController.swift
//  MyPickerView
//
//  Created by grace on 2022/1/23.
//

import UIKit

class Page2ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var bld = ""
    var str = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print("bld: \(bld), str: \(str)")
        
        textView.text += "星座: \(str) \t 血型: \(bld)"
    }
}
