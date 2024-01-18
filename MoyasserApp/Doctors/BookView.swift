//
//  BookView.swift
//  MoyasserApp
//
//  Created by amal badr on 17/01/2024.
//

import SwiftUI

struct BookView: View {
    @State private var date = Date.now
    @State  var selectedPeriodOfMeeting = ""
    @State private var show:Bool = false
    var PeriodOfMeeting = ["٣٠ دقيقة","٦٠  دقيقة"]
    init() {
        // Segmented control colors
        UISegmentedControl.appearance().backgroundColor = .white
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.colorPrimer)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.systemBackground], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.colorYellow], for: .normal)
     
    }
    var body: some View {
        VStack(spacing: 0.0){
            VStack(alignment: .leading) {
         
                HStack {
                    Spacer()
                    VStack(spacing: 6.0){
                        Text("حجز موعد")
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
         
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text("المدة")
                        .font(.custom("ExpoArabic-Book", size: 24))
                        .foregroundColor(Color.colorPrimer)
                    Picker("", selection: $selectedPeriodOfMeeting) {
//                            Text("").tag("")
                        ForEach(PeriodOfMeeting,id:\.self){
                            Text($0)
                                .font(.custom("ExpoArabic-Book", size: 18))
                                .foregroundStyle(.colorPrimer)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
          
                VStack(alignment: .leading, spacing: 0.0){
                    Text("التاريخ")
                        .font(.custom("ExpoArabic-Book", size: 24))
                        .foregroundColor(Color.colorPrimer)
                    DatePicker("Enter your birthday", selection: $date,in: Date.now...)
                                  .datePickerStyle(GraphicalDatePickerStyle())
                                  .frame(maxHeight: 400)
                             
                    
                }
//                VStack(alignment: .leading){
//                    Text("الأوقات المتاحة")
//                        .font(.custom("ExpoArabic-Book", size: 24))
//                        .foregroundColor(Color.colorPrimer)
//                    
//                }
            }
            .padding(.horizontal, 24.0)
            Spacer()
            Spacer()

            Button{
                
               
               show = true
                 
             } label: {
                 Label("احجز", systemImage: "")
                     .padding(.horizontal, 20.0)
                     .padding(.vertical, 10.0)
                     .font(.custom("ExpoArabic-Bold", size: 16))
                     .foregroundStyle(.white)
                     .background(.colorPrimer)
                     .clipShape(Capsule())
             }
             .navigationDestination(isPresented:$show) {
                 ConfirmBookView()
             }
            Spacer()
            Spacer()
            }
    }
}

#Preview {
    BookView()
}
