//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Maxwell Hu on 2/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            //Top
            HStack {
                Image(systemName: "chevron.down")
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
                Text("**toon tunes**")
                    .font(.subheadline)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName:"ellipsis")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
            Spacer()
            
            //Album
            Image("Cover")
                .resizable()
                .scaledToFit()
                .frame(width: 360, height: 360)
                .cornerRadius(10)
            
            Spacer()
            
            //Song Info
            HStack{
                VStack(alignment: .leading) {
                    Text("How Far I'll Go")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Auli'i Cravalho, Disney")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                Spacer()
                Image(systemName: "plus.circle")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
            
            
            //Slider
            VStack{
                Slider(value: .constant(0.1), in: 0...1)
                    .accentColor(.white)
                
                HStack{
                    Text("0:20")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Spacer()
                    Text("2:23")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal, 20)
            .padding(.top)
            
            //Controls
            HStack{
                Image(systemName: "shuffle")
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "backward.end.fill")
                        .font(.title)
                        .foregroundColor(.white)
                Spacer()
                Image(systemName: "pause.circle.fill")
                    .font(.system(size: 60))
                        .foregroundColor(.white)
                Spacer()
                Image(systemName: "forward.end.fill")
                        .font(.title)
                        .foregroundColor(.white)
                Spacer()
                Image(systemName: "repeat")
                        .font(.title)
                        .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            //Bottom
            HStack{
                Image(systemName: "tv.and.hifispeaker.fill")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                Image(systemName: "list.bullet.below.rectangle")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                    .padding(.leading, 10)
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
        }
        .padding(.bottom, 10)
        
        .background(LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2") ]), startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
        //.preferredColorScheme(.dark)
}

