//
//  Doctors.swift
//  MoyasserApp
//
//  Created by amal badr on 16/01/2024.
//

import SwiftUI

struct Doctors: View {
    @ObservedObject var allData = ViewModel()
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                
                HStack {
                    Spacer()
                    VStack(spacing: 6.0){
                        Text("التوصيات المقترحه")
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
            ScrollView{
                ForEach(allData.doctor, id: \.id) { x in
                    DoctorRow(doctor: x)
                }
            }
            .padding(.horizontal, 24.0)
        }
        .onAppear(){
            self.allData.getDoctorData()
            self.allData.getCenterData()
        }

    }
}

#Preview {
    Doctors()
}
