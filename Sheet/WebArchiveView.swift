//
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct WebArchiveView: View {
    
    @State var title: String
    
    var body: some View {
        Text("Web archive data of \(title) article")
    }
}
