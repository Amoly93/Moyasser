//
//  ViewModel.swift
//  MoyasserApp
//
//  Created by amal badr on 16/01/2024.
//

import Foundation
import Firebase
import FirebaseFirestore
import SwiftUI

class ViewModel: ObservableObject {
    let db = Firestore.firestore()
    @Published var doctor = [DoctorModel]()
    @Published var center = [RehabilitationCenter]()
    
    func getDoctorData(){
       
        db.collection("Doctor").getDocuments { snapshot, error in
       
            if error == nil {
                print("error\(error?.localizedDescription)")
                if let snapshot = snapshot {
            
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create Todos
                        self.doctor = snapshot.documents.map { d in
                           

                            return DoctorModel(id: d.documentID, name: d["name"] as? String ?? "", job: d["job"] as? String ?? "", price: d["price"] as? String ?? "", rate: d["rate"] as? Int ?? 0, brif: d["brif"] as? String ?? "", experience: d["experience"] as? String ?? "", photo: d["photo"] as? String ?? "")
                        
                        }
                    }
                    
                 
                }
            }
            else {
          
            }
        }
    }
    func getCenterData(){
       
        db.collection("RehabilitationCenter").getDocuments { snapshot, error in
       
            if error == nil {
                print("error\(error?.localizedDescription)")
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create Todos
                        self.center = snapshot.documents.map { d in
                          

                            return RehabilitationCenter(id: d.documentID, name: d["name"] as? String ?? "", description: d["description"] as? String ?? "", rate: d["rate"] as? Int ?? 0, logo:d["logo"] as? String ?? "", region: d["region"] as? String ?? "", street: d["street"] as? String ?? "", district:  d["district"] as? String ?? "", locationURL:d["locationURL"] as? String ?? "")
                        
                        }
                    }
                    
                    
                }
            }
            else {
          
            }
        }
    }
    
}
