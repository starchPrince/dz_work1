import SwiftUI


struct ContentView: View {
    @State private var selectedTab = 0
    @State private var navigateToItem: Int? = nil
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FirstScreen(selectedTab: $selectedTab, navigateToItem: $navigateToItem)
                    .badge(1)
                    .tabItem {
                        Label("First", systemImage: "1.lane")
                    }
                    .tag(0)
                
            SecondScreen(navigateToItem: $navigateToItem)
                    .badge("?")
                    .tabItem {
                        Label("Second", systemImage: "2.lane")
                    }
                    .tag(1)
                
                ThirdScreen()
                    .tabItem {
                        Label("Third", systemImage: "3.lane")
                    }
                    .tag(2)
            }

    }
}
#Preview {
    ContentView()
}
