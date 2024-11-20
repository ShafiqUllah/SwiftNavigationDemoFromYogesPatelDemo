import SwiftUI

struct AView:View {
    
    @EnvironmentObject var router :Router
    
    var body: some View {
        VStack{
            Button("B"){
                router.navigate(to: .b)
            }
        }.navigationTitle("A")
    }
}

struct BView:View {
    @EnvironmentObject var router :Router
    
    var body: some View {
        VStack{
            Button("C"){
                router.navigate(to: .c)
            }
        }.navigationTitle("B")
    }
}

struct CView:View {
    @EnvironmentObject var router :Router
    
    var body: some View {
        VStack{
            Button("D"){
                router.navigate(to: .d)
            }
        }.navigationTitle("C")
    }
}

struct DView: View {
    @EnvironmentObject var router :Router
    var body: some View {
        VStack{
            
            Button("Previous - C"){
                router.navigateBack()
            }
            
            Button("Go Root"){
                router.navigateToRoor()
            }
            
            Button("Back to B"){
                router.navigateBack(to: .b)
            }
            
            Button("New Root E"){
                router.setRoot(.deshboard)
            }
        }
    }
}

struct EView:View {
    @EnvironmentObject var router :Router
    var body: some View {
        VStack{
            Text("E")
        }
        .navigationTitle("Welcome!!! 🔥")
    }
}
