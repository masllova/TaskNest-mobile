import SwiftUI
import AppDesign

struct PageTrackerComponent: View, Identifiable {
    let id: Int
    var isSelected: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .foregroundColor(
                isSelected
                ? AppColors.pageControlSelected.getSUI()
                : AppColors.pageControlUnselected.getSUI()
            )
            .frame(
                width: isSelected ? 21 : 6,
                height: 6
            )
            .animation(
                .easeInOut(
                    duration: 0.6
                )
            )
    }
}
