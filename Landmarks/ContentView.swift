//
//  ContentView.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)   // 위 공간여백 제거
                .frame(height: 300) // 높이 값 지정
            
            CircleImage()
                .offset(y: -130)    // x, y값 위치 조정
                .padding(.bottom, -130) // 아래 여백 조정
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()    // Spacer 기준 양 끝으로 맞추기
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()   // 줄 생성
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()  // 박스와 텍스트간 여백설정
            
            Spacer()    // Spacer 기준 양 끝으로 맞추기
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
