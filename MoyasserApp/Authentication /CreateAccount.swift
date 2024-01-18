//
//  CreateAccount.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI
import FirebaseAuth
struct CreateAccount: View {
    @Environment(\.dismiss) private var dismiss
    @State var textName: String = ""
    @State var textPhone: String = ""
    @State var textEmail: String = ""
    @State var textPassword: String = ""
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.colorMain)
            VStack(spacing: 150.0){
                VStack(alignment: .leading, spacing: 50.0){
                    VStack(alignment: .leading){
                        Text("مرحباً")
                            .foregroundColor(Color.colorYellow)
                            .font(.custom("ExpoArabic-Bold", size: 24))
                        HStack{
                            Text("أهلا بك في تطبيق")
                                .foregroundStyle(.white)
                                .font(.custom("ExpoArabic-Book", size: 24))
                            Text("مُيسِّر")
                                .foregroundStyle(.colorRed)
                                .font(.custom("ExpoArabic-Book", size: 24))
                            
                        }
                    }
                    
                    VStack{
                        TextField("",
                                  text: $textName,
                                  prompt: Text("الاسم")
                            .foregroundColor(.colorGray)
                            .font(.custom("ExpoArabic-Book", size: 18))
                        )
                        Divider()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .frame(height: 1)
                            .background(Color.white)
                        
                        TextField("",
                                  text: $textPhone,
                                  prompt: Text("رقم الجوال")
                            .foregroundColor(.colorGray)
                            .font(.custom("ExpoArabic-Book", size: 18))
                        )
                        Divider()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .frame(height: 1)
                            .background(Color.white)
                        TextField("",
                                  text: $textEmail,
                                  prompt: Text("البريد الالكتروني")
                            .foregroundColor(.colorGray)
                            .font(.custom("ExpoArabic-Book", size: 18))
                        )
                        Divider()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .frame(height: 1)
                            .background(Color.white)
                        TextField("",
                                  text: $textPassword,
                                  prompt: Text("الرقم السري")
                            .foregroundColor(.colorGray)
                            .font(.custom("ExpoArabic-Book", size: 18))
                        )
                        Divider()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .frame(height: 1)
                            .background(Color.white)
                    }

                    
                }
                .padding(.horizontal, 24.0)
                Button {
                    createUser()
               ConfirmView()
                } label: {
                    Text("تسجيل الدخول")
                        .font(.custom("ExpoArabic-Book", size: 18))
                        .padding(.all, 20.0)
                        .foregroundStyle(.white)
                        .background(.colorYellow)
                }
            }
        }
        .ignoresSafeArea(.all)
    }
    private func createUser() {
           Auth.auth().createUser(withEmail: textEmail, password: textPassword, completion: { result, err in
               if let err = err {
                   print("Failed due to error:", err)
                   return
               }
               print("Successfully created account with ID: \(result?.user.uid ?? "")")
           })
       }
}

#Preview {
    CreateAccount()
}
