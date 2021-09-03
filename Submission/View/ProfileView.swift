//
//  ProfileView.swift
//  Submission
//
//  Created by rifat khadafy on 20/04/20.
//  Copyright © 2020 rifat khadafy. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Image("me")
                .frame(width: 200.0, height: 200.0)
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color.white, lineWidth: 4))
                .offset(x: 0, y: -180)
                .padding(.bottom, -175)
            
            Text("Rifat Khadafy")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 8.0)
            Text("rifat.khadafy@gmail.com")
                .font(.body)
                .fontWeight(.light)
                .padding(.bottom, 6.0)
            Text("Depok, Indonesia")
                .font(.system(size:18))
                .fontWeight(.light)
            
            Text("About")
                .font(.headline)
                .padding(.vertical, 14.0)
            
            Text("Pelajar di salah satu SMK di Depok")
            
            Spacer()
        }
        .navigationBarTitle(Text("Profile"), displayMode: .inline)
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
