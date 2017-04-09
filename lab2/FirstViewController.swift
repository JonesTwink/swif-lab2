//
//  FirstViewController.swift
//  lab2
//
//  Created by Admin on 21.02.17.
//  Copyright © 2017 arthur. All rights reserved.
//

import UIKit
import SwiftyJSON
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var carModels: [JSON] = [];
    
    @IBOutlet weak var tableView: UITableView!
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(carModels.count)
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath) as! FirstViewControllerTableViewCell
        cell.carImage.image = UIImage(named: ("img/" + carModels[indexPath.row]["name"].stringValue.replacingOccurrences(of: " ", with: "_")+".png"))
        cell.carTitle.text = carModels[indexPath.row]["name"].stringValue
        cell.carIntroText.text = carModels[indexPath.row]["intro"].stringValue
    
        return(cell)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.carModels = CarModel.getCarsFromFile()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getCarInfo(row:Int)->[String:String] {
        let name = self.carModels[row]["name"].stringValue
        let intro = self.carModels[row]["intro"].stringValue
        let desc = self.carModels[row]["desc"].stringValue
        return ["name":name, "intro":intro, "desc":desc]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ShowDetailView") {
            
            let controller =  segue.destination as! DetailViewController
            let row = self.tableView.indexPathForSelectedRow?.row
            
            controller.car = getCarInfo(row: row!)
        }

        
    }
}

