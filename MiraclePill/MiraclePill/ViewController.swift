//
//  ViewController.swift
//  MiraclePill
//
//  Created by David Gudeman on 8/7/17.
//  Copyright © 2017 dmgudeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

  @IBOutlet weak var statePicker: UIPickerView!
  @IBOutlet weak var statePickerBtn: UIButton!
  @IBOutlet weak var zipcodeLabel: UILabel!
  @IBOutlet weak var zipcodeTxt: UITextField!
  @IBOutlet weak var countryLabel: UILabel!
  @IBOutlet weak var countryTxt: UITextField!
  
  var states = ["Alaska", "Alabama", "Arkansas", "California", "New York", "Maine"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    statePicker.dataSource = self
    statePicker.delegate = self
  
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return states.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return states[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    statePickerBtn.setTitle(states[row], for: UIControlState.normal)
    statePicker.isHidden = true
    zipcodeLabel.isHidden = false
    zipcodeTxt.isHidden = false
    countryLabel.isHidden = false
    countryTxt.isHidden = false

  }

  @IBAction func stateBtnPressed(_ sender: AnyObject) {
    statePicker.isHidden = false
    zipcodeLabel.isHidden = true
    zipcodeTxt.isHidden = true
    countryLabel.isHidden = true
    countryTxt.isHidden = true
  }

}

