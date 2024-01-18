//
//  DiagnosisQuestionPageThird.swift
//  MoyasserApp
//
//  Created by amal badr on 15/01/2024.
//

import SwiftUI

struct DiagnosisQuestionPageThird: View {
 
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
         
                HStack {
                    Spacer()
                    VStack(spacing: 6.0){
                        Text("توجيهات المرحلة الثانية")
                            .font(.custom("ExpoArabic-Bold", size: 24))
                            .foregroundColor(Color.colorYellow)
                        Text("التشخيص بالرؤية الحاسوبية")
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
                    .font(.custom("ExpoArabic-Book", size: 24))
                    .foregroundColor(Color.colorPrimer)
                Text(" ● التأكد من وضع الكاميرا في مكان ثابت و يظهر به الطفل بشكل واضح وبعيد عن متناول يد الطفل.")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                Text(" ● ان تكون جودة التصوير مناسبة وواضحة.")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                Text(" ● ان يظهر الطفل فقط أمام الكاميرا.")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                Text( "● وضع الطفل في كرسي و امامه طاولة ووضع بعض الألعاب على الطاولة(مثل السيارة ، التركيبة ،كرة،صور..الخ)")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                Text(" ● ان يظهر الطفل فقط أمام الكاميرا.")
                    .font(.custom("ExpoArabic-Book", size: 16))
                    .foregroundColor(Color.colorMain)
                
            }

            .padding(.horizontal, 24.0)
            Spacer()
            NavigationLink{
            
           
                FinalPage()
                 
             } label: {
                 Label("ابدا", systemImage: "")
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
}
struct FinalPage: View {
    @State private var showCamera = false
    @State private var show = false
    @State private var selectedImage: UIImage?
    @State var image: UIImage?
    var body: some View {
        
        VStack(spacing: 100.0) {
            VStack{
                if let selectedImage{
                    Image(uiImage: selectedImage)
                        .resizable()
                        .scaledToFit()
                }
                
                Button("Open camera") {
                    self.showCamera.toggle()
                    
                }
                .fullScreenCover(isPresented: self.$showCamera) {
                    accessCameraView(selectedImage: self.$selectedImage)
                    
                }
            }
            NavigationLink{
            
           
//                ResultsView()
                 
             } label: {
                 Label("انهاء", systemImage: "")
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
        .padding(.horizontal, 24.0)
        .navigationBarBackButtonHidden(true)
            
                     

        
    }
}
struct accessCameraView: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = true
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(picker: self)
    }
}

// Coordinator will help to preview the selected image in the View.
class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var picker: accessCameraView
    
    init(picker: accessCameraView) {
        self.picker = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        self.picker.selectedImage = selectedImage
        self.picker.isPresented.wrappedValue.dismiss()
    }
}
#Preview {
    DiagnosisQuestionPageThird()
}
