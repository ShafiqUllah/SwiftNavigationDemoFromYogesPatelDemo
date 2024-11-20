//
//  SwiftNavigationDemoApp.swift
//  SwiftNavigationDemo
//
//  Created by test on 11/17/24.
//

import SwiftUI

@main
struct SwiftNavigationDemoApp: App {
    
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.stacks) {
                
                if router.root == .login{
                    AView()
                        .navigationDestination(for: Router.Destination.self) { destination in
                            router.destination(for: destination)
                        }
                }else{
                    EView()
                }
               
            }
            .environmentObject(router)
            
        }
    }
}
