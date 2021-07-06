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
        
        //Background
    ZStack{
        Color.black.ignoresSafeArea()
//        Image("testpic")
        
        //NavBar rightSide
        
        VStack{
            
            HStack{
                Spacer()
                VStack(spacing: 35){
                    
                
                Button(action: {
                    
                }) {
                    Image("profile")
                        .renderingMode(.original).resizable().frame(width: 55, height: 55).clipShape(Circle())
          }
                Button(action: {
                    
                }) {
                    
                    VStack(spacing: 8){
                    Image(systemName:"suit.heart.fill").foregroundColor(Color.white).font(.title)
                        Text("22k").foregroundColor(.white)
                
            }
          }
                Button(action: {
                    
                }) {
                    
                    VStack(spacing: 8){
                    Image(systemName:"message.fill").foregroundColor(Color.white).font(.title)
                        Text("22k").foregroundColor(.white)
                
            }
          }
        }
            }
        //NavBar Pannel bottom page
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
        .padding(.bottom, 55)
    }
}
}
