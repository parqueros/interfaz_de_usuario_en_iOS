//
//  IngredienteTableViewController.swift
//  PizzaApp_Semana2
//
//  Created by Pablo Arqueros on 15/11/15.
//  Copyright © 2015 Pablo Arqueros. All rights reserved.
//

import UIKit

class IngredienteTableViewController: UITableViewController {
    
    let mix = ["jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa", "champiñon"]
    
    var summary: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Summary")
        print(summary)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mix.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel!.text = mix[indexPath.row]
        // Configure the cell...
        
        return cell
    }
    
    @IBAction func nextStep(sender: AnyObject) {
        if tableView.indexPathsForSelectedRows?.count > 0 && tableView.indexPathsForSelectedRows?.count <= 5 {
            performSegueWithIdentifier("toSummary", sender: self)
        }
        else {
            let alert = UIAlertController(title: "Advertencia", message: "Debe seleccionar de 1 a 5 ingredientes", preferredStyle: .Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination = segue.destinationViewController as! ResumenViewController
        var text:[String] = []
        if let indexPaths = tableView.indexPathsForSelectedRows {
            for var i = 0; i < indexPaths.count; ++i {
                text.append(mix[indexPaths[i].row])
            }
        }
        
        let mixFinal = text.joinWithSeparator(",")
        
        destination.summary = summary + "Ingredientes: (\(mixFinal))"
    }
    
    
}
