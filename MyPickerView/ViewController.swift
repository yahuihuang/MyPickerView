//
//  ViewController.swift
//  MyPickerView
//
//  Created by grace on 2022/1/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var myPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // https://developer.apple.com/documentation/uikit/uipickerviewdatasource
        // UIPickerViewDataSource is protocol
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }

    //MARK:Picker View Data Source & Delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Hello"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("didSelectedRow: \(row)\tinComponent: \(component)")
    }
}

