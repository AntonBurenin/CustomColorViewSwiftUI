//
//  ColorView.swift
//  CustomColorView
//
//  Created by Anton on 23.07.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Color(UIColor(red: CGFloat(redColor / 255),
                      green: CGFloat(greenColor / 255),
                      blue: CGFloat(blueColor / 255),
                      alpha: 1))
            .frame(height: 180)
            .cornerRadius(20)
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 4, trailing: 8))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 0, greenColor: 100, blueColor: 255)
    }
}
