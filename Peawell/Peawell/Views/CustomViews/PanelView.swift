//
//  PanelView.swift
//  Peawell
//
//  Created by Dennis on 16.04.23.
//

import SwiftUI

//  needs to piggyback on UIKit to get system colours
extension Color {
    static let secondarySystemBackground =
    Color(uiColor: .secondarySystemBackground)
    static let systemFill =
    Color(uiColor: .systemGray)
}

//  the whole view is the medication cell part
struct PanelView<V: View>: View { var icon: V; var doseAmnt: String; var doseUnit: String; var title: String
    var body: some View {
        VStack {
            HStack {
                Text(doseAmnt)
                    .font(.title3)
                    .foregroundColor(Color.secondary)
                Text(doseUnit)
                    .font(.title3)
                    .foregroundColor(Color.secondary)
                Spacer()
                icon
            }
            Text(title)
                .font(.title3)
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(Color.secondarySystemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct PanelView_Previews: PreviewProvider {
    static var previews: some View {
        //PanelView()
        //  the panels itself aren't as interesting, so we preview the whole main page
        MainView()
    }
}
