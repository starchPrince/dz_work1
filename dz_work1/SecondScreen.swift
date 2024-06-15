import SwiftUI

struct SecondScreen: View {
    
    @Binding var navigateToItem: Int?
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: ItemDetailScreen(item: "1"),
                    tag: 0,
                    selection: $navigateToItem,
                    label: {Text("🕐")})
                NavigationLink(
                    destination: ItemDetailScreen(item: "То самое что-то"),
                    tag: 1,
                    selection: $navigateToItem,
                    label: {Text("🕑")})
                NavigationLink(
                    destination: ItemDetailScreen(item: "3"),
                    tag: 2,
                    selection: $navigateToItem,
                    label: {Text("🕒")})
            }
        }
    }
}

//#Preview {
//    SecondScreen()
//}
