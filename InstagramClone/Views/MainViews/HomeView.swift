import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    // Stories
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<5) { index in
                                StoryView()
                            }
                        }
                    }
                    .padding(.horizontal, 8)
                    .padding(.top, 4)
                    
                    Divider()

                    // Feed
                    LazyVStack {
                        ForEach(0..<10) { _ in
                            PostView()
                        }
                    }
                    .padding()
                }
            }
            .navigationBarItems(leading:
                                    HStack{
                Text("Instagram")
                    .font(.title)
                    .fontDesign(.monospaced)
                    .padding(.vertical)
            })
            .navigationBarItems(trailing:
                Image(systemName: "paperplane"))
            
        }
    }
}

struct StoryView: View {
    var body: some View {
        VStack {
            ZStack {
                
                Image("doggo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                .clipShape(Circle())
                Circle()
                    .stroke(lineWidth: 3)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 69, height: 69)
            }
            
        }
        .padding(6)
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("exampleImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("Username").bold()
                Spacer()
                Image(systemName: "ellipsis")
            }

            // Actual post content (image, caption, likes, etc.)
            Rectangle()
                .frame(height: 345)
                .foregroundColor(.gray)
                .overlay {
                    Image("1_1")
                        .resizable()
                        .scaledToFit()
                }

            Divider()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

