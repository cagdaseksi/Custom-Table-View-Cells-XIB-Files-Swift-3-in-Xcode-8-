//
//  ViewController.swift
//  CustomTableCells
//
//  Created by cagdas on 26/02/2017.
//  Copyright © 2017 cagdas. All rights reserved.
//

import UIKit

struct cellData {
    
    let cell:Int
    let text:String
    let image:UIImage
}

class TableTableViewController: UITableViewController {

    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        
        arrayOfCellData = [cellData( cell: 1, text: "news1", image: #imageLiteral(resourceName: "Apple") ),
        cellData( cell: 2, text: "news2", image: #imageLiteral(resourceName: "Apricot") ),
        cellData( cell: 1, text: "news3", image: #imageLiteral(resourceName: "Apple") ),
        cellData( cell: 2, text: "news4", image: #imageLiteral(resourceName: "Apple") ),
        cellData( cell: 2, text: "news5", image: #imageLiteral(resourceName: "Apricot") ),
        cellData( cell: 2, text: "news6", image: #imageLiteral(resourceName: "Apple") ),
        cellData( cell: 2, text: "news7", image: #imageLiteral(resourceName: "Apricot") ),]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (arrayOfCellData[indexPath.row].cell == 1)
        {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImage.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        
        }
        else if (arrayOfCellData[indexPath.row].cell == 2)
        {
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            
            cell.mainImage.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        }else
        {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImage.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      
        if (arrayOfCellData[indexPath.row].cell == 1)
        {
            return 200
            
        } else if (arrayOfCellData[indexPath.row].cell == 2) {
            
            return 100
            
        }else
        {
            return 200
        }
        
    }

}

