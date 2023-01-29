//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Charley Conroy on 1/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help they call you!"
    
    var body: some View {
        VStack (spacing: 0){
            //Hi Brenden
            
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
                .border(.orange, width: 1)
                .padding()
            //FABULOUS TEXT CODE
            //            Text("Fabulous? That's You!")
            //                .font(.largeTitle)
            //                .fontWeight(.heavy)
            //                .foregroundColor(.red)
            HStack {
                Button("Awesome!") {
                    //This is the action performed when the Awesome button is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                Button("Great") {
                    //This is the action performed when the Great button is pressed
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
                
            }
            .border(.purple, width: 5)
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
