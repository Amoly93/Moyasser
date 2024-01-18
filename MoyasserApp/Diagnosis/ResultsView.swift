//
//  ResultsView.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI

struct ResultsView: View {
    var result:Int = 0
    @Binding var questionResults:Int
   
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
         
                HStack {
                    Spacer()
                    Text("نتيجة التشخيص")
                        .font(.custom("ExpoArabic-Bold", size: 24))
                        .foregroundColor(Color.colorYellow)
                    
                    Spacer()
                      
                }
                .padding(.top)
            }
            .frame(height: 150)
            .background(Color.colorMain)
            .mask(CustomShape(radius: 60))
            .edgesIgnoringSafeArea(.top)
            
       
            VStack(spacing: 50.0){
                Text("تصنيف اضطراب السلوك")
                    .font(.custom("ExpoArabic-Book", size: 24))
                    .foregroundColor(Color.colorPrimer)
                ZStack{
                    Image("Group 112")
                        .resizable()
                    Text("\(questionResults)")
                        .font(.custom("ExpoArabic-Book", size: 70))
                        .foregroundColor(Color.white)
                    
                }
                .frame(width: 217.0, height: 200.0)
                Text("\(result(value:questionResults))")
                    .font(.custom("ExpoArabic-Book", size: 24))
                    .foregroundColor(Color.colorYellow)
                Spacer()
                NavigationLink{
                
               
                    Doctors()
                     
                 } label: {
                     Label("التوصيات", systemImage: "")
                         .padding(.horizontal, 20.0)
                         .padding(.vertical, 10.0)
                         .font(.custom("ExpoArabic-Bold", size: 16))
                         .foregroundStyle(.white)
                         .background(.colorPrimer)
                         .clipShape(Capsule())
                 }
                NavigationLink{
                
               
                    HomeView()
                     
                 } label: {
                     Label("الرئيسية", systemImage: "")
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
        }
        .navigationBarBackButtonHidden(true)

    }
 func result(value: Int) -> String{
     var resultText = ""
     switch value {
     case 17..<19:
         resultText = "مرتفع جداً"
     case 15..<16:
         resultText = "مرتفع "
     case 13..<14:
         resultText = "فوق المتوسط"
     case 8..<12:
         resultText = "متوسط"
     case 6..<7:
         resultText = "دون المتوسط"
     case 4..<5:
         resultText = "منخفض"
      case 1..<3:
         resultText = "منخفض جداً"
     default:
         print("You did great!")
     }
     return resultText
    }
        
}

//
//#Preview {
//    ResultsView()
//}
