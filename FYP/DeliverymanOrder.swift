//
//  Deliveryman.swift
//  FYP
//
//  Created by yoshi on 24/3/2020.
//  Copyright © 2020 py. All rights reserved.
//

import Foundation
import SwiftyJSON

class DeliverymanOrder{
    var id: Int?
    var type: String?
    var customerName: String?
    var orderAddress: String?
    var customerIcon: String?
    var shopName: String?
    
    init(json: JSON,type: String){
        self.type = type
        self.id = json["id"].int
        self.customerName = json["customer"]["name"].string
        self.orderAddress = json["customer"]["address"].string
        self.shopName = json["shop"]["name"].string
        self.customerIcon = json["customer"]["avatar"].string
        
        
    }
}
