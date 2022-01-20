//
//  Login.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/17/22.
//

import SwiftUI

struct Login: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isUserSelected: Bool = false
    @State private var isPasswordSelected: Bool = false
    
    @State private var showMainPage = false
    @State private var showModal = false
    
    @Environment(\.presentationMode) var presentationMode //dismiss view
    
    var body: some View {
        
        NavigationView{
            
            ZStack(){
                
                VStack(){
                    
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
                        
                        
                        CustomTextField(placeholderText: "email", text: $username, isActive: $isUserSelected)
                            .onTapGesture {
                                isUserSelected = true
                                isPasswordSelected = false
                            }
                        
                        CustomTextField(placeholderText: "password", isSecuredField: true, text: $password, isActive: $isPasswordSelected)
                            .onTapGesture {
                                isUserSelected = false
                                isPasswordSelected = true
                            }
                        
                    } // 2nd vstack
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    
                    VStack(alignment: .trailing){
                        
                        Link("Forgot Password?", destination: URL(string: "https://www.simpleswiftguide.com")!)
                            .font(Font.custom("Kodchasan-Light", size: 14))
                            .foregroundColor(.teal)
                            .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: 0, alignment: .trailing)
                            .padding(EdgeInsets(top: 12, leading: 0, bottom: 15, trailing: 8))
                    
                        // navigationlink using button
                        // NavigationLink(destination: Main()) {
                        // ButtonView()
                        // }.navigationBarTitle("Login")
                        // .navigationBarHidden(true)
                        
                        Button("Sign In") {
                            showMainPage.toggle()
                        }
                        .buttonStyle(CustomButton())
                        .fullScreenCover(isPresented: $showMainPage) {
                            Main()
                        }
                        
                        // presenting view in not full screen mode
                        // .sheet(isPresented: $showMainPage) {
                        // Main()
                        // }
                        
                    } //3rd vstack
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    
                    HStack(alignment: .bottom, spacing: 0){
                        Text("Not a member? ")
                            .font(Font.custom("Kodchasan-Light", size: 14))
                            .padding(.top, 7)
                        
                        NavigationLink(destination: Registration().onAppear{
                            presentationMode.wrappedValue.dismiss()
                        }) {
                         
                            Text("Sign Up Here")
                                .font(Font.custom("Kodchasan-Light", size: 14))
                                .foregroundColor(.teal)
                            
                        }.navigationBarTitle("Sign In")
                         .navigationBarHidden(true)
                         .navigationBarBackButtonHidden(true)
                        
                    } // first hstack
                    
                } // first vstack
                
            } // first zstack
            
        } // navigation view
        .accentColor(.teal)
    } // body

}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
