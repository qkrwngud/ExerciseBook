//
//  TestView.swift
//  English
//
//  Created by 박주형 on 2023/04/10.
//

import SwiftUI



struct TestView: View
{
    
    @State var E: [String] = ["coin", "take on", "mass-prodect", "refer to", "put~into service", "deciding", "intelligent", "performance", "advertise", "find out", "from then on", "protect", "embarrassing", "feed", "display", "overly", "at that time", "take a look", "no longer", "poison", "grain", "appearance", "crowd", "common practice", "at a later date", "a piece of cake", "argue", "Industrial Revolurion", "ceremonially", "misleading", "convenience", "priest", "wheel", "financially", "for some time", "atmosphere", "support", "inaccurate", "award", "ingredient", "mankind", "contain", "needless", "doubt", "remedy", "responsive", "slice", "gradually", "theatrical", "enemy"]
    @State var K: [String] = ["만들다", "지니게 되다", "대량 생산하다", "~을 나타내다", "~을 사용하기 시작하다", "결정적인", "똑똑한", "공연", "광고하다", "~을 알아내다", "그때부터", "보호하다", "난처한, 당혹스러운", "먹이다", "내보이다, 전시하다", "지나치게, 몹시", "당시에", "~을 보다", "더이상~아닌", "독", "곡물", "모습, 외모", "군중", "일반적인 습관, 흔한 일", "나중에, 후일에", "식은 죽 먹기", "주장하다", "산업 혁명", "의식적으로, 형식적으로", "오해의 소지가 있는", "편의 편리", "사제, 성직자", "바퀴", "재정적으로", "얼마 동안", "분위기", "부양하다, 지원하다", "부정확한", "수여하다", "재료, 성분", "인류", "포함하다, 들어 있다", "불필요한", "의심, 의혹", "처리 방안, 해결책", "즉각 반응하는", "얇게 썬 조각", "서서희, 점차", "연극의, 공연의", "적"]
    @State var InputStr: [String] = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    
    var body: some View
    {
        
        var R : [Int] = [(Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count)), (Int.random(in: 0..<E.count))]
        
        VStack
        {
            NavigationView
            {
                Form
                {
                    ForEach(0..<10)
                    { Index in
                        
                        Section
                        {
                            VStack
                            {
                                Text("\(K[R[Index]])")
                                TextField("\(K[R[Index]])", text: $InputStr[R[Index]])
                                    .multilineTextAlignment(.center)
                                
                                if( E[R[Index]] == InputStr[R[Index]])
                                {
                                    Text("✅")
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
