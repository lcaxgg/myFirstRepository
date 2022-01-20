//
//  trybutton.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/18/22.
//

import Foundation
import SwiftUI

struct ButtonView: View {
var body: some View {
    Text("Sign In")
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 40, idealHeight: 40, maxHeight: 40)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .background(Color.teal)
        .foregroundColor(.white)
        .clipShape(Capsule())
 }
}
