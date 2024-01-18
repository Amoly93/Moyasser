//
//  RehabilitationCentrerView.swift
//  Moyasser
//
//  Created by amal badr on 14/01/2024.
//

import SwiftUI

struct RehabilitationCenterView: View {
    var centerData:RehabilitationCenter
    var body: some View {
        VStack{
            VStack{
                AsyncImage(url: URL(string: "\(centerData.logo)")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    Circle()
                        .fill(.colorPrimer)
                        .frame(width: 80, height: 80)
                }
                .frame(width: 200.0, height: 100.0)
             
                   
            }
            Spacer()
            VStack(spacing:0){
                VStack{
                    VStack(alignment: .leading, spacing: 10.0){
                        Text("الوصف")
                            .foregroundColor(Color.colorYellow)
                            .font(.custom("ExpoArabic-Bold", size: 16))
                        
                        Text(centerData.description)
                        //                        .lineLimit(2, reservesSpace: true)
                            .foregroundColor(Color.colorMain)
                            .font(.custom("ExpoArabic-Book", size: 16))
                    }
                    .padding()
                    
                }
                .overlay(
                       RoundedRectangle(cornerRadius: 10)
                        .stroke(.colorMain, lineWidth: 1)
                   )
             
                //            .background(in: .ellipse, fillStyle: .init())
                Divider()
                    .frame(width: 240)
                    .frame(height: 5)
                //                            .padding(.horizontal, 30)
                    .background(Color.colorRed)
            }
            Spacer()
            HStack(spacing: 24.0){
                VStack(alignment: .leading, spacing: 10.0){
                    Text(centerData.region)
//                        .lineLimit(2, reservesSpace: true)
                        .foregroundColor(Color.colorRed)
                        .font(.custom("ExpoArabic-Book", size: 14))
                        .multilineTextAlignment(.trailing)
                        .padding([.top, .leading, .trailing])
                    Text(centerData.street)
                        .foregroundColor(Color.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 14))
                        .padding([.leading, .trailing])
                    Text(centerData.district)
                        .foregroundColor(Color.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 14))
                        .padding([.leading, .bottom, .trailing])
                    
                }
                .overlay(
                       RoundedRectangle(cornerRadius: 10)
                        .stroke(.colorYellow, lineWidth: 1)
                   )
                .padding()
                .frame( height: 110.0)
                .frame(minWidth: 0, maxWidth: .infinity)

                VStack{
                    Link(destination: URL(string: centerData.locationURL)!) {
                        Image("QR")
                            .resizable()
                            .padding()
                          
                    }
                }
                .overlay(
                       RoundedRectangle(cornerRadius: 10)
                        .stroke(.colorYellow, lineWidth: 1)
                   )
                .frame( height: 110.0)
                .frame(minWidth: 0, maxWidth: .infinity)
            }
         
     Spacer()
        }
        .padding(.horizontal, 24.0)
        
     
    }
}

//#Preview {
//    RehabilitationCenterView()
//}
