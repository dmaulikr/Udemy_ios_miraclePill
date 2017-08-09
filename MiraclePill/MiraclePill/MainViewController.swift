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
  @IBOutlet weak var statePickerButton: UIButton!
  @IBOutlet weak var countryTxt: UITextField!
  @IBOutlet weak var countryLabel: UILabel!
  @IBOutlet weak var zipcodeLabel: UILabel!
  @IBOutlet weak var zipcodeTxt: UITextField!
  
  
  
  let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New Yorks"]
  
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

  @IBAction func stateButtonPressed(_ sender: AnyObject) {
    statePicker.isHidden = false
    countryTxt.isHidden = true
    countryLabel.isHidden = true
    zipcodeTxt.isHidden = true
    zipcodeLabel.isHidden = true
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
    statePickerButton.setTitle(states[row], for: UIControlState.normal)
    statePicker.isHidden = true
    countryTxt.isHidden = false
    countryLabel.isHidden = false
    zipcodeTxt.isHidden = false
    zipcodeLabel.isHidden = false
  }
}

