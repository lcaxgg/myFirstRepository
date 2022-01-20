//
//  CustomButton.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/17/22.
//

import Foundation
import SwiftUI

struct CustomButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            //.frame(width: 10.0, height: 40.0)
            .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 40, idealHeight: 40, maxHeight: 40)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .background(Color.teal)
            .foregroundColor(.white)
            .clipShape(Capsule())

    }
}

    







