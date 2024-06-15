import SwiftUI

struct ItemDetailScreen: View {
    var item: String

    var body: some View {
        Text("\(item)")
            .navigationTitle("Detail")
    }
}

#Preview {
    ItemDetailScreen(item: "111")
}
