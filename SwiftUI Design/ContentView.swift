import SwiftUI

struct ContentView: View {
    @State private var firstName: String = "Jack"
    @State private var lastName: String = "Sparrow"
    let colors:[Color] = [.red, .yellow, .blue]
    
    var body: some View {
        
        GeometryReader{ geometry in
            
            VStack(alignment: .center, spacing: 16){
                
                Text("Hello!").padding(.vertical, 10).background(.indigo)//This creates spaces which is belongs to an object
                Spacer().frame(height:25)
                
                HStack(alignment: .center, spacing: 4){
                    Text("My name is").background(.yellow)
                    Text("\(firstName)").frame(width: 42, height: 48, alignment: .leading).background(.orange) //-> The area which is used by an object
                    Text("\(lastName)").frame(width: 68, height: 48, alignment: .leading).background(.orange)
                }.padding(12)
                
                VStack(alignment: .center, spacing: 6){
                    
                    ForEach(1...3, id: \.self){
                        Text("Count: \($0)").background(self.colors[($0-1)])
                    }
                    
                    ForEach(colors, id: \.self){ color in
                        Text("Lines").background(color)
                    }
                }
                
                ScrollView{
                    VStack(alignment: .center, spacing: 8){
                        ForEach(1...30, id: \.self){ _ in
                            Text("Item").frame(width: 45, height: 45, alignment: .center).background(.orange)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
