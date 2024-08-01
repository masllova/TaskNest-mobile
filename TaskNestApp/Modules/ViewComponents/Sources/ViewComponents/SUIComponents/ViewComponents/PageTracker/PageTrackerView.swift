import SwiftUI
import AppDesign

public struct PageTrackerView: View {
    @Binding var currentPage: Int
    private var pageItems: [PageTrackerComponent]
    
    public init(pageCount: Int,
                currentPage: Binding<Int>) {
        self._currentPage = currentPage
        self.pageItems = (0..<pageCount).map { index in
            PageTrackerComponent(id: index, isSelected: index == currentPage.wrappedValue)
        }
    }
    
    public var body: some View {
        HStack(spacing: 6) {
            ForEach(pageItems) { item in
                item
            }
        }
    }
}
