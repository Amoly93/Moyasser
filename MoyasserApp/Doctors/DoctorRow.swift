//
//  DoctorRow.swift
//  Moyasser
//
//  Created by amal badr on 14/01/2024.
//

import SwiftUI

struct DoctorRow: View {
    var doctor:DoctorModel
    var startCount:Int = 3
    var body: some View {
        NavigationLink{
            DoctorDetails(doctor: doctor)
        } label: {
            HStack(alignment: .bottom){
                
                VStack( alignment: .leading, spacing: 6.0){
                    VStack(alignment: .leading){
                        Text(doctor.name)
                            .foregroundColor(Color.colorMain)
                            .font(.custom("ExpoArabic-Bold", size: 18))
                        Text(doctor.job)
                            .foregroundColor(Color.colorMain)
                            .font(.custom("ExpoArabic-Book", size: 16))
                        Text(doctor.price)
                            .foregroundColor(Color.colorMain)
                            .font(.custom("ExpoArabic-Book", size: 16))
                    }
                    
                    VStack( spacing: 0.0){
                        HStack{
                            
                            
                            Text("للمزيد")
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(.colorMain)
                                .font(.custom("ExpoArabic-Book", size: 16))
                              
                            
                        }
                        Divider()
                            .frame(width: 40)
                            .frame(height: 1)
                        //                            .padding(.horizontal, 30)
                            .background(Color.colorRed)
                        
                        
                        
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding([.top, .bottom, .leading], 10.0)
                
                HStack(alignment: .bottom){
                    HStack(alignment: .bottom, spacing: 0.0){
                        ForEach(1...doctor.rate ,  id: \.self) {_ in
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                                .foregroundColor(Color.colorYellow)
                        }
                    }
                    .padding(.bottom, 10.0)
                    ZStack{
                        Circle()
                            .fill(.colorPrimer)
                            .frame(width: 80, height: 80)
                        
                        
                        //                    Image("male")
                        AsyncImage(url: URL(string: "\(doctor.photo)")) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            Circle()
                                .fill(.colorPrimer)
                                .frame(width: 80, height: 80)
                        }
                        .frame(width: 80, height: 116.0)
                    }
                    
                    
                }
                
                
                
            }
            .background(Color.colorGray)
            .frame(height:120)
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            //        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
    }
}

//#Preview {
//    DoctorRow(doctor: DoctorModel)
//        .previewLayout(.fixed(width: 300, height: 82))
//}
