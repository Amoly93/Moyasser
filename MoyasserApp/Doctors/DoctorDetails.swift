//
//  DocterDetails.swift
//  Moyasser
//
//  Created by amal badr on 14/01/2024.
//

import SwiftUI
import FirebaseAuth
//@available(iOS 16.0, *)
struct DoctorDetails: View {
    var doctor:DoctorModel
    var body: some View {
        VStack{
            VStack(spacing: 24.0){
                VStack(spacing: -1.0){
                    ZStack{
                        Circle()
                            .fill(.colorPrimer)
                            .frame(width: 200, height: 200)
                        
                        
                        Image("Image")
                            .resizable()
                            .frame(width: 200, height: 250)
                    }
                    Divider()
                        .frame(width: 240)
                        .frame(height: 5)
                    //                            .padding(.horizontal, 30)
                        .background(Color.colorRed)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading, spacing: 10.0){
                    Text(doctor.name)
                        .foregroundColor(Color.colorYellow)
                        .font(.custom("ExpoArabic-Bold", size: 18))
                      
                        .multilineTextAlignment(.trailing)
                    Text(doctor.job)
                        .foregroundColor(Color.white)
                        .font(.custom("ExpoArabic-Book", size: 16))
                }
             
            }
          
            .padding(.vertical, 80.0)
            .background(Color.colorMain)
//            .shadow(color: .gray, radius: 5, x: 0, y: 5)
//            .aspectRatio(contentMode: .fit)
            VStack( spacing: 20.0){
                VStack(alignment: .leading, spacing: 24.0){
                VStack(alignment: .leading, spacing: 10.0){
                    Text("نبذة عن الاخصائي")
                        .foregroundColor(Color.colorYellow)
                        .font(.custom("ExpoArabic-Bold", size: 18))
                        .multilineTextAlignment(.trailing)
                    Text(doctor.brif)
                        .lineLimit(2, reservesSpace: true)
                        .foregroundColor(Color.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                 
                }
                VStack(alignment: .leading, spacing: 10.0){
                    Text("الخبرة")
                        .foregroundColor(Color.colorYellow)
                        .font(.custom("ExpoArabic-Bold", size: 18))
                        .multilineTextAlignment(.trailing)
                    Text(doctor.experience)
                        .foregroundColor(Color.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                }
                
            }
                NavigationLink{
                    if (Auth.auth().currentUser?.uid == nil){
                        
                    }else{
                        
                        BookView()
                    }
                     
                 } label: {
                     Label("احجز", systemImage: "")
                         .padding(.horizontal, 20.0)
                         .padding(.vertical, 10.0)
                         .font(.custom("ExpoArabic-Bold", size: 16))
                         .foregroundStyle(.white)
                         .background(.colorPrimer)
                         .clipShape(Capsule())
                 }
//                 .navigationDestination(isPresented:$show) {
//                     OTPVerificationView(phone: $phone)
                 
            }
            .padding(.all, 40.0)
        
        }
    }
}

//#Preview {
//    DoctorDetails()
//}
