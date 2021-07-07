//
//  ContentView.swift
//  Shared
//
//  Created by Yury Dzhishkariani on 7/4/21.
//

import SwiftUI
import UIKit
import AVKit

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
    
    @State var index = 0
    @State var top = 0
    @State var data = [
        Video(id: 0, player: AVPlayer(url: URL(string: "https://www.youtube.com/watch?v=uVU37ZY3noU&ab_channel=AzzeGang")!), replay: false),
        Video(id: 1, player: AVPlayer(url: URL(string: "https://www.youtube.com/watch?v=3bCKiNxPdt4&ab_channel=PeopleAreAwesome")!), replay: false),
        Video(id: 2, player: AVPlayer(url: URL(string: "https://www.youtube.com/watch?v=l5GQIQpI7Zk&ab_channel=PeopleAreAwesome")!), replay: false),
    ]
    
    
    
    var body: some View {
        
      
        
        //Background
        ZStack{
            Color.black
                           .ignoresSafeArea()
//            PlayerView(data: self.$data)
            
            
            
            
//NavBar rightSide
            VStack{
                HStack{
                    VStack{
                        
                        HStack{
                            
                    Button(action: {
                        self.top = 0
                    }) {
                        Text("Following").foregroundColor(self.top == 0 ? .white : Color.white.opacity(0.45)).fontWeight(self.top == 0 ? .bold : .none)
                    }.padding(.vertical)
                    Button(action: {
                        self.top = 1
                    }) {
                        Text("For You").foregroundColor(self.top == 1 ? .white : Color.white.opacity(0.45)).fontWeight(self.top == 1 ? .bold : .none)
                        
                    }
                            
                        
                        }
                        .padding(.leading, 120.0)
                        Spacer()
                    }
                    
                    Spacer()
                    VStack(spacing: 35){
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image("testpic")
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
    
            
//            }.padding(.bottom, 110.0)
            
        
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
//            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
//            .padding(.bottom,(UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 5)
        
    }//View
//        .background(Color.black.edgesIgnoringSafeArea(.all))
//        .edgesIgnoringSafeArea(.all)
}//View
}



struct PlayerView : View {
    
    @Binding var data : [Video]
    
    var body: some View {
        VStack {
            ForEach(self.data) {i in
                Player(player: i.player).frame(width: UIScreen.main.bounds.width,
                           height:UIScreen.main.bounds.height)//full screensize
            }
                
            
        }
    }
}

    
    struct Player : UIViewControllerRepresentable {
        
        var player : AVPlayer
        
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
        view.videoGravity = .resizeAspectFill
            return view
        }
        func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
            
        }
    }


class Host : UIHostingController<ContentView> {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}


struct Video : Identifiable {
    
    var id : Int
    var player : AVPlayer
    var replay : Bool
}

//struct PlayerScrollView : UIViewRepresentable {
//
//    @Binding var data : [Video]
//
//    func makeUIView(context: Context) -> UIScrollView {
//        let view = UIScrollView()
//
//        let childView = UIHostingController(rootView:  PlayerView(data: self.$data))
//
//        //each children occupies one full screen
//        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//
//        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//
//        view.addSubview(childView.view)
//        view.showsVerticalScrollIndicator = false
//        view.showsHorizontalScrollIndicator = false
//        //to ignore safe area...
//        view.contentInsetAdjustmentBehavior = .never
//        view.isPagingEnabled = true
//
//
//        return view
//
//
//    }
//
//    func updateUIView(_ uiView: UIScrollView, context: Context) {
//
//    }
//}















                
                
                                


