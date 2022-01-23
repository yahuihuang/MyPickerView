//
//  ViewController.swift
//  MyPickerView
//
//  Created by grace on 2022/1/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var myPickerView: UIPickerView!
    
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹 宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚 宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]
    
    @IBOutlet weak var lblNew: UILabel!
    @IBOutlet weak var lblOne: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // https://developer.apple.com/documentation/uikit/uipickerviewdatasource
        // UIPickerViewDataSource is protocol
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }
    //MARK:Picker View Data Source & Delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return bloudType.count
        case 1:
            return astrological.count
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return bloudType[row]
        case 1:
            return astrological[row]
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            return
        }
        
        switch component {
        case 0:
            lblOne.text = bloudType[row]
        case 1:
            lblNew.text = astrological[row]
        default:
            break;
        }
        
        if pickerView.selectedRow(inComponent: 0) != 0 &&
            pickerView.selectedRow(inComponent: 1) != 0 {
            self.performSegue(withIdentifier: "goNextPage", sender: nil)
        }
    }
}

