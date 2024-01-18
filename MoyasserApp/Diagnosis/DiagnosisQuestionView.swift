//
//  DiagnosisQuestionView.swift
//  Moyasser
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI

struct DiagnosisQuestionView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var show = false
    @State var checkState: Bool = false
    @State var checkGuardian: Bool = false
    @State var checkOne: Bool = false
    @State var checkTwo: Bool = false
    @State var checkThird: Bool = false
    @State var checkAbove: Bool = false
    @State var checkMale: Bool = false
    @State var checkFemale: Bool = false
    @State var selection = ""
    @State var responsible:String = ""
    @State var name:String = ""
    @State private var date = Date()
    @State var ageGroup:String = ""
    @State var gender:String = ""
    var body: some View {
        VStack(spacing: 0.0){
            VStack(alignment: .leading) {
         
                HStack {
                    Spacer()
                    VStack(spacing: 6.0){
                        Text("اسئلة وصف الحالة")
                            .font(.custom("ExpoArabic-Bold", size: 24))
                            .foregroundColor(Color.colorYellow)
                     
                    }
                    
                    Spacer()
                      
                }
                .padding(.top)
            }
            .frame(height: 150)
            .background(Color.colorMain)
            .mask(CustomShape(radius: 60))
            .edgesIgnoringSafeArea(.top)
//            Spacer()
            ScrollView{
                VStack(alignment: .leading, spacing: 24.0){
                    Text("من فضلك أجب على الاسئلة التالية")
                        .font(.custom("ExpoArabic-Book", size: 18))
                        .foregroundColor(Color.colorPrimer)
                    VStack(alignment: .leading, spacing: 10.0){
                        Text("دور المسؤول عن الاجابة")
                            .multilineTextAlignment(.trailing)
                            .foregroundStyle(.colorMain)
                            .font(.custom("ExpoArabic-Book", size: 16))
                        HStack(spacing: 15.0){
                            Button(action:
                                    {
                                //1. Save state
                                self.checkGuardian = !self.checkGuardian
                                if checkGuardian == true {
                                    responsible = "ولي امر"
                                    //                            print("State : \(selectedPeriod)")
                                    checkState = false
                                }
                                
                                
                            }) {
                                HStack( spacing: 10) {
                                    
                                    //2. Will update according to state
                                    Circle()
                                        .fill(self.checkGuardian ? Color.colorYellow : Color.colorGray)
                                        .frame(width:20, height:20, alignment: .center)
                                        .cornerRadius(5)
                                    
                                    Text("ولي امر")
                                        .font(.custom("ExpoArabic-Book", size: 14))
                                    
                                }
                            }
                            .foregroundColor(Color.colorMain)
                            Button(action:
                                    {
                                //1. Save state
                                self.checkState = !self.checkState
                                if checkState == true {
                                    responsible = "مستفيد"
                                    //                            print("State : \(selectedPeriod)")
                                    checkGuardian = false
                                }
                                
                                
                            }) {
                                HStack( spacing: 10) {
                                    
                                    //2. Will update according to state
                                    Circle()
                                        .fill(self.checkState ? Color.colorYellow : Color.colorGray)
                                        .frame(width:20, height:20, alignment: .center)
                                        .cornerRadius(5)
                                    
                                    Text("مستفيد")
                                        .font(.custom("ExpoArabic-Book", size: 14))
                                    
                                }
                            }
                            .foregroundColor(Color.colorMain)
                        }
                    }
                    VStack(alignment: .leading){
                        Text("اسم المستفيد")
                            .font(.custom("Tajawal-Medium", size: 18))
                            .foregroundStyle(.colorMain)
                        TextField("", text: $name)
                            .padding(10.0)
                            .font(.custom("Tajawal-Regular", size: 16))
                            .background(.colorGray)
                        
                    }
                    HStack{
                        Text("تاريخ ميلاد المستفيد")
                            .font(.custom("Tajawal-Medium", size: 18))
                            .foregroundStyle(.colorMain)
                        DatePicker(
                             "",
                             selection: $date,
                             in: ...Date.now, displayedComponents: [.date]
                         )
//                        TextField("", text: $data)
//                            .padding(10.0)
//                            .font(.custom("Tajawal-Regular", size: 16))
//                            .background(.colorGray)
                        
                    }
                    
                    VStack(alignment: .leading){
                        Text("الفئة العمرية للمستفيد")
                            .foregroundStyle(.colorMain)
                            .font(.custom("ExpoArabic-Book", size: 16))
                        HStack(spacing:30.0){
                            Button(action:
                                    {
                                //1. Save state
                                self.checkOne = !self.checkOne
                                if checkOne == true {
                                    ageGroup = "2-5"
                                    
                                    
                                    checkTwo = false
                                    checkThird = false
                                    checkAbove = false
                                }
                                
                                
                            }) {
                                VStack( spacing: 10) {
                                    
                                    //2. Will update according to state
                                    Circle()
                                        .fill(self.checkOne ? Color.colorYellow : Color.colorGray)
                                        .frame(width:20, height:20, alignment: .center)
                                        .cornerRadius(5)
                                    
                                    Text("2-5")
                                        .font(.custom("ExpoArabic-Book", size: 14))
                                }
                            }
                            .foregroundColor(Color.colorMain)
                            Button(action:
                                    {
                                //1. Save state
                                self.checkTwo = !self.checkTwo
                                if checkTwo == true {
                                    ageGroup = "5-10"
                                    
                                    
                                    checkOne = false
                                    checkThird = false
                                    checkAbove = false
                                }
                                
                                
                            }) {
                                VStack( spacing: 10) {
                                    
                                    //2. Will update according to state
                                    Circle()
                                        .fill(self.checkTwo ? Color.colorYellow : Color.colorGray)
                                        .frame(width:20, height:20, alignment: .center)
                                        .cornerRadius(5)
                                    
                                    Text("5-10")
                                        .font(.custom("ExpoArabic-Book", size: 14))
                                    
                                }
                            }
                            .foregroundColor(Color.colorMain)
                            Button(action:
                                    {
                                //1. Save state
                                self.checkThird = !self.checkThird
                                if checkThird == true {
                                    ageGroup = "10-15"
                                    
                                    
                                    checkOne = false
                                    checkTwo = false
                                    checkAbove = false
                                }
                                
                                
                            }) {
                                VStack( spacing: 10) {
                                    
                                    //2. Will update according to state
                                    Circle()
                                        .fill(self.checkThird ? Color.colorYellow : Color.colorGray)
                                        .frame(width:20, height:20, alignment: .center)
                                        .cornerRadius(5)
                                    
                                    Text("10-15")
                                        .font(.custom("ExpoArabic-Book", size: 14))
                                    
                                }
                            }
                            .foregroundColor(Color.colorMain)
                            Button(action:
                                    {
                                //1. Save state
                                self.checkAbove = !self.checkAbove
                                if checkAbove == true {
                                    ageGroup = "فما فوق 16"
                                    
                                    
                                    checkOne = false
                                    checkTwo = false
                                    checkThird = false
                                }
                                
                                
                                
                            }) {
                                VStack( spacing: 10) {
                                    
                                    //2. Will update according to state
                                    Circle()
                                        .fill(self.checkAbove ? Color.colorYellow : Color.colorGray)
                                        .frame(width:20, height:20, alignment: .center)
                                        .cornerRadius(5)
                                    
                                    Text("فما فوق 16")
                                        .font(.custom("ExpoArabic-Book", size: 14))
                                    
                                }
                            }
                            .foregroundColor(Color.colorMain)
                            .font(.custom("ExpoArabic-Book", size: 14))
                        }
                    }
                    VStack(alignment: .leading){
                        Text("جنس المستفيد")
                            .foregroundStyle(.colorMain)
                            .font(.custom("ExpoArabic-Book", size: 16))
                        HStack(spacing: 15.0){
                            Button(action:
                                    {
                                //1. Save state
                                self.checkFemale = !self.checkFemale
                                if checkFemale == true {
                                    gender = "انثى"
                                    //                                print("gender : \(gender)")
                                    checkMale = false
                                }
                                
                                
                            }) {
                                HStack( spacing: 10) {
                                    
                                    //2. Will update according to state
                                    Circle()
                                        .fill(self.checkFemale ? Color.colorYellow : Color.colorGray)
                                        .frame(width:20, height:20, alignment: .center)
                                        .cornerRadius(5)
                                    
                                    Text("انثى")
                                        .font(.custom("ExpoArabic-Book", size: 14))
                                    
                                }
                            }
                            .foregroundColor(Color.colorMain)
                            Button(action:
                                    {
                                //1. Save state
                                self.checkMale = !self.checkMale
                                if checkMale == true {
                                    gender = "ذكر"
                                    //                                print("gender : \(gender)")
                                    checkFemale = false
                                }
                                
                                
                            }) {
                                HStack( spacing: 10) {
                                    
                                    //2. Will update according to state
                                    Circle()
                                        .fill(self.checkMale ? Color.colorYellow : Color.colorGray)
                                        .frame(width:20, height:20, alignment: .center)
                                        .cornerRadius(5)
                                    
                                    Text("ذكر")
                                        .font(.custom("ExpoArabic-Book", size: 14))
                                    
                                }
                            }
                            .foregroundColor(Color.colorMain)
                            
                        }
                    }
                    
                }
                .padding(.horizontal, 24.0)
            }
            Spacer()
            Button{
            
               
               show = true
                 
             } label: {
                 Label("التالي", systemImage: "")
                     .padding(.horizontal, 20.0)
                     .padding(.vertical, 10.0)
                     .font(.custom("ExpoArabic-Bold", size: 16))
                     .foregroundStyle(.white)
                     .background(.colorPrimer)
                     .clipShape(Capsule())
             }
             .navigationDestination(isPresented:$show) {
                DiagnosisQuestionPageOne()}
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
struct CustomShape: Shape {
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let tl = CGPoint(x: rect.minX, y: rect.minY)
        let tr = CGPoint(x: rect.maxX, y: rect.minY)
        let brs = CGPoint(x: rect.maxX, y: rect.maxY - radius)
        let brc = CGPoint(x: rect.maxX - radius, y: rect.maxY - radius)
        let bls = CGPoint(x: rect.minX + radius, y: rect.maxY)
        let blc = CGPoint(x: rect.minX + radius, y: rect.maxY - radius)
        
        path.move(to: tl)
        path.addLine(to: tr)
        path.addLine(to: brs)
        path.addRelativeArc(center: brc, radius: radius,
          startAngle: Angle.degrees(0), delta: Angle.degrees(90))
        path.addLine(to: bls)
        path.addRelativeArc(center: blc, radius: radius,
          startAngle: Angle.degrees(90), delta: Angle.degrees(90))
        
        return path
    }
}
#Preview {
    DiagnosisQuestionView()
}
