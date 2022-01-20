//
//  CustomTextField.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/17/22.
//

import Foundation
import SwiftUI

struct CustomTextField: View {
    ///add placeholder text if needed, default - no text
    var placeholderText: String = ""
    ///use it for password text
    var isSecuredField = false

    @Binding var text: String
    //The selection state
    @Binding var isActive: Bool

    @State private var hidePass: Bool = true

    var body: some View {
        HStack {

            if placeholderText == "full name"{
                Image(systemName: "person")
                    .foregroundColor(isActive ? Color.teal : Color.gray)
                    .frame(width: 30, height: 30)
                    .padding(.leading)
            }else if placeholderText == "email"{
                Image(systemName: "envelope")
                    .foregroundColor(isActive ? Color.teal : Color.gray)
                    .frame(width: 30, height: 30)
                    .padding(.leading)
            }else {
                Image(systemName: "key")
                    .foregroundColor(isActive ? Color.teal : Color.gray)
                    .frame(width: 30, height: 30)
                    .padding(.leading)
            }
            
            ZStack {
                TextField(placeholderText, text: $text)
                    .opacity((isSecuredField && hidePass) ? 0 : 1)

                SecureField(placeholderText, text: $text)
                    .opacity((isSecuredField && hidePass) ? 1 : 0)
            }
            .autocapitalization(.none)
            .disableAutocorrection(true)
            //Text color
            .foregroundColor(Color.black)
          //r  .padding(.horizontal)

            Spacer()

            //Eye icon button
            if isSecuredField {
                Button (action: {
                    hidePass.toggle()
                }) {
                    Image(systemName: hidePass ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                        .frame(width: 32, height: 32)
                        .padding(.trailing)
                }
            }
        }
        //Height, background view, foreground color and border
        .frame(maxWidth: .infinity, maxHeight: 40)
        .background(RoundedRectangle(cornerRadius: 40))
        .foregroundColor(Color.white.opacity(0.2))
        .overlay(RoundedRectangle(cornerRadius: 40).stroke(isActive ? Color.teal : Color.gray, lineWidth: 1))
       
    }
}
