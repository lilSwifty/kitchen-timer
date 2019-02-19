//
//  TimerViewController.swift
//  KitchenTimer
//
//  Created by Mani Sedighi on 2019-01-29.
//  Copyright © 2019 Mani Sedighi. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var saveTimerButton: UIButton!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var alarmTitle: UITextField!
    @IBOutlet weak var alarmSubtitle: UITextField!
    
    var hours: Int = 0
    var minutes: Int = 0
    var seconds: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self

    }
    
    @IBAction func saveTimer(_ sender: UIButton) {
        print("alarm pressed")
        dismiss(animated: true)
    }
}

extension TimerViewController: UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 25
        case 1,2:
            return 60
            
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return pickerView.frame.size.width/3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return "\(row) h"
        case 1:
            return "\(row) m"
        case 2:
            return "\(row) sec"
        default:
            return ""
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            hours = row
        case 1:
            minutes = row
        case 2:
            seconds = row
        default:
            break;
        }
    }
}
