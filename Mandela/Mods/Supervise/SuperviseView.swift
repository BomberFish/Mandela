//
//  SuperviseView.swift
//  Mandela
//
//  Created by Hariz Shirazi on 2023-01-26.
//

import SwiftUI

struct SuperviseView: View {
    var body: some View {
        VStack {
            Button{
                Supervise()
            }
            label: {
                Image(systemName: "lock.iphone")
                    .tint(.accentColor)
                    .foregroundColor(.accentColor)
                Text("Supervise")
            }
            .controlSize(.large)
            .tint(.accentColor)
            .buttonStyle(.bordered)
            
            Button{
                Unsupervise()
            }
            label: {
                Image(systemName: "lock.open.iphone")
                    .tint(.accentColor)
                    .foregroundColor(.accentColor)
                Text("Unsupervise")
            }
            .controlSize(.large)
            .tint(.accentColor)
            .buttonStyle(.bordered)
        }
            .navigationTitle("Supervise")
    }
}

struct SuperviseView_Previews: PreviewProvider {
    static var previews: some View {
        SuperviseView()
    }
}
