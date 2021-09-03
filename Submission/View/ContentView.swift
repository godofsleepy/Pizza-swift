//
//  ContentView.swift
//  Submission
//
//  Created by rifat khadafy on 16/04/20.
//  Copyright © 2020 rifat khadafy. All rights reserved.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct ContentView: View {
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationView{
            List(foods.indices){i in
                NavigationLink(destination: DetailView(food: foods[i])){
                    FoodView(food: foods[i])
                }
            }
            .padding(.horizontal, 8.0)
            .navigationBarTitle("List")
            .navigationBarItems(trailing:
                NavigationLink(destination: ProfileView(), tag: 1,selection: $selection){
                    Button("Profile",action: {
                        self.selection = 1
                    })
                
                }
            )
               
            }
        }
        
    }
   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
