//
//  Registration.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/19/22.
//

import SwiftUI
import FirebaseAuth
import FirebaseDatabase

struct Registration: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isNameSelected: Bool = false
    @State private var isEmailSelected: Bool = false
    @State private var isPasswordSelected: Bool = false
    
    @State private var showMainPage = false
    @State private var showLoginPage = false
    
    @State var progressValue: Float = 0.0
    @State private var progress = 0.0
    
    var ref = Database.database(url: "https://mydemoapp-c8a2d-default-rtdb.asia-southeast1.firebasedatabase.app/").reference(withPath: "users")
    
    @Environment(\.presentationMode) var presentationMode //dismiss view
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text(makeAttributedString())
                .font(Font.custom("Kodchasan-Bold", size: 30))
                .padding(.leading, 8)
                .padding(.bottom, 25)
            
            CustomTextField(placeholderText: "full name", text: $name, isActive: $isNameSelected)
                .onTapGesture {
                    isNameSelected = true
                    isEmailSelected = false
                    isPasswordSelected = false
                }
            
            CustomTextField(placeholderText: "email", text: $email, isActive: $isEmailSelected)
                .onTapGesture {
                    isNameSelected = false
                    isEmailSelected = true
                    isPasswordSelected = false
                }
            
            CustomTextField(placeholderText: "password", isSecuredField: true, text: $password, isActive: $isPasswordSelected)
                .onTapGesture {
                    isNameSelected = false
                    isEmailSelected = false
                    isPasswordSelected = true
                }
                .padding(.bottom, 5)
            
            //            Button("Sign Up") {
            //                print("working")
            //                showMainPage.toggle()
            //
            //                signUp(email: email, password: password, handler: <#AuthDataResultCallback#>)
            //            }
            //            .buttonStyle(CustomButton())
            //            //            .fullScreenCover(isPresented: $showMainPage) {
            //            //                Main()
            //            //            }
            //            .padding(.bottom, 70)
            
            Button(
                action: {
                    signUp()
                }
            ) {
                Text("Sign Up")
            }
            .buttonStyle(CustomButton())
            .padding(.bottom, 80)
            
        }//first vstack
        .padding(.leading, 20)
        .padding(.trailing, 20)
        
    }//body
    
    func signUp() {
    
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
           // ref.child("users").child().setValue("try")
            if error != nil {
                print(error!)
            } else {
                print("signUp with email")
                
            }
        }
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
