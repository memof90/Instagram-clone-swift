//
//  Cards.swift
//  Instagram clone
//
//  Created by Memo Figueredo on 11/4/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI


struct Cards: View {
    
    @ObservedObject var observed = Observer()
    
    var body: some View {
      
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        
                        ForEach(observed.status) {i in
                            StatusCard(NombreImagen: i.image)
                                .padding(.leading, 10)
                        }
                        
                    }
                }
                
                ForEach(0..<8){_ in
                  PostCard(imagenUsuario: "", usuario: "", id: "")
                    
                }
            }
        }.animation(.spring())
    }
}



struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
       
    }
}

struct StatusCard : View {
    
    var NombreImagen = ""
    
    var body: some View {
        
         AnimatedImage(url: URL(string: NombreImagen))
//        Image(NombreImagen)
            .resizable()
        .frame(width: 60, height: 60)
            .clipShape(Circle())
    }
}

struct PostCard : View {
    
    var imagenUsuario = ""
    var usuario  = ""
    var id = ""
    
    var body: some View {
        
        VStack(alignment: .leading,content:{
        
            HStack{
                Image("opcion")
                .resizable()
            .font(Font.system(size: 25, weight: .thin))
                .clipShape(Circle())
                .frame(width: 30, height: 30)
                Text("User")
                Spacer()
                Button(action: {
                    
                }) {
                    Image("menu")
                    .resizable()
                    .frame(width: 15, height: 15)
                }.foregroundColor(Color("Color"))
            }
            
            Image("opcion").resizable().frame(height: 350)
            
            HStack{
                
                Button(action: {
                    
                }) {
                    Image(systemName: "message")
                    .resizable()
            .font(Font.system(size: 25, weight: .thin))
                    .frame(width: 25, height: 25)
                }.foregroundColor(Color("Color"))
                
                Button(action: {
                    
                }) {
                    Image(systemName:"heart")
                    .resizable()
            .font(Font.system(size: 25, weight: .thin))
                    .frame(width: 25, height: 25)
                 
                }.foregroundColor(Color("Color"))
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "bookmark")
                    .resizable()
                     .font(Font.system(size: 25, weight: .thin))
                    .frame(width: 25, height: 25)
                }.foregroundColor(Color("Color"))
            }.padding(.top, 8)
            
            Text("20 Me gusta")
                .padding(.top, 8)
            Text("Ver los 100 Comentarios")
        }).padding(8)
    }
}

//agregar adwebimage
