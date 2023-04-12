//
//  ContentView.swift
//  English
//
//  Created by 박주형 on 2023/04/10.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            NavigationView {
                Form{
                    Section(header: Text("ExerciseView")){
                        NavigationLink("ExerciseView"){
                            ExerciseView()
                        }
                    }
                    
                    Section(header: Text("TestView")){
                        NavigationLink("TestView"){
                            TestView()
                        }
                    }
                    
                }.navigationTitle("ContentView")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
