//
//  DoctorsModel.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import Foundation
import SwiftUI
struct DoctorModel: Identifiable{
    var id :String = UUID().uuidString
    var name:String
    var job:String
    var price :String
    var rate:Int
    var brif:String
    var experience:String
    var photo:String
    
}


