//
//  ViewController.swift
//  Climbing Trip
//
//  Created by Oto Brglez on 05/03/15.
//  Copyright (c) 2015 OPALAB. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

  
  @IBOutlet weak var distanceTextField: NSTextField!
  
  @IBOutlet weak var unitComboBox: NSComboBox!
  
  @IBOutlet weak var outputTextField: NSTextField!
  
  func fe_days_needed(var distance: Int, unit:String = "km") -> Int {
    var out_distance = Double(distance)
    
    if unit == "km" {
      out_distance = out_distance * 0.621371
    }
    
    var p:Double = Double(Int(out_distance) / 100)
    
    if p < 0.0 || p == 0.0 {
      return 1
    } else {
      return Int(p)
    }
  }
  
  @IBAction func calculateButtonClick(sender: NSButton) {
    var distance:Int = distanceTextField.integerValue
    var output:String = String(format: "Days needed: %d", fe_days_needed(distance, unit: unitComboBox.stringValue))
    outputTextField.stringValue = output
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override var representedObject: AnyObject? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

