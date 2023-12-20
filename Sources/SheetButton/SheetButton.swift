//
//  SheetButton.swift
//
//
//  Created by Joseph Antonetti on 12/19/23.
//

import SwiftUI

public struct SheetButton<Label : View, Sheet : View>: View {
    
    @ViewBuilder let sheet : () -> Sheet
    @ViewBuilder let label : () -> Label
    
    @State private var isPresented = false
    
    public init(
        sheet: @escaping () -> Sheet,
        label: @escaping () -> Label) {
        self.sheet = sheet
        self.label = label
    }
    
    public var body: some View {
        Button {
            isPresented = true
        } label: {
            label()
        }
        .sheet(isPresented: $isPresented, content: sheet)
    }
}

#Preview {
    SheetButton {
        Text("Sheet")
    } label: {
        Text("Label")
    }
}
