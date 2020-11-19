//
//  ScheduleTableViewController.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import UIKit

struct CellData {
    
    let homeImg : UIImage?
    let awayImg : UIImage?
}


class ScheduleTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(STableViewCell.nib(), forCellReuseIdentifier: STableViewCell.identifier)
        tableView.register(FinalTableViewCell.nib(), forCellReuseIdentifier: FinalTableViewCell.identifier)
        tableView.register(BTableViewCell.nib(), forCellReuseIdentifier: BTableViewCell.identifier)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("goes here")
        if indexPath.row == 0{
            print("enters STable")
            let cell = tableView.dequeueReusableCell(withIdentifier: "STableViewCell", for: indexPath) as! STableViewCell
            cell.networkLabel?.text = "Jan 19th 1997"
            return cell
        } else if indexPath.row == 1{
            print("enters FinalTable")
            let cell = tableView.dequeueReusableCell(withIdentifier: "FinalTableViewCell", for: indexPath)
            return cell
        }else{
            print("enters BTable")
            let cell = tableView.dequeueReusableCell(withIdentifier: "BTableViewCell", for: indexPath)
            return cell
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
