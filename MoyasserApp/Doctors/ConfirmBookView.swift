//
//  ConfirmBookView.swift
//  MoyasserApp
//
//  Created by amal badr on 17/01/2024.
//

import SwiftUI

struct ConfirmBookView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.colorMain)
            VStack(alignment: .center){
                VStack(alignment: .center, spacing: 150.0){
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .padding(.top)
                        .foregroundStyle(.white)
                        .frame(width: 100.0, height: 100.0)
                    Text("تم الحجز سيتم التواصل معك لتاكيد الموعد")
                        .font(.custom("ExpoArabic-Book", size: 24))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                }
                Spacer()

                NavigationLink {
//                        if !grade.isEmpty{
//                        }else{
//
//                        }
                  HomeView()
                 
               
                } label: {
                    Text("الصفحة الرئيسية")
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .font(.custom("ExpoArabic-Book", size: 24))
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
    ConfirmBookView()
}
