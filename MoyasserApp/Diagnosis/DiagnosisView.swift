//
//  DiagnosisView.swift
//  Moyasser
//
//  Created by amal badr on 14/01/2024.
//

import SwiftUI
import FirebaseAuth

struct DiagnosisView: View {
    var body: some View {
        VStack{
            VStack(spacing: 0.0){
                Image("diagnosis")
                    .resizable()
                    .frame(height: 250)
                
                HStack{
                    Text("التشخيص مبكراً")
                        .foregroundStyle(.colorYellow)
                        .font(.custom("ExpoArabic-Book", size: 18))
                    Text("يساعدك مستقبلاً")
                        .foregroundStyle(.colorRed)
                        .font(.custom("ExpoArabic-Book", size: 18))
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.all)
                .background(Color.colorMain)
            
            }
    
               Spacer()
            NavigationLink{
                if (Auth.auth().currentUser?.uid == nil){
                    SignInMethods()
                }else{
                    DiagnosisQuestionView()
                }
             } label: {
                 Label("ابدأ", systemImage: "")
                     .padding(.horizontal, 20.0)
                     .padding(.vertical, 10.0)
                     .font(.custom("ExpoArabic-Bold", size: 16))
                     .foregroundStyle(.white)
                     .background(.colorPrimer)
                     .clipShape(Capsule())
             }
//                 .navigationDestination(isPresented:$show) {
//                     OTPVerificationView(phone: $phone)
            Spacer()
        }
    
    }
}

#Preview {
    DiagnosisView()
}
