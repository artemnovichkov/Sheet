//
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct ArticlesView: View {

    let article: Article = .init(id: .init(),
                                 title: "Sheet happens",
                                 url: URL(string: "https://www.artemnovichkov.com/blog/sheet-happens")!)
    
    @State var sheet: Sheet?
    @State var isOn = true
    
    var body: some View {
        HStack {
            Button("Show Article") {
                if isOn {
                    sheet = .url(article.url)
                }
                else {
                    sheet = .webArchive(article.title)
                }
            }
            .sheet(item: $sheet) { $0 }
            Toggle("", isOn: $isOn)
        }
        .padding()
    }
}
