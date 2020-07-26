//
//  CustomSlider.swift
//  CustomColorView
//
//  Created by Anton on 23.07.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

import SwiftUI

struct ColorSetting: View {
    var sliderColor: Color
    
    @Binding var value: Double
    
    @State private var textValue = ""
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 45, height: 31)
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            
            Slider(value: $value, in: 0...255, step: 1) {_ in
                self.textValue = "\(lround(self.value))"
            }
                .accentColor(sliderColor)
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            
            TextField("\(lround(self.value))", text: $textValue) { self.checkTextField() }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 50, height: 40)
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
        }
    }
}

extension ColorSetting {
    private func checkTextField() {
        if var colorComponent = Double(textValue) {
            if colorComponent < 0 {
                colorComponent = 0
            } else if colorComponent > 255 {
                colorComponent = 255
            }
            value = colorComponent
        }
        textValue = "\(lround(value))"
    }
}

struct ColorSetting_Previews: PreviewProvider {
    @State private var sliderValue = 120.5
    static var previews: some View {
        ColorSetting(sliderColor: .red, value: self.init().$sliderValue)
    }
}
