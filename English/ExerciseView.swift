//
//  ExerciseView.swift
//  English
//
//  Created by 박주형 on 2023/04/10.
//

import SwiftUI

struct ExerciseView: View
{
    @State var Lst: [String] = ["A", "B", "C", "D"]
    @State var LStr: [String] = ["a", "b", "c", "d"]
    @State var InputLst: [String] = ["", "", "", "", ""]
    @State var InputLStr: [String] = ["", "", "", "", ""]
    
    var body: some View
    {
        VStack{
            NavigationView{
                Form
                {
                    ForEach(0..<Lst.count)
                    { Index in
                        
                        Section()
                        {
                            Text("\(Lst[Index])")
                            Text("\(LStr[Index])")
                        }
                    }.listRowBackground(Color.white)
                }
            }.navigationTitle("ExerciseView")
            
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
