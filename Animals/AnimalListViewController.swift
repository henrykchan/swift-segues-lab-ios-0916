//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    
    
    var arrayOfAnimals = [ "🐶", "🐱", "🐭", "🐹", "🐰", "🐼", "🦁", "🐷", "🐸", "🐙"]
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfAnimals.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let animalRow = arrayOfAnimals[indexPath.row]
        
        cell.textLabel?.text = animalRow
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AnimalDetailView" {
            
            let dest = segue.destination as! AnimalViewController
            
            let pickedRow = tableView.indexPathForSelectedRow?.row
            
            if let unwrappedRow = pickedRow {
                
                dest.animal = arrayOfAnimals[unwrappedRow]
            }
        }
}




}
