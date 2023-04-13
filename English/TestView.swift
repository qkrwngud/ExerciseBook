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
    @State var LStr: [String] = ["에이", "비", "씨", "디"]
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
                                        .textInputAutocapitalization(.never) // 소문자 입력
                                        .textFieldStyle(.roundedBorder)
                                }
                            } // if end
                            else
                            {
                                HStack
                                {
                                    Text("\(LStr[Index]): ")
                                    TextField("\(LStr[Index])", text: $InputLStr[Index])
                                        .textInputAutocapitalization(.never) // 소문자 입력
                                        .textFieldStyle(.roundedBorder)
                                }
                                
                            }
                            // else end
                        }
                        
                    } // section end
                }
            } // navigationView
            
        }
        
    }
    
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
