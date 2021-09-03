//
//  FoodView.swift
//  Submission
//
//  Created by rifat khadafy on 19/04/20.
//  Copyright © 2020 rifat khadafy. All rights reserved.
//

import Foundation
import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct FoodView: View {
    var food : Food
    var body: some View {
        HStack(){
            WebImage(url: URL(string: food.image))
                .resizable()
                .placeholder(Image("profile"))
                .indicator(.activity)
                .animation(.easeInOut(duration: 0.5))
                .transition(.fade)
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .trailing)
            VStack(alignment: .leading){
                Text(food.name)
                    .multilineTextAlignment(.leading)
                Text(food.desc)
                    .font(.system(size : 12))
                    .multilineTextAlignment(.leading)
            }
            
        }
        
    }
    
}
