//
//  Page2ViewController.swift
//  MyPickerView
//
//  Created by grace on 2022/1/23.
//

import UIKit

class Page2ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var lblResult: UILabel!
    var bld = ""
    var str = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print("bld: \(bld), str: \(str)")
        
        textView.text += "星座: \(str) \t 血型: \(bld)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 3.0, delay: 0.5) {
            self.lblResult.alpha = 1
            self.lblResult.center = self.view.center
        } completion: { animation in
            
        }

    }
}
