//
//  ViewModel.swift
//  ResortBrowser
//
//  Created by James Baker on 3/23/23.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
    @Published var list = [Resorts]()
    
    func getData() {
        let db = Firestore.firestore()
        
        //Read the documents at a specific path
        db.collection("Resorts").getDocuments { snapshot, error in
            
            //Check for errors
            if error == nil {
                //No Errors
                if let snapshot=snapshot {
                    
                    //Update the list property in the main thread
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { d in
                            
                            //Create the resort item for each documetn returned
                            return Resorts(id: d.documentID,
                                           name: d["name"] as! String,
                                           image: d["image"] as! String,
                                           description: d["description"] as! String,
                                           city: d["city"] as! String,
                                           country: d["country"] as! String,
                                           category: d["category"] as! Category.RawValue,
                                           airport: d["airport"] as! String,
                                           url: d["url"] as! String)
                        }
                    }
                }
            }
            else {
                //Handle the error
                print("Error found @%", error ?? "")
            }
        }
    }
}
