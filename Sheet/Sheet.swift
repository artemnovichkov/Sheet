//
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import SwiftUI

enum Sheet: View, Identifiable {
    
    case url(URL)
    case webArchive(String)
    
    var id: String {
        switch self {
        case .url(let url):
            return url.id
        case .webArchive(let title):
            return title.id
        }
    }
    
    var body: some View {
        switch self {
        case .url(let url):
            SafariView(url: url)
        case .webArchive(let title):
            WebArchiveView(title: title)
        }
    }
}
