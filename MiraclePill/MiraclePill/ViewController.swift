//
//  ViewController.swift
//  MiraclePill
//
//  Created by David Gudeman on 8/7/17.
//  Copyright © 2017 dmgudeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var statePicker: UIPickerView!
  @IBOutlet weak var statePickerBtn: UIButton!
  @IBOutlet weak var zipcodeLabel: UILabel!
  @IBOutlet weak var zipcodeTxt: UITextField!
  @IBOutlet weak var countryLabel: UILabel!
  @IBOutlet weak var countryTxt: UITextField!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func stateBtnPressed(_ sender: AnyObject) {
  }

}

