import SwiftUI

struct ThirdScreen: View {
    @State private var sheetIsActive = false
    var body: some View {
        Button(action: {
            sheetIsActive.toggle()
        }, label: {
//            Text("Кнопка для вызова модального окна")
            DocumentNameLabel(content: "Кнопка для вызова модального окна")
                .frame(width: UIScreen.main.bounds.width - 84, height: 60)
        })
//        .buttonStyle(.bordered)
        .sheet(isPresented: $sheetIsActive, content: {
            Text("Модальное окно собственной персоной")
        })
    }
}

#Preview {
    ThirdScreen()
}


struct DocumentNameLabel: UIViewRepresentable {
     var content: String

    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        label.layer.borderColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        label.layer.borderWidth = 2
        label.textAlignment = .center
        return label
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = content
    }
}
