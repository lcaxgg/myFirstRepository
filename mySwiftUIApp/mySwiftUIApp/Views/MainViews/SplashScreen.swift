//
//  ContentView.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/17/22.
//

import SwiftUI

struct SplashScreen: View {
    
//    let backgroundGradient = LinearGradient(
//        gradient: Gradient(colors: [Color.teal, Color.blue]),
//        startPoint: .top, endPoint: .bottom)
    
    @State var isActive:Bool = false
    
    var body: some View {
        
        VStack{
            
                if self.isActive{
                    Login()
                }else{
                    Image("yoga_black")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.0, height: 100.0)
                        .padding(15)
                    
                    Group{
                        Text("SOUL ")
                            .foregroundColor(Color.black) +
                        Text("SAVVY")
                            .foregroundColor(Color.teal)
                    
                    }.font(Font.custom("Comfortaa-VariableFont_wght", size: 25))
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
    
}
