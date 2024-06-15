import SwiftUI

struct FirstScreen: View {
    
    @Binding var selectedTab: Int
    @Binding var navigateToItem: Int?
    var body: some View {
        VStack {
            Button(action: {
                selectedTab = 1
                navigateToItem = 1
            }, label: {
                Text("Эта кнопка что то точно делает")
            })
        }
    }
}

//#Preview {
//    FirstScreen()
//}
