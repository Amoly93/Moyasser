//
//  ConfirmView.swift
//  Moyasser
//
//  Created by amal badr on 14/01/2024.
//

import SwiftUI

struct ConfirmView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.colorMain)
            VStack{
                VStack(spacing: 45.0){
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .padding(.top)
                        .foregroundStyle(Color.colorPrimer)
                        .frame(width: 100.0, height: 100.0)
                    Text("تم حجز سيتم التواصل معك لتاكيد الموعد")
                        .font(.custom("ExpoArabic-Bold", size: 18))
                        .foregroundStyle(.white)
                }
                Spacer()

                NavigationLink {
//                        if !grade.isEmpty{
//                        }else{
//
//                        }
//                   ContentView()
                 
               
                } label: {
                    Text("الصفحة الرئيسية")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .font(.custom("Tajawal-Medium", size: 18))
                        .foregroundStyle(.white)
                        .background(.colorYellow)
                        .frame( height: 50)
                }
                .frame(height: 80)
            }
            .padding(.horizontal, 16.0)
            .padding(.vertical, 100.0)
        }
  
     
        .ignoresSafeArea(.all)
    }
    }


#Preview {
    ConfirmView()
}
