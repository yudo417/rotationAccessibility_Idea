import SwiftUI

struct ContentView:View {
    @State var islock1: Bool = false
    @State var isrotate1: Bool = false
    @State var isreverse1: Bool = false
    @State var islock2: Bool = false
    @State var isrotate2: Bool = false
    @State var isreverse2: Bool = false
    @State var islock3: Bool = false
    @State var isrotate3: Bool = false
    @State var isreverse3: Bool = false
    var body: some View {
        VStack(spacing:60){
            Group{
                Image(systemName: !islock1 ? "lock" :"lock.open")
                    .resizable()
                    .background{
                        ZStack{

                            Circle().frame(width: 120, height: 120)
                                .foregroundStyle(.blue)
                            Circle().frame(width: 110, height: 110)
                                .foregroundStyle(.white)
                        }
                    }
                    .foregroundStyle(.blue)
                    .frame(width: 70, height: 70)
                    .scaleEffect(x:isreverse1 ? 1 : -1)
                    .rotation3DEffect(.degrees(isrotate1 ? 0 : 360*2+180),axis:(x:0,y:1,z:0))
            }
            .frame(width: 120, height: 120)

            Group{
                Image(systemName: !islock2 ? "lock" :"lock.open")
                    .resizable()
                    .background{
                        ZStack{

                            Circle().frame(width: 120, height: 120)
                                .foregroundStyle(.blue)
                            Circle().frame(width: 110, height: 110)
                                .foregroundStyle(.white)
                        }
                    }
                    .foregroundStyle(.blue)
                    .frame(width: 70, height: 70)
                    .scaleEffect(x:isreverse2 ? 1 : -1)
                    .rotation3DEffect(.degrees(isrotate2 ? 0 : 360*0+180),axis:(x:0,y:1,z:0))
            }
            .frame(width: 120, height: 120)

            Group{
                Image(systemName: !islock3 ? "lock" :"lock.open")
                    .resizable()
                    .background{
                        ZStack{

                            Circle().frame(width: 120, height: 120)
                                .foregroundStyle(.blue)
                            Circle().frame(width: 110, height: 110)
                                .foregroundStyle(.white)
                        }
                    }
                    .foregroundStyle(.blue)
                    .frame(width: 70, height: 70)
                    .scaleEffect(x:isreverse3 ? 1 : -1)
                    .rotation3DEffect(.degrees(isrotate3 ? 0 : 360*20+180),axis:(x:0,y:1,z:0))
            }
            .frame(width: 120, height: 120)


            Spacer()

            HStack(spacing:20){
                Button {
                    withAnimation(.easeOut(duration:0.5)){
                        islock1.toggle()
//                        isrotate1.toggle()
//                        isreverse1.toggle()
                    }
                } label: {
                    Text("視差効果なし")
                }

                Button {
                    withAnimation(.easeOut(duration:0.5)){
                        islock2.toggle()
                        isrotate2.toggle()
                        isreverse2.toggle()
                    }
                } label: {
                    Text("視差効果あり")
                }

                Button {
                    withAnimation(.easeOut(duration:0.7)){
                        islock3.toggle()
                        isrotate3.toggle()
                        isreverse3.toggle()
                    }
                } label: {
                    Text("めちゃんこぐるぐる")
                }
            }

        }
        .padding(.vertical,40)
    }
}

#Preview{
    ContentView()
//        .previewInterfaceOrientation(.portraitUpsideDown)
}

//struct test2_Previews: PreviewProvider {
//    static var previews: some View {
//        test2()
//            .previewInterfaceOrientation(.landscapeRight)
//    }
//}
