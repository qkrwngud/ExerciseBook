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
                    Section(header: Text("단어")){
                        ForEach(0..<Lst.count){ Index in
                            Section
                            {
                                HStack
                                {
                                    Text("\(Lst[Index])")
                                    TextField("\(Lst[Index])", text: $InputLst[Index])
                                    Spacer()
                                    Text("\(LStr[Index])")
                                    TextField("\(LStr[Index])", text: $InputLStr[Index])
                                    Spacer()
                                }
                            }
                        }
                    }
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
