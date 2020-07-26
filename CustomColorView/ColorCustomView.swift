//
//  ContentView.swift
//  CustomColorView
//
//  Created by Anton on 23.07.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

import SwiftUI

struct ColorCustomView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            ColorView(redColor: redValue,
                      greenColor: greenValue,
                      blueColor: blueValue)
            ColorSetting(sliderColor: .red, value: $redValue)
            ColorSetting(sliderColor: .green, value: $greenValue)
            ColorSetting(sliderColor: .blue, value: $blueValue)
            Spacer()
        }
    }
}

struct ColorCustomView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCustomView()
    }
}
