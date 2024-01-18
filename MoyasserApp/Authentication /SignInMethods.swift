//
//  signInMethods.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI

struct SignInMethods: View {
    
    var body: some View {
        ZStack{
            Image("Group 120")
                .resizable()
                .edgesIgnoringSafeArea(.all)
           
            VStack{
                Spacer()
                Spacer()
                Image("Group 119")
                    .resizable()
                    .frame(width: 300, height: 100)
                Spacer()
                VStack(spacing: 24.0){
                    NavigationLink {
                        SignInView()
                    } label: {
                        Text("تسجيل الدخول")
                            .padding()
                            .font(.custom("ExpoArabic-Book", size: 18))
                            .foregroundStyle(.white)
                            .background(.colorYellow)
                    }
                    
                    
                    NavigationLink {
                        CreateAccount()
                    } label: {
                        Text("إنشاء حساب")
                            .padding()
                            .font(.custom("ExpoArabic-Book", size: 18))
                            .foregroundStyle(.colorMain)
                            .border(Color.colorMain, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                }
                
                Spacer()
                
                
            }
            .padding(.horizontal, 24.0)
        }
        
 
    }
}

#Preview {
    SignInMethods()
}
