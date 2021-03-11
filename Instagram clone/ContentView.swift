//
//  ContentView.swift
//  Instagram clone
//
//  Created by Memo Figueredo on 11/2/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct ContentView: View {
    
    

//       init() {
//           UITabBar.appearance().barTintColor = UIColor.blue
//       }
    
    //cambiar color texto y iconos
//    init() {
////        UITabBar.appearance().unselectedItemTintColor = UIColor.black
////        UITabBar.appearance().unselectedItemTintColor = foregroundColor(Color("Color")) as? UIColor
//
//
//    }
    
    //cambiar el background color
//           init() {
//             UITabBar.appearance().backgroundColor = UIColor.red
//             UITabBar.appearance().backgroundImage = UIImage()
//           }
//}
    
    
    
    
    
    var body: some View {
        
       
       TabView{
           
           NavigationView{
               
               Cards()
                   .navigationBarTitle("Instagram")
                   .navigationBarItems(leading: Button(action: {
                       
                   }, label: {
                       
                    Image(systemName: "camera")
                        .font(Font.system(size: 25, weight: .regular))
                          .foregroundColor(Color("Color"))
                    
                       
                   }), trailing:
               
                       HStack{
                           
                           Button(action: {
                               
                           }) {
                               
                               Image(systemName: "livephoto.play")
                            .foregroundColor(Color("Color"))
                               .font(Font.system(size: 30, weight: .regular))
                           }
                           Button(action: {
                               
                           }) {
                               
                               Image(systemName: "paperplane")
                            .font(Font.system(size: 25, weight: .regular))
                            .foregroundColor(Color("Color"))
                           }
                           
                       }
                 
               )
               
               
           }.tabItem {
            
            
               
            Image(systemName: "house")
                
           .font(Font.system(size: 30
            , weight: .light))
        
           }
           
           Text("Find").tabItem {
               
            Image(systemName: "magnifyingglass")
              .font(Font.system(size: 30
                , weight: .medium))
           }
           
           Text("Upload").tabItem {
               
               Image(systemName: "plus.square")
               .font(Font.system(size: 30, weight: .medium))
            
           }
           
           Text("Likes").tabItem {
               
               Image(systemName: "heart")
            .font(Font.system(size: 30, weight: .medium))
           }
           
           Text("Profile").tabItem {
               
               Image(systemName: "person")
              .font(Font.system(size: 30, weight: .medium))
            
           }
        
         
       }
        
//        .accentColor(.white)
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .light)
    }
}


struct Home : View {
    
    var body: some View {
       Text("Home")
    }
}
