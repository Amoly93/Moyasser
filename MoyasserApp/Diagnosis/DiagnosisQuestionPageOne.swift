//
//  DiagnosisQuestionPageOne.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI

struct DiagnosisQuestionPageOne: View {
    @Environment(\.dismiss) private var dismiss
    @State private var show = false
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
         
                HStack {
                    Spacer()
                    VStack(spacing: 6.0){
                        Text("توجيهات المرحلة الأولى")
                            .font(.custom("ExpoArabic-Bold", size: 24))
                            .foregroundColor(Color.colorYellow)
                        Text("الاختبار")
                            .font(.custom("ExpoArabic-Bold", size: 16))
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                      
                }
                .padding(.top)
            }
            .frame(height: 150)
            .background(Color.colorMain)
            .mask(CustomShape(radius: 60))
            .edgesIgnoringSafeArea(.top)
            
       
            VStack(alignment: .leading, spacing: 24.0){
                Text("اتبع التوجيهات التالية")
                    .font(.custom("ExpoArabic-Book", size: 18))
                    .foregroundColor(Color.colorPrimer)
                Text(" ● يتكون هذا المقياس من ٤٢ بند موزعة على ثلاثةأبعاد . ")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                Text(" ● تحتوي الاسئلة على عدد من المشاكل المنتشرة لدى الأطفال.")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                Text(" ● حدد درجة السؤال من ملاحظات لتصرفات ابنك خلال الشهر الماضي كالتالي:(لا يلاحظ =٠، يلاحظ نادراً =١ ،يلاحظ أحياناً= ٢ ،يلاحظ دائماً=٣")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                Text( "● يجب التأكد من تحديد الإجابات بصورة دقيقة و سليمة")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                
            }

            .padding(.horizontal, 24.0)
            Spacer()
            Button{
            
               show = true
               
                 
             } label: {
                 Label("ابدأ", systemImage: "")
                     .padding(.horizontal, 20.0)
                     .padding(.vertical, 10.0)
                     .font(.custom("ExpoArabic-Bold", size: 16))
                     .foregroundStyle(.white)
                     .background(.colorPrimer)
                     .clipShape(Capsule())
             }
             .navigationDestination(isPresented:$show) {
                DiagnosisQuestionPageTwo()
             }
        }
        .navigationBarBackButtonHidden(true)
                   .toolbar {
                     
                       ToolbarItem(placement: .topBarLeading) {
                           Button {
                      
                               // 2
                               dismiss()

                           } label: {
                               HStack {
                                   Image(systemName: "chevron.backward")
                                       .foregroundStyle(Color.white)
                               }
                           }
                       }
                   }
   
    }
}

#Preview {
    DiagnosisQuestionPageOne()
}
