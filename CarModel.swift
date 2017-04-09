//
//  CarModel.swift
//  lab2
//
//  Created by Admin on 23.02.17.
//  Copyright © 2017 arthur. All rights reserved.
//

import Foundation
import SwiftyJSON

class CarModel{
    
    static func getCarsFromFile() -> [JSON]{
        
        if let path = Bundle.main.path(forResource: "cars", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = JSON(data: data)
                if jsonObj != JSON.null {
                    print("jsonData:\(jsonObj)")
                    return (jsonObj["cars"].arrayValue as [JSON])
                } else {
                    print("Could not get json from file, make sure that file contains valid json.")
                    return[]
                }
            } catch let error {
                print(error.localizedDescription)
                return[]
            }
        } else {
            print("Invalid filename/path.")
            return []
        }
        
    }

}
