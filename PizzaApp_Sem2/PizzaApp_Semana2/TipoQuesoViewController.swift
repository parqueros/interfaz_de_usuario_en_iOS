//
//  TipoQuesoViewController.swift
//  PizzaApp_Semana2
//
//  Created by Pablo Arqueros on 15/11/15.
//  Copyright © 2015 Pablo Arqueros. All rights reserved.
//

import UIKit

class TipoQuesoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let cheese = ["mozarela", "cheddar", "parmesano", "sin queso"]
    var summary: String = ""
    
    @IBOutlet weak var cheesePicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cheese[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cheese.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination = segue.destinationViewController as! IngredienteTableViewController
        
        destination.summary = summary + " queso: \(cheese[cheesePicker.selectedRowInComponent(0)]), "
    }
    
    
}
