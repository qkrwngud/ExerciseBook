//
//  TestView.swift
//  English
//
//  Created by 박주형 on 2023/04/10.
//

import SwiftUI



struct TestView: View
{
    
    @State var Lst: [String] = ["A", "B", "C", "D"]
    @State var LStr: [String] = ["a", "b", "c", "d"]
    @State var InputLst: [String] = ["", "", "", "", ""]
    @State var InputLStr: [String] = ["", "", "", "", ""]
    
    var body: some View
    {
        VStack
        {
            NavigationView
            {
                Form
                {
                    Section
                    {
                        ForEach(0..<Lst.count)
                        { Index in
                            
                            if(Index % 2 == 0)
                            {
                                HStack{
                                    Text("\(Lst[Index]): ")
                                    TextField("\(Lst[Index])", text: $InputLst[Index])
                                    
                                    if(LStr[Index] == InputLst[Index])
                                    {
                                        Text("✅")
                                    }
                                }
                            }
                            else
                            {
                                HStack{
                                    Text("\(LStr[Index]): ")
                                    TextField("\(LStr[Index])", text: $InputLStr[Index])
                                }
                            }
                        }
                    }
                }
            }
            
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
