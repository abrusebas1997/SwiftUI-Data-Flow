//
//  SliderView.swift
//  Swift Demo 6
//
//  Created by Sebastian Abarca on 5/8/20.
//  Copyright © 2020 Foodonate. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @Binding var value:Double
    var label:String
    var body: some View {
        VStack {
            Slider(value: $value, in: 0...255, step:1)
            Text("\(label): \(Int(value))")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), label: "Label").padding()
    }
}
