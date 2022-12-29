//
//  CheckboxField.swift
//  iHotel
//
//  Created by Ping on 24/10/2022.
//

import SwiftUI

struct CheckboxField: View {
    let id: String
    let label: String
    let size: CGFloat
    let color: Color
    let textSize: Int

    @Binding var isMarked: Bool /// Binding here!
    
    init(
    id: String,
    label:String,
    size: CGFloat = 12,
    color: Color = Color.black.opacity(0.6),
    textSize: Int = 14,
    isMarked: Binding<Bool>
    ) {
        self.id = id
        self.label = label
        self.size = size
        self.color = color
        self.textSize = textSize
        self._isMarked = isMarked /// to init, you need to add a _
    }
    
    
    var body: some View {
        Button(action:{
            self.isMarked.toggle() /// just toggle without closure
        }) {
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: self.isMarked ? "checkmark.square" : "square")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                Text(label)
                .font(Font.system(size: size))
                .foregroundColor(Color.black.opacity(0.8))
                Spacer()
            }
            .foregroundColor(self.color)
        }
        .foregroundColor(Color.white)
    }
}



struct CheckboxField_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxField(id: "Completed", label: "Over 7.0", isMarked: .constant(true))
    }
}



