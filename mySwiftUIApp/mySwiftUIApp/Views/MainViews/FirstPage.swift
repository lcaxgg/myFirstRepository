//
//  FirstPage.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/19/22.
//

import SwiftUI
import FirebaseDatabase

struct FirstPage: View {
    
    @State private var fullname: String = ""
    @State private var showMainPage = false
    @State private var isUserSelected: Bool = false
    
    @State var value = ""
    
    var body: some View {
      
        NavigationView{
            
            VStack(alignment: .leading){
                
                Group{
                    Image("yoga_teal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30.0, height: 30.0)
                    
                    Text("HELLO ")
                        .font(Font.custom("Kodchasan-Bold", size: 30))
                    +
                    Text("THERE")
                        .font(Font.custom("Kodchasan-Bold", size: 30))
                        .foregroundColor(Color.teal)
                    
                    Text("Sign in to continue")
                        .font(Font.custom("Kodchasan-Light", size: 17))
                        .opacity(0.7)
                        .padding(.bottom, 25)
                    
                }
                .padding(.leading, 8)
                
//                CustomTextField(placeholderText: "enter your name here", isActive: $isUserSelected, text: $fullname)
//                    .onTapGesture {
//                        isUserSelected = true
//
//                    }
           
                Button("Proceed") {
                //    showMainPage.toggle()
                    let ref = Database.database(url: "https://mydemoapp-c8a2d-default-rtdb.asia-southeast1.firebasedatabase.app/").reference(withPath: "samplepath")
                    
                    if fullname != "lcaxgg"{
                        print("not equal")
                    }else{
                        ref.child("samplechild").child("samplekey").setValue("\(fullname)")
                    }
                    
                print("tapped")
                }
                .padding(.bottom, 80)
                .buttonStyle(CustomButton())
//                .fullScreenCover(isPresented: $showMainPage) {
//                    Main()
//                }
                
            }//vstack
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
        }//navigation view
        .accentColor(.teal)
   
    }//body
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
