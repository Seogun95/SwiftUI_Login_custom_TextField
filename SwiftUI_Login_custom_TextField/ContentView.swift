//
//  ContentView.swift
//  SwiftUI_Login_custom_TextField
//
//  Created by Seogun Kim on 2021/06/14.
//


import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView{
            
            Login()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
