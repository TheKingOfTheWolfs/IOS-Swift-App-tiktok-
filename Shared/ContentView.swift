//
//  ContentView.swift
//  Shared
//
//  Created by Yury Dzhishkariani on 7/4/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        
        VStack{
            Home()
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
            
    }
}


struct Home: View {
    var body: some View {
    ZStack{
        Color.black.ignoresSafeArea()
//        Image("testpic")
        
        HStack{
            Spacer()
            VStack(spacing: 8){
        Spacer()
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "person")
                .foregroundColor(Color.white)
            Text("1021")
        }).padding()
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "heart").foregroundColor(Color.white)
            Text("1021")
        }).padding()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "message").foregroundColor(Color.white)
            Text("1021")
        }).padding()
                Spacer()
      }.padding(5)
        }
        
        VStack(spacing: 0.0){
            Spacer()
            
            HStack(spacing: 0){
               
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "house")
                    .foregroundColor(Color.white)
            })
                Spacer(minLength: 0)
                
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass").foregroundColor(Color.white)
            })
                Spacer(minLength: 0)
                
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "message").foregroundColor(Color.white)
            })
            }.padding(.horizontal)
        }
        
    }
    }
}
