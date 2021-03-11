//
//  Datos.swift
//  Instagram clone
//
//  Created by Memo Figueredo on 11/4/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import Foundation
import  SwiftUI
import Firebase
import SDWebImageSwiftUI

class Observer: ObservableObject {
    
    @Published var status = [datatype]()
    
    init() {
        let db =  Firestore.firestore()
        db.collection("status").addSnapshotListener { (snap, err) in
            if err !=  nil{
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documentChanges {
                
                if i.type == .added {
                    
                    let id = i.document.documentID
                    let name = i.document.get("name") as! String
                    let image = i.document.get("image") as! String
                    
                    self.status.append(datatype(id: id, name: name, image: image))
                }
            }
        }
    }
}

struct datatype: Identifiable {
    var id: String
    var name: String
    var image: String
}
