//
//   RehabilitationCenterRow.swift
//  Moyasser
//
//  Created by amal badr on 14/01/2024.
//

import SwiftUI

struct RehabilitationCenterRow: View {
    var centerData:RehabilitationCenter
    var body: some View {
        VStack(alignment: .trailing){
            NavigationLink{
                RehabilitationCenterView(centerData: centerData)
            } label: {
          VStack(alignment: .trailing){
                    HStack{
                        Text(centerData.name)
                            .font(.custom("ExpoArabic-Bold", size: 18))
                            .foregroundStyle(Color.colorMain)
                        Spacer()
                        
                        
                    }
                    
                    
                    HStack{
                        ForEach(1...centerData.rate,  id: \.self) {_ in
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                                .foregroundColor(Color.colorYellow)
                        }
                        
                    }
                }
                .padding(20.0)
            }
       
        }
        .background(Color.colorGray)
        .frame(height:80)
        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
     
    }
}

