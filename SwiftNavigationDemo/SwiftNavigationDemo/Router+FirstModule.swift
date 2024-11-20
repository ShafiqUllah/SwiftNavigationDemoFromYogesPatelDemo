//
//  Router+FirstModule.swift
//  SwiftNavigationDemo
//
//  Created by test on 11/17/24.
//

import SwiftUI

extension Router{
    
    @ViewBuilder
    func destination(for flow: Destination)->some View{
        switch flow{
        case .a:
            AView()
        case .b:
            BView()
        case .c:
            CView()
        case .d:
            DView()
        }
    }
}
