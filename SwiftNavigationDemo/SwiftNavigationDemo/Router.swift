//
//  Router.swift
//  SwiftNavigationDemo
//
//  Created by test on 11/17/24.
//

import Foundation
import SwiftUI

final class Router: ObservableObject{
    
//    @Published var navPath = NavigationPath()
    //@Published var navPath : [Destination] = []
    @Published var stacks: [Destination] = []
    @Published var root: RootFlow = .login
    
    enum Destination: Codable, Hashable{
        case a
        case b
        case c
        case d
    }
    
    enum RootFlow{
        case login
        case deshboard
    }
    
    func navigate(to destination: Destination){
        //navPath.append(destination)
        stacks.append(destination)
    }
    
    func navigateBack(){
        //navPath.removeLast()
        stacks.removeLast()
    }
    
    func navigateToRoor(){
        //navPath.removeLast(navPath.count)
        stacks.removeAll()
    }
    
    func navigateBack(to target: Destination){
        guard !stacks.isEmpty else { return }
        
        while let last = stacks.last, last != target{
            //navPath.removeLast()
            stacks.removeLast()
        }
        
        
    }
    
    func setRoot(_ root: RootFlow){
        self.root = root
        navigateToRoor()
    }
}
