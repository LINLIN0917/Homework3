//
//  ChartView.swift
//  Homework3
//
//  Created by Linlin on 2021/3/27.
//

import SwiftUI

struct ChartView: View {
    @Binding var showChart: Bool
    var body: some View {
        Button(action: {showChart = false}, label: {
            ButtonView(name: "上一頁")
        })
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(showChart: .constant(true))
            .previewLayout(.fixed(width: 896, height: 414))
    }
}
