//
//  TipoMasaViewController.swift
//  PizzaApp_Semana2
//
//  Created by Pablo Arqueros on 15/11/15.
//  Copyright © 2015 Pablo Arqueros. All rights reserved.
//

import UIKit

class TipoMasaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let volume = ["delgada", "crujiente", "gruesa"]
    var summary: String = ""
    
    @IBOutlet weak var volumePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return volume[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return volume.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination = segue.destinationViewController as! TipoQuesoViewController
        
        destination.summary = summary + " con masa: \(volume[volumePicker.selectedRowInComponent(0)]), "
        
        
    }
    
    
}

