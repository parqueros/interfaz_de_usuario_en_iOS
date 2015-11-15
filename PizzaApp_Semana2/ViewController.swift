//
//  ViewController.swift
//  PizzaApp_Semana2
//
//  Created by Pablo Arqueros on 15/11/15.
//  Copyright © 2015 Pablo Arqueros. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let sizes = ["chica", "mediana", "grande"]
    
    @IBOutlet weak var sizePicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sizes.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sizes[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController as! TipoMasaViewController
        
        destination.summary = "Pizza de tamaño: \(sizes[sizePicker.selectedRowInComponent(0)]), "
    }
}


