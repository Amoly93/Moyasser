//
//  HomeView.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var allData = ViewModel()
    @State private var viewIndex = 0
    @State var checkState: Bool = false
    init() {
        // Segmented control colors
        UISegmentedControl.appearance().backgroundColor = .white
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.colorYellow)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.colorPrimer], for: .normal)
     
    }
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 17.0){
                Text("أهلا")
                    .font(.custom("ExpoArabic-Bold", size: 24))
                    .foregroundStyle(Color.colorYellow)
                
                Text("نتمنى أن تكون بخير")
                    .font(.custom("ExpoArabic-Bold", size: 18))
                    .foregroundStyle(Color.colorRed)
            }
            
            Picker(selection: $viewIndex, label: Text("")) {
                Text("التشخيص").tag(0)
                    .font(.custom("ExpoArabic-Book", size: 16))
                Text("الاستشارات").tag(1)
                    .font(.custom("ExpoArabic-Book", size: 16))
                Text("مراكز التأهيل").tag(2)
                    .font(.custom("ExpoArabic-Book", size: 16))
            }.pickerStyle(SegmentedPickerStyle())
            if viewIndex == 0 {
DiagnosisView()
            } else if viewIndex == 1 {
                ScrollView{
                    ForEach(allData.doctor, id: \.id) { x in
                        DoctorRow(doctor: x)
                    }
                }
                }else if viewIndex == 2 {
                    ScrollView{
                        ForEach(allData.center, id: \.id) { x in
                            RehabilitationCenterRow(centerData: x)
                        }
                    }
                    }
        }
        .padding(.horizontal, 24.0)
        .onAppear(){
            self.allData.getDoctorData()
            self.allData.getCenterData()
        
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    HomeView()
}
