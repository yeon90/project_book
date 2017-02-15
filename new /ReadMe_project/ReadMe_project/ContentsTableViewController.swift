//
//  ContentsTableViewController.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 9..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ContentsTableViewController: UITableViewController{

    let colorS : colorPalette
    var writeColorA : UIColor
    var writeColorB : UIColor
    var writeColorC : UIColor
    var writeColorD : UIColor
    var writeColorE : UIColor
    var styleArray : Array<Any>
    required init?(coder aDecoder: NSCoder) {
        colorS = colorPalette()
        writeColorA = colorS.hexStringToUIColor(hex: "86C0C6")
        writeColorB = colorS.hexStringToUIColor(hex: "FBABA0")
        writeColorC = colorS.hexStringToUIColor(hex: "D2E1A5")
        writeColorD = colorS.hexStringToUIColor(hex: "D4C0D2")
        writeColorE = colorS.hexStringToUIColor(hex: "6D90B0")
        styleArray = []
       
        
              super.init(coder: aDecoder)
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //tableView.dataSource = self
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataStructS.sharedInstance.wData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contentsTable", for: indexPath) as! ContentsTableViewCell
        cell.bookTitle.text = String(describing: DataStructS.sharedInstance.wData[indexPath.row].w1_bookTitle)
        cell.dateLabel.text = String(describing: DataStructS.sharedInstance.wData[indexPath.row].w1_date)
        cell.pageLabel.text = String(describing: DataStructS.sharedInstance.wData[indexPath.row].w1_page)
        cell.imageText.text = String(describing: DataStructS.sharedInstance.wData[indexPath.row].w2_imageText)
        cell.imageText.isEditable = false
        cell.imageBackground.backgroundColor = colorS.changeToUIColor(input: String(describing: DataStructS.sharedInstance.wData[indexPath.row].w2_background))
        colorS.changeStyle(textField: cell.imageText, style: String(describing: DataStructS.sharedInstance.wData[indexPath.row].w2_style))
          // Configure the cell...
      return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contentsView :  ContentsViewController = storyboard?.instantiateViewController(withIdentifier:"contents") as! ContentsViewController
        contentsView.indexPathRow = indexPath.row
        
        if let navigation = self.navigationController {
            navigation.pushViewController(contentsView, animated: true)
        }
        else {
            present(contentsView, animated: true, completion: nil)
        }
        
    }
    
  /*  @IBAction func imageTouched(_ sender: Any) {
        
    }*/
    
    @IBAction func addButtonTouched(_ sender: Any) {
        popToRoot()
    }
    func popToRoot() {
        self.navigationController?.popToRootViewController(animated: true)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
