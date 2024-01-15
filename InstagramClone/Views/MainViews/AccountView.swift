import SwiftUI

struct AccountView: View {
    let gridItems = Array(repeating: GridItem(.flexible(), spacing: 1), count: 3)
    @State private var isPresented = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                       
                        accountFollowView()
                        
                        Text("Doggo")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal, 20)
                        
                        Text("🐾 Chief Happiness Officer 🐶 \nSpreading pawsitivity one wag at a time!✨")
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20)
                        
                        FollowButton()
    
                        HStack{
                            Spacer()
                            Image(systemName: "square.grid.3x3")
                                .padding(.leading, -40)
                            Spacer()
                            Image(systemName: "play.rectangle.fill")
                            Spacer()
                            Image(systemName: "person.crop.rectangle")
                                .padding(.trailing, -40)
                            Spacer()
                        }.foregroundColor(.gray)
                        
                        Divider().foregroundColor(.white)
                        
                        Text("Photos")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.horizontal, 20)
                        
                        LazyVGrid(columns: gridItems, spacing: 1) {
                            ForEach(0 ..< 12) { _ in
                                Image("exampleImage")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: (UIScreen.main.bounds.width - 2) / 3, height: (UIScreen.main.bounds.width - 2) / 3)
                            }
                        }
                        .padding(.horizontal, 1)
                    }
                }
            }
            .sheet(isPresented: $isPresented, content: {
                SettingsView().presentationBackground(.thinMaterial)
            })
            .navigationBarItems(trailing:HStack {
            HStack {
                Text("doggo")
                Image("BlueTick")
            }.padding(.horizontal ,50)
            
            Image(systemName: "bell")
            Button {
                isPresented.toggle()
            } label: {
                Image(systemName: "text.justify.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.secondary)
            }.padding(.horizontal, 10)
        })
            .navigationBarItems(leading: Image(systemName: "chevron.left"))
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
