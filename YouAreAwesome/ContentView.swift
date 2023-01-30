//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Charley Conroy on 1/8/23.
// <3 Brenden

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var messageNumber = 0
    @State private var imageNumber = 0
    var body: some View {
        //        ZStack {
        //            Rectangle()
        //                .fill(Gradient(colors: [.white, .blue, .red]))
        //                .ignoresSafeArea()
        
        //        GeometryReader {geometry in
        VStack (spacing: 0){
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            //            Image(systemName: "speaker.wave.2", variableValue: 0.0)
            //                .resizable()
            //                .scaledToFit()
            //                .symbolRenderingMode(.multicolor)
            //                .padding()
            //                .background(Color(hue: 0.521, saturation: 0.299, brightness: 0.958))
            //                .cornerRadius(30)
            //                .shadow(radius: 30, x: 20, y: 20)
            //                .overlay(RoundedRectangle(cornerRadius: 30).stroke(.teal, lineWidth: 1))
            //                .padding()
            
            //            Group {
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //                Text("I am a Text View")
            //            }
            //            .font(.title)
            //            .fontWeight(.heavy)
            
            //                Text("You Have Skills!")
            //                    .font(.largeTitle)
            //                    .fontWeight(.black)
            //                    .foregroundColor(Color("GoldBC"))//.opacity(0.5)
            //                    .padding()
            //                    .background(Color("MaroonBC"))
            //                    .cornerRadius(15)
            //Love you Brenden <3
            Spacer()
            //SWIFT LOGO CODE
            //            Image(systemName: "swift")
            //                .resizable()
            //                .scaledToFit()
            //            //.imageScale(.large)
            //                .foregroundColor(.orange)
            //                .padding()
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            //.border(.orange, width: 1)
                .padding()
            
            //FABULOUS TEXT CODE
            //            Text("Fabulous? That's You!")
            //                .font(.largeTitle)
            //                .fontWeight(.heavy)
            //                .foregroundColor(.red)
            
            Spacer()
            
            //                    Divider()
            //                        .background(.black)
            //                        .padding()
            //                        .frame(width: 150.0)
            //
            //                    Rectangle()
            //                        .fill(.indigo)
            //                        .frame(width:geometry.size.width * (2/3), height:1)
            
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "You Are Fantastic!",
                                "You Are A Genius!",
                                "You Make Me Smile"]
                
                //This is the action performed when the button is pressed
                messageString = messages[messageNumber]
                messageNumber+=1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                //TODO: - update the imageName variable -
                imageName = "image\(imageNumber)"
                imageNumber+=1
                if imageNumber > 9 {
                    imageNumber = 0
                }
                print(imageNumber)
            }
            .buttonStyle(.borderedProminent)
            
            //                Spacer()
            //
            //                //                    Divider()
            //                //                        .padding()
            //
            //                Button("Great") {
            //                    //This is the action performed when the Great button is pressed
            //                    messageString = "You Are Great!"
            //                }
            //                .buttonStyle(.borderedProminent)
            
            //            .border(.purple, width: 5)
            .padding()
            //            .tint(Color("Vermillion"))
        }
    }
    //}
    //}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
