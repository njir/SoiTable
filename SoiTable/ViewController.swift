//
//  ViewController.swift
//  SoiTable
//
//  Created by 진형탁 on 2017. 1. 26..
//  Copyright © 2017년 FailNicely. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    // MARK: - Property
    let myDics = [["job": "finance", "crew":["abcde"]],
                  ["job": "design", "crew":["mia", "jun"]],
                  ["job": "manager", "crew":["scott", "cerina", "clay"]],
                  ["job": "developer", "crew":["ned", "rouis"]],
                  ["job": "student", "crew":["jacob", "tak", "linda", "henry"]]]
    
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Soi Test"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        return myDics.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myDics[section]["job"] as? String
    }
    /*
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return myDics[section]["job"] as? String
    }
 */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let array = myDics[section]["crew"] as? Array<String>
        return array!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell")!
        let array = myDics[indexPath.section]["crew"] as? Array<String>
        
        cell.textLabel?.text = array?[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        performSegue(withIdentifier: "toDetailVC", sender: tableView.cellForRow(at: indexPath))
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toDetailVC") {
            let detailVC = segue.destination as! DetailViewController
            let selectedItem = sender as! UITableViewCell
            
            detailVC.title = selectedItem.textLabel?.text
            detailVC.selectedName = selectedItem.textLabel?.text
        }
    }
    
    
}
