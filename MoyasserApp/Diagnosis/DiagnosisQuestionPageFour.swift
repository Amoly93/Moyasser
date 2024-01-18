//
//  DiagnosisQuestionPageFour.swift
//  MoyasserApp
//
//  Created by amal badr on 17/01/2024.
//

import SwiftUI

struct DiagnosisQuestionPageFour: View {
    @Environment(\.dismiss) private var dismiss
    @State private var show = false
    @State var questionTenCheckZero: Bool = false
    @State var questionTenCheckTwo: Bool = false
    @State var questionTenCheckThird: Bool = false
    @State var questionTenCheckOne: Bool = false
    @State var questionSixCheckZero: Bool = false
    @State var questionSixCheckTwo: Bool = false
    @State var questionSixCheckThird: Bool = false
    @State var questionSixCheckOne: Bool = false
    @State var questionSevenCheckZero: Bool = false
    @State var questionSevenCheckTwo: Bool = false
    @State var questionSevenCheckThird: Bool = false
    @State var questionSevenCheckOne: Bool = false
    @State var questionEightCheckZero: Bool = false
    @State var questionEightCheckTwo: Bool = false
    @State var questionEightCheckThird: Bool = false
    @State var questionEightCheckOne: Bool = false
    @State var questionNineCheckZero: Bool = false
    @State var questionNineCheckTwo: Bool = false
    @State var questionNineCheckThird: Bool = false
    @State var questionNineCheckOne: Bool = false
    @State var questionTen: Int = 0
    @State var questionSix:Int = 0
    @State var questionSeven:Int = 0
    @State var questionEight:Int = 0
    @State var questionNine:Int = 0
    @Binding var questionOne: Int
    @Binding var questionTwo:Int
    @Binding var questionThird:Int
    @Binding var questionFour:Int
    @State var questionResults:Int = 0
//    @Binding var questionFive:Int
    var body: some View {
        VStack(spacing: 0.0){
            VStack(alignment: .leading) {
         
                HStack {
                    Spacer()
                    VStack(spacing: 10.0){

                        Text("مقياس جيليام")
                            .font(.custom("ExpoArabic-Bold", size: 24))
                            .foregroundColor(Color.colorYellow)
                        Text("التواصل")
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
                Text("من فضلك أجب على الاسئلة التالية")
                    .font(.custom("ExpoArabic-Book", size: 18))
                    .foregroundColor(Color.colorPrimer)
                VStack(alignment: .leading){
                    Text("يعيد الكلمات لفظاً او بإشارات")
                        .foregroundStyle(.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                    HStack(spacing: 24.0) {
                        Button(action:
                                {
                            //1. Save state
                            self.questionTenCheckZero = !self.questionTenCheckZero
                            if questionTenCheckZero == true {
                                questionTen = 0
                              
                          
                          questionTenCheckTwo = false
                          questionTenCheckThird = false
                          questionTenCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionTenCheckZero ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("0")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionTenCheckTwo = !self.questionTenCheckTwo
                            if questionTenCheckTwo == true {
                                questionTen = 1
                              
                          
                          questionTenCheckZero = false
                          questionTenCheckThird = false
                          questionTenCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionTenCheckTwo ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("1")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionTenCheckThird = !self.questionTenCheckThird
                            if questionTenCheckThird == true {
                                questionTen = 2
                              
                          
                          questionTenCheckZero = false
                          questionTenCheckTwo = false
                          questionTenCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionTenCheckThird ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("2")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionTenCheckOne = !self.questionTenCheckOne
                            if questionTenCheckOne == true {
                                questionTen = 3
                              
                          
                          questionTenCheckZero = false
                          questionTenCheckTwo = false
                          questionTenCheckThird = false
                            }
                            
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionTenCheckOne ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("3")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 14))
                    }
                }
//                2 questionTwo
                VStack(alignment: .leading){
                    Text("يتجنب طلب الأشياء التي يريدها")
                        .foregroundStyle(.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                    HStack(spacing: 24.0) {
                        Button(action:
                                {
                            //1. Save state
                            self.questionSixCheckZero = !self.questionSixCheckZero
                            if questionSixCheckZero == true {
                                questionSix = 0
                              
                          
                                questionSixCheckTwo = false
                                questionSixCheckThird = false
                                questionSixCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionSixCheckZero ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("0")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionSixCheckOne = !self.questionSixCheckOne
                            if questionSixCheckOne == true {
                                questionSix = 1
                              
                          
                                questionSixCheckZero = false
                                questionSixCheckTwo = false
                                questionSixCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionSixCheckOne ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("1")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionSixCheckTwo = !self.questionSixCheckTwo
                            if questionSixCheckTwo == true {
                                questionSix = 2
                              
                          
                                questionSixCheckZero = false
                                questionSixCheckOne = false
                                questionSixCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionSixCheckTwo ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("2")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionSixCheckThird = !self.questionSixCheckThird
                            if questionSixCheckThird == true {
                                questionSix = 3
                              
                          
                                questionSixCheckZero = false
                                questionSixCheckTwo = false
                                questionSixCheckOne = false
                            }
                            
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionSixCheckThird ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("3")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 14))
                    }
                }
//                3 questionThird
                VStack(alignment: .leading){
                    Text("يستخدم الضمائر بصورة غير ملائمة (يشير الى نفسه بالضمير هو، انت ، هي ..الخ)")
                        .foregroundStyle(.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                    HStack(spacing: 24.0) {
                        Button(action:
                                {
                            //1. Save state
                            self.questionSevenCheckZero = !self.questionSevenCheckZero
                            if questionSevenCheckZero == true {
                                questionSeven = 0
                              
                          
                                questionSevenCheckTwo = false
                                questionSevenCheckThird = false
                                questionSevenCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionSevenCheckZero ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("0")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionSevenCheckOne = !self.questionSevenCheckOne
                            if questionSevenCheckOne == true {
                                questionSeven = 1
                              
                          
                                questionSevenCheckZero = false
                                questionSevenCheckTwo = false
                                questionSevenCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionSevenCheckOne ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("1")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionSevenCheckTwo = !self.questionSevenCheckTwo
                            if questionSevenCheckTwo == true {
                                questionSeven = 2
                              
                          
                                questionSevenCheckZero = false
                                questionSevenCheckOne = false
                                questionSevenCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionSevenCheckTwo ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("2")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionSevenCheckThird = !self.questionSevenCheckThird
                            if questionSevenCheckThird == true {
                                questionSeven = 3
                              
                          
                                questionSevenCheckZero = false
                                questionSevenCheckTwo = false
                                questionSevenCheckOne = false
                            }
                            
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionSevenCheckThird ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("3")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 14))
                    }
                }
//                4 questionFour
                VStack(alignment: .leading){
                    Text("يستخدم الإشارات بدلا من الحديث ")
                        .foregroundStyle(.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                    HStack(spacing: 24.0) {
                        Button(action:
                                {
                            //1. Save state
                            self.questionEightCheckZero = !self.questionEightCheckZero
                            if questionEightCheckZero == true {
                                questionEight = 0
                              
                          
                                questionEightCheckTwo = false
                                questionEightCheckThird = false
                                questionEightCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionEightCheckZero ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("0")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionEightCheckOne = !self.questionEightCheckOne
                            if questionEightCheckOne == true {
                                questionEight = 1
                              
                          
                                questionEightCheckZero = false
                                questionEightCheckTwo = false
                                questionEightCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionEightCheckOne ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("1")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionEightCheckTwo = !self.questionEightCheckTwo
                            if questionEightCheckTwo == true {
                                questionEight = 2
                              
                          
                                questionEightCheckZero = false
                                questionEightCheckOne = false
                                questionEightCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionEightCheckTwo ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("2")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                        Button(action:
                                {
                            //1. Save state
                            self.questionEightCheckThird = !self.questionEightCheckThird
                            if questionEightCheckThird == true {
                                questionEight = 3
                              
                          
                               questionEightCheckZero = false
                              questionEightCheckTwo = false
                            questionEightCheckOne = false
                            }
                            
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionEightCheckThird ? Color.colorYellow : Color.colorGray)
                                    .frame(width:20, height:20, alignment: .center)
                                    .cornerRadius(5)
                                
                                Text("3")
                                    .font(.custom("ExpoArabic-Book", size: 14))
                                
                            }
                        }
                        .foregroundColor(Color.colorMain)
                    
                    }
                }
//                5 questionFive
                VStack(alignment: .leading){
                Text("يجيب بصورة غير ملائمة على اسئلة عن قصص موجزة او جمل إخبارية")
                    .foregroundStyle(.colorMain)
                    .font(.custom("ExpoArabic-Book", size: 16))
                HStack(spacing: 24.0) {
                    Button(action:
                            {
                        //1. Save state
                        self.questionNineCheckZero = !self.questionNineCheckZero
                        if questionNineCheckZero == true {
                            questionNine = 0
                          
                      
                            questionNineCheckTwo = false
                            questionNineCheckThird = false
                            questionNineCheckOne = false
                        }
                        
                        
                    }) {
                        VStack( spacing: 10) {
                            
                            //2. Will update according to state
                            Circle()
                                .fill(self.questionNineCheckZero ? Color.colorYellow : Color.colorGray)
                                .frame(width:20, height:20, alignment: .center)
                                .cornerRadius(5)
                            
                            Text("0")
                                .font(.custom("ExpoArabic-Book", size: 14))
                        }
                    }
                    .foregroundColor(Color.colorMain)
                    Button(action:
                            {
                        //1. Save state
                        self.questionNineCheckOne = !self.questionNineCheckOne
                        if questionNineCheckOne == true {
                            questionNine = 1
                          
                      
                            questionNineCheckZero = false
                            questionNineCheckTwo = false
                            questionNineCheckThird = false
                        }
                        
                        
                    }) {
                        VStack( spacing: 10) {
                            
                            //2. Will update according to state
                            Circle()
                                .fill(self.questionNineCheckOne ? Color.colorYellow : Color.colorGray)
                                .frame(width:20, height:20, alignment: .center)
                                .cornerRadius(5)
                            
                            Text("1")
                                .font(.custom("ExpoArabic-Book", size: 14))
                            
                        }
                    }
                    .foregroundColor(Color.colorMain)
                    Button(action:
                            {
                      
                        //1. Save state
                        self.questionNineCheckTwo = !self.questionNineCheckTwo
                        if questionNineCheckTwo == true {
                            questionNine = 2
                            
                            
                            questionNineCheckZero = false
                            questionNineCheckOne = false
                            questionNineCheckThird = false
                        }
                        
                    }) {
                        VStack( spacing: 10) {
                            
                            //2. Will update according to state
                            Circle()
                                .fill(self.questionNineCheckTwo ? Color.colorYellow : Color.colorGray)
                                .frame(width:20, height:20, alignment: .center)
                                .cornerRadius(5)
                            
                            Text("2")
                                .font(.custom("ExpoArabic-Book", size: 14))
                            
                        }
                    }
                    .foregroundColor(Color.colorMain)
                    Button(action:
                            {
                        //1. Save state
                        self.questionNineCheckThird = !self.questionNineCheckThird
                        if questionNineCheckThird == true {
                            questionNine = 3
                          
                      
                            questionNineCheckZero = false
                            questionNineCheckTwo = false
                            questionNineCheckOne = false
                        }
                        
                        
                        
                    }) {
                        VStack( spacing: 10) {
                            
                            //2. Will update according to state
                            Circle()
                                .fill(self.questionNineCheckThird ? Color.colorYellow : Color.colorGray)
                                .frame(width:20, height:20, alignment: .center)
                                .cornerRadius(5)
                            
                            Text("3")
                                .font(.custom("ExpoArabic-Book", size: 14))
                            
                        }
                    }
                    .foregroundColor(Color.colorMain)
                    .font(.custom("ExpoArabic-Book", size: 14))
                }
            }
            }
            .padding(.horizontal, 24.0)
            Spacer()
            Spacer()
            Button{
            show = true
                questionResults = questionOne + questionTwo + questionThird + questionFour + questionSix + questionSeven + questionEight + questionEight + questionNine + questionTen
             } label: {
                 Label("تأكيد", systemImage: "")
                     .padding(.horizontal, 20.0)
                     .padding(.vertical, 10.0)
                     .font(.custom("ExpoArabic-Bold", size: 16))
                     .foregroundStyle(.white)
                     .background(.colorPrimer)
                     .clipShape(Capsule())
             }
             .navigationDestination(isPresented:$show) {
                 ResultsView(questionResults: $questionResults)
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

//#Preview {
//    DiagnosisQuestionPageFour(questionOne: <#Binding<Int>#>, questionTwo: <#Binding<Int>#>, questionThird: <#Binding<Int>#>, questionFour: <#Binding<Int>#>)
//}
