//
//  RehabilitationCenterModel.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import Foundation
import SwiftUI
struct RehabilitationCenter: Identifiable{
    var id :String = UUID().uuidString
    var name:String
    var description:String
    var rate:Int
    var logo:String
    var region:String
    var street:String
    var district:String
    var locationURL:String
}
