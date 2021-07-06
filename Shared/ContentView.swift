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
                        Spacer()
                        
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
    
            
            }.padding(.bottom, 110.0)
            
        
//NavBar Bottom
            VStack{
                Spacer()
            HStack(){
                
                
                
                
                Button(action: {}) {
                VStack{
                    
                    Image(systemName: "house")
                    .foregroundColor(Color.white)
                    Text("Home")
                    .foregroundColor(Color.white)
            }
                }
                Spacer()
                Button(action: {}) {
                VStack{
                    Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.white)
                    Text("Search")
                    .foregroundColor(Color.white)
            }
                }
                Spacer()

                Button(action: {}) {
                VStack{
                    Image(systemName: "bubble.right")
                    .foregroundColor(Color.white)
                    Text("Inbox")
                    .foregroundColor(Color.white)
            }
                }
                Spacer()

                Button(action: {}) {
                VStack{
                    Image(systemName: "person")
                    .foregroundColor(Color.white)
                    Text("Settings")
                    .foregroundColor(Color.white)
            }
                }
            
            
            
            
            
            
            
            
            
            
            }//Hstack
            }//VStack
        }//ZStack
                    
        
    }//View
    
}//View
                
                
                                


