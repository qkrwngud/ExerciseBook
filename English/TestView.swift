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
    @State var InputStr: [String] = ["", "", "", "", ""]
    
    @State var Count: Int = 0
    
    var body: some View
    {
        VStack
        {
            NavigationView
            {
                Form
                {
                    ForEach(0..<Lst.count)
                    { Index in
                        
                        Section
                        {
                            VStack
                            {
                                Text("\(Lst[Index])")
                                TextField("\(Lst[Index])", text: $InputStr[Index])
                                    .multilineTextAlignment(.center)
                                
                                if( LStr[Index] == InputStr[Index])
                                {
                                    
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
