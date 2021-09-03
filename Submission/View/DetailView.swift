//
//  DetailView.swift
//  Submission
//
//  Created by rifat khadafy on 20/04/20.
//  Copyright © 2020 rifat khadafy. All rights reserved.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct DetailView: View {
    var food : Food
    var body: some View {
        
        VStack(alignment: .center){
            WebImage(url: URL(string: food.image))
                .resizable()
                .placeholder(Image(systemName: "profile.png"))
                .indicator(.activity)
                .animation(.easeInOut(duration: 0.5))
                .transition(.fade)
                .scaledToFit()
                .frame(width: 300, height: 300, alignment: .trailing)
            
            Text(food.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.yellow)
            
            HStack(){
                VStack(){
                    Text(food.likes)
                        .font(.system(size : 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color.red)
                    
                    Text("Likes")
                        .fontWeight(.light)
                }
                Spacer()
                VStack{
                    Text("Rp " + food.price)
                        .font(.system(size : 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color.red)
                    Text("Price")
                        .fontWeight(.light)
                }
            }
            .padding(.vertical, 20.0)
            .frame(width: 280.0)
            
            Text("Description")
                .fontWeight(.regular)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .leading, .bottom])
            
            Text(food.desc)
                .font(.system(size : 20))
                
                .fontWeight(.medium)
                .padding()
            Spacer()
        }
        .navigationBarTitle(Text("Detail"), displayMode: .inline)
        
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(food: foods[0])
    }
}
