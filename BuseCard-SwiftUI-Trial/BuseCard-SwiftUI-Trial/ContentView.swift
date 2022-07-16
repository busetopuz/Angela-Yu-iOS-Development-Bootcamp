//
//  ContentView.swift
//  BuseCard-SwiftUI-Trial
//
//  Created by Buse Topuz on 16.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(.init(red: 0.98, green: 0.82, blue: 0.76, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                Image("vesikalik")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 250)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle()
                    .stroke(Color.white, lineWidth: 5))
                Text("Buse Nur Topuz")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.black)
                    
                Text("iOS Developer")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "+90 552 807 2272", imageName: "phone.fill")
                InfoView(text: "busenurtopuz99@gmail.com", imageName: "envelope.fill")
   
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

