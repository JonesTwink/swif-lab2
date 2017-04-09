//
//  SecondViewController.swift
//  lab2
//
//  Created by Admin on 21.02.17.
//  Copyright © 2017 arthur. All rights reserved.
//

import UIKit
import Alamofire
class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    //var carModels: [Int:[String:String]] = [0:["name":"logan"],1:["name":"caprut"]];
    var carsInStock: [AnyObject] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let parameters: Parameters = ["method":"getCarAmount"]
        Alamofire.request("http://renault-brest.by/test/api/", parameters: parameters).responseJSON { response in
            
            let result = response.result
            if let regions = result.value as? [AnyObject]{
                self.carsInStock = response.result.value as! [AnyObject]
                self.tableView.reloadData()
            }
        }
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(carsInStock.count)
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "amountCell", for: indexPath) as! SecondViewControllerTableViewCell
        let model = carsInStock[indexPath.row]["model"]
        cell.carTitle.text = model as? String
        
        let amount = carsInStock[indexPath.row]["amount"]
        cell.amount.text = (amount as? String)! + " авто"
        
        let region = carsInStock[indexPath.row]["region"]
        cell.region.text = "на выбор в регионе " + (region as? String)! + "."
        
        return(cell)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

