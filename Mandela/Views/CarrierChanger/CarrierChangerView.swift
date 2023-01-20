//
//  CarrierChangerView.swift
//  Mandela
//
//  Created by Hariz Shirazi on 2023-01-20.
//

import SwiftUI

struct CarrierChangerView: View {
    var body: some View {
        VStack {
            Button("Change the Carrier Name!", action: OverwriteCharger)
                .controlSize(.large)
                .tint(.green)
                .buttonStyle(.bordered)
        }
        .navigationTitle("Change Carrier Name")
    }
    
    // MARK: - Prompt user for Name
    
    func NamePrompt() {
        let alert = UIAlertController(title: "Custom carrier", message: "Enter a string to use as the custom carrier.", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "pwned."
        })
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            let text = alert.textFields![0].text!
            SetName(newName: text)
        }))
    }
}
struct CarrierChangerView_Previews: PreviewProvider {
    static var previews: some View {
        CarrierChangerView()
    }
}
