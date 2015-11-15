//
//  ResumenViewController.swift
//  PizzaApp_Semana2
//
//  Created by Pablo Arqueros on 15/11/15.
//  Copyright © 2015 Pablo Arqueros. All rights reserved.
//

import UIKit

class ResumenViewController: UIViewController {
    
    @IBOutlet weak var summaryLabel: UILabel!
    var summary:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        summaryLabel.text = summary
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func okOrder(sender: AnyObject) {
        let alert = UIAlertController(title: "Confirmación", message: "¿Desea confirmar su pedido?", preferredStyle: .Alert)
        
        alert.addAction(UIAlertAction(title: "Si", style: .Default, handler: { (action: UIAlertAction) -> Void in
            self.navigationController?.popToRootViewControllerAnimated(true)
            
        }))
        
        alert.addAction(UIAlertAction(title: "No", style: .Destructive, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
