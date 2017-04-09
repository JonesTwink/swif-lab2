//
//  DetailViewController.swift
//  lab2
//
//  Created by Admin on 23.02.17.
//  Copyright © 2017 arthur. All rights reserved.
//

import UIKit
import SwiftyJSON

class DetailViewController: UIViewController {

    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carTitle: UILabel!
    @IBOutlet weak var carIntroText: UILabel!
    @IBOutlet weak var carDescription: UITextView!
    
    var car : [String:String] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        carTitle.text = car["name"]
        carIntroText.text = car["intro"]
        carDescription.text = car["desc"]
        carImage.image = UIImage(named: ("img/" + car["name"]!.replacingOccurrences(of: " ", with: "_")+".png"))
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
