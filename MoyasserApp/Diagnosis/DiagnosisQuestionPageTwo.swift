//
//  DiagnosisQuestionPageTwo.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI

struct DiagnosisQuestionPageTwo: View {
    @Environment(\.dismiss) private var dismiss
    @State private var show = false
    @State var checkzero: Bool = false
    @State var checkTwo: Bool = false
    @State var checkThird: Bool = false
    @State var checkOne: Bool = false
    @State var questionTwoCheckZero: Bool = false
    @State var questionTwoCheckTwo: Bool = false
    @State var questionTwoCheckThird: Bool = false
    @State var questionTwoCheckOne: Bool = false
    @State var questionThirdCheckZero: Bool = false
    @State var questionThirdCheckTwo: Bool = false
    @State var questionThirdCheckThird: Bool = false
    @State var questionThirdCheckOne: Bool = false
    @State var questionFourCheckZero: Bool = false
    @State var questionFourCheckTwo: Bool = false
    @State var questionFourCheckThird: Bool = false
    @State var questionFourCheckOne: Bool = false
    @State var questionFiveCheckZero: Bool = false
    @State var questionFiveCheckTwo: Bool = false
    @State var questionFiveCheckThird: Bool = false
    @State var questionFiveCheckOne: Bool = false
    @State var questionOne: Int = 0
    @State var questionTwo:Int = 0
    @State var questionThird:Int = 0
    @State var questionFour:Int = 0
    @State var questionFive:Int = 0
    var body: some View {
        VStack(spacing: 0.0){
            VStack(alignment: .leading) {
         
                HStack {
                    Spacer()
                    VStack(spacing: 10.0){
                        Text("مقياس جيليام")
                            .font(.custom("ExpoArabic-Bold", size: 24))
                            .foregroundColor(Color.colorYellow)
                        Text("السلوكيات النمطية")
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
                    Text("يتجنب دوام التقاء الأعين(اي يشيح وجهه بعيد عندما يحاول أحد ان ينظر اليه)")
                        .foregroundStyle(.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                    HStack(spacing: 24.0) {
                        Button(action:
                                {
                            //1. Save state
                            self.checkzero = !self.checkzero
                            if checkzero == true {
                                questionOne = 0
                              
                          
                          checkTwo = false
                          checkThird = false
                          checkOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.checkzero ? Color.colorYellow : Color.colorGray)
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
                            self.checkTwo = !self.checkTwo
                            if checkTwo == true {
                               questionOne = 1
                              
                          
                          checkzero = false
                          checkThird = false
                          checkOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.checkTwo ? Color.colorYellow : Color.colorGray)
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
                            self.checkThird = !self.checkThird
                            if checkThird == true {
                                questionOne = 2
                              
                          
                          checkzero = false
                          checkTwo = false
                          checkOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.checkThird ? Color.colorYellow : Color.colorGray)
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
                            self.checkOne = !self.checkOne
                            if checkOne == true {
                                questionOne = 3
                              
                          
                          checkzero = false
                          checkTwo = false
                          checkThird = false
                            }
                            
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.checkOne ? Color.colorYellow : Color.colorGray)
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
                    Text("يحدق (يمعن النظر) في الأيدي، الاشياء و المواد الموجودة في البيئة لفترة لا تقل عن خمس ثوان")
                        .foregroundStyle(.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                    HStack(spacing: 24.0) {
                        Button(action:
                                {
                            //1. Save state
                            self.questionTwoCheckZero = !self.questionTwoCheckZero
                            if questionTwoCheckZero == true {
                                questionTwo = 0
                              
                          
                                questionTwoCheckTwo = false
                                questionTwoCheckThird = false
                                questionTwoCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionTwoCheckZero ? Color.colorYellow : Color.colorGray)
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
                            self.questionTwoCheckOne = !self.questionTwoCheckOne
                            if questionTwoCheckOne == true {
                                questionTwo = 1
                              
                          
                                questionTwoCheckZero = false
                                questionTwoCheckTwo = false
                                questionTwoCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionTwoCheckOne ? Color.colorYellow : Color.colorGray)
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
                            self.questionTwoCheckTwo = !self.questionTwoCheckTwo
                            if questionTwoCheckTwo == true {
                                questionTwo = 2
                              
                          
                                questionTwoCheckZero = false
                                questionTwoCheckOne = false
                                questionTwoCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionTwoCheckTwo ? Color.colorYellow : Color.colorGray)
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
                            self.questionTwoCheckThird = !self.questionTwoCheckThird
                            if questionTwoCheckThird == true {
                               questionTwo = 3
                              
                          
                                questionTwoCheckZero = false
                                questionTwoCheckTwo = false
                                questionTwoCheckOne = false
                            }
                            
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionTwoCheckThird ? Color.colorYellow : Color.colorGray)
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
                    Text("يأكل طعام معين و يرفض ان يأكل ما يأكله أغلب الناس")
                        .foregroundStyle(.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                    HStack(spacing: 24.0) {
                        Button(action:
                                {
                            //1. Save state
                            self.questionThirdCheckZero = !self.questionThirdCheckZero
                            if questionThirdCheckZero == true {
                                questionThird = 0
                              
                          
                                questionThirdCheckTwo = false
                                questionThirdCheckThird = false
                                questionThirdCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionThirdCheckZero ? Color.colorYellow : Color.colorGray)
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
                            self.questionThirdCheckOne = !self.questionThirdCheckOne
                            if questionThirdCheckOne == true {
                                questionThird = 1
                              
                          
                                questionThirdCheckZero = false
                                questionThirdCheckTwo = false
                                questionThirdCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionThirdCheckOne ? Color.colorYellow : Color.colorGray)
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
                            self.questionThirdCheckTwo = !self.questionThirdCheckTwo
                            if questionThirdCheckTwo == true {
                                questionThird = 2
                              
                          
                                questionThirdCheckZero = false
                                questionThirdCheckOne = false
                                questionThirdCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionThirdCheckTwo ? Color.colorYellow : Color.colorGray)
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
                            self.questionThirdCheckThird = !self.questionThirdCheckThird
                            if questionThirdCheckThird == true {
                                questionThird = 3
                              
                          
                                questionThirdCheckZero = false
                                questionThirdCheckTwo = false
                                questionThirdCheckOne = false
                            }
                            
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionThirdCheckThird ? Color.colorYellow : Color.colorGray)
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
                    Text("يهتز للأمام و للخلف أثناء الجلوس أو الوقوف")
                        .foregroundStyle(.colorMain)
                        .font(.custom("ExpoArabic-Book", size: 16))
                    HStack(spacing: 24.0) {
                        Button(action:
                                {
                            //1. Save state
                            self.questionFourCheckZero = !self.questionFourCheckZero
                            if questionFourCheckZero == true {
                                questionFour = 0
                              
                          
                                questionFourCheckTwo = false
                                questionFourCheckThird = false
                                questionFourCheckOne = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionFourCheckZero ? Color.colorYellow : Color.colorGray)
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
                            self.questionFourCheckOne = !self.questionFourCheckOne
                            if questionFourCheckOne == true {
                                questionFour = 1
                              
                          
                                questionFourCheckZero = false
                                questionFourCheckTwo = false
                                questionFourCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionFourCheckOne ? Color.colorYellow : Color.colorGray)
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
                            self.questionFourCheckTwo = !self.questionFourCheckTwo
                            if questionFourCheckTwo == true {
                                questionFour = 2
                              
                          
                                questionFourCheckZero = false
                                questionFourCheckOne = false
                                questionFourCheckThird = false
                            }
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionFourCheckTwo ? Color.colorYellow : Color.colorGray)
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
                            self.questionFourCheckThird = !self.questionFourCheckThird
                            if questionFourCheckThird == true {
                                questionFour = 3
                              
                          
                               questionFourCheckZero = false
                              questionFourCheckTwo = false
                            questionFourCheckOne = false
                            }
                            
                            
                            
                        }) {
                            VStack( spacing: 10) {
                                
                                //2. Will update according to state
                                Circle()
                                    .fill(self.questionFourCheckThird ? Color.colorYellow : Color.colorGray)
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
//                VStack(alignment: .leading){
//                Text("يصدر أصوات حادة (مثل: أي أي) او اصوات اخرى شبيه كدافع او حافز نفسي له")
//                    .foregroundStyle(.colorMain)
//                    .font(.custom("ExpoArabic-Book", size: 16))
//                HStack(spacing: 24.0) {
//                    Button(action:
//                            {
//                        //1. Save state
//                        self.questionFiveCheckZero = !self.questionFiveCheckZero
//                        if questionFiveCheckZero == true {
//                            questionFive = 0
//                          
//                      
//                            questionFiveCheckTwo = false
//                            questionFiveCheckThird = false
//                            questionFiveCheckOne = false
//                        }
//                        
//                        
//                    }) {
//                        VStack( spacing: 10) {
//                            
//                            //2. Will update according to state
//                            Circle()
//                                .fill(self.questionFiveCheckZero ? Color.colorYellow : Color.colorGray)
//                                .frame(width:20, height:20, alignment: .center)
//                                .cornerRadius(5)
//                            
//                            Text("0")
//                                .font(.custom("ExpoArabic-Book", size: 14))
//                        }
//                    }
//                    .foregroundColor(Color.colorMain)
//                    Button(action:
//                            {
//                        //1. Save state
//                        self.questionFiveCheckOne = !self.questionFiveCheckOne
//                        if questionFiveCheckOne == true {
//                            questionFive = 1
//                          
//                      
//                            questionFiveCheckZero = false
//                            questionFiveCheckTwo = false
//                            questionFiveCheckThird = false
//                        }
//                        
//                        
//                    }) {
//                        VStack( spacing: 10) {
//                            
//                            //2. Will update according to state
//                            Circle()
//                                .fill(self.questionFiveCheckOne ? Color.colorYellow : Color.colorGray)
//                                .frame(width:20, height:20, alignment: .center)
//                                .cornerRadius(5)
//                            
//                            Text("1")
//                                .font(.custom("ExpoArabic-Book", size: 14))
//                            
//                        }
//                    }
//                    .foregroundColor(Color.colorMain)
//                    Button(action:
//                            {
//                        //1. Save state
//                        self.questionFiveCheckTwo = !self.questionFiveCheckTwo
//                        if questionFiveCheckTwo == true {
//                            questionFive = 2
//                            
//                            
//                            questionFiveCheckZero = false
//                            questionFiveCheckOne = false
//                            questionFiveCheckThird = false
//                        }
//                        
//                    }) {
//                        VStack( spacing: 10) {
//                            
//                            //2. Will update according to state
//                            Circle()
//                                .fill(self.questionFiveCheckTwo ? Color.colorYellow : Color.colorGray)
//                                .frame(width:20, height:20, alignment: .center)
//                                .cornerRadius(5)
//                            
//                            Text("2")
//                                .font(.custom("ExpoArabic-Book", size: 14))
//                            
//                        }
//                    }
//                    .foregroundColor(Color.colorMain)
//                    Button(action:
//                            {
//                        //1. Save state
//                        self.questionFiveCheckThird = !self.questionFiveCheckThird
//                        if questionFiveCheckThird == true {
//                            questionFive = 3
//                          
//                      
//                            questionFiveCheckZero = false
//                            questionFiveCheckTwo = false
//                            questionFiveCheckOne = false
//                        }
//                        
//                        
//                        
//                    }) {
//                        VStack( spacing: 10) {
//                            
//                            //2. Will update according to state
//                            Circle()
//                                .fill(self.questionFiveCheckThird ? Color.colorYellow : Color.colorGray)
//                                .frame(width:20, height:20, alignment: .center)
//                                .cornerRadius(5)
//                            
//                            Text("3")
//                                .font(.custom("ExpoArabic-Book", size: 14))
//                            
//                        }
//                    }
//                    .foregroundColor(Color.colorMain)
//                    .font(.custom("ExpoArabic-Book", size: 14))
//                }
//            }
            }
            .padding(.horizontal, 24.0)
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
                 DiagnosisQuestionPageFour(questionOne: $questionOne, questionTwo: $questionTwo, questionThird: $questionThird, questionFour: $questionFour)
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
    DiagnosisQuestionPageTwo()
}
