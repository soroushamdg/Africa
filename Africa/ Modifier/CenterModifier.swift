//
//  CenterModifier.swift
//  Africa
//
//  Created by Soro on 2022-10-06.
//

import SwiftUI

struct CenterModifier: ViewModifier{
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
