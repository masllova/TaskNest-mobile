
import SwiftUI
import ViewComponents
import AppDesign

public struct OpeningView: View {
    @ObservedObject var viewModel: OpeningViewModel
    
    public init(viewModel: OpeningViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        VStack {
            skipButton
            Spacer(minLength: 48)
            title
            Spacer(minLength: 12)
            image
            Spacer(minLength: 46)
            VStack {
                description
                Spacer()
                // traker view
                nextButton
            }
            .padding(.horizontal, 20)
        }
        .background(
            AppColors.background.getSUI()
        )
        .padding(.top, 64)
        .padding(.bottom, 34)
        .ignoresSafeArea()
    }
    
    private var skipButton: some View {
        HStack {
            Spacer()
            VCSText(
                text: AppStrings.Opening.skip,
                style: .init(
                    font: AppFonts.regular.getSUI(size: 20),
                    color: viewModel.isFirstStep
                    ? AppColors.subtitle.getSUI()
                    : AppColors.background.getSUI(),
                    alignment: .trailing
                ),
                backgroundStyle: .init(
                    horizontalPadding: 18
                ),
                onTap: viewModel.onSkipTap
            )
            .opacity(
                viewModel.isFirstStep
                ? 1
                : 0
            )
        }
    }
    
    private var title: some View {
        VCSText(
            text: viewModel.isFirstStep
            ? AppStrings.Opening.welcome1
            : AppStrings.Opening.welcome2,
            style: .init(
                font: AppFonts.bold.getSUI(size: 36),
                color: AppColors.accent.getSUI(),
                lineLimit: 2
            )
        )
    }
    
    private var image: some View {
        VCSImage(
            image: viewModel.isFirstStep
            ? AppImages.oppeningFirstStep.getSUI()
            : AppImages.oppeningSecondStep.getSUI(),
            style: .init(
                mode: .fit
            )
        )
    }
    
    private var description: some View {
        HStack {
            VCSText(
                text: viewModel.isFirstStep
                ? AppStrings.Opening.description1
                : AppStrings.Opening.description2,
                style: .init(
                    font: AppFonts.regular.getSUI(size: 20),
                    color: AppColors.title.getSUI(),
                    lineLimit: 5,
                    alignment: .leading
                )
            )
            Spacer(minLength: 40)
        }
    }
    
    private var nextButton: some View {
        HStack {
            Spacer()
            VCSText(
                text: AppStrings.Opening.next,
                style: .init(
                    font: AppFonts.regular.getSUI(size: 18),
                    color: AppColors.staticWhite.getSUI()
                ),
                backgroundStyle: .init(
                    color: AppColors.accent.getSUI(),
                    cornerRadius: 20,
                    verticalPadding: 10.5,
                    horizontalPadding: 46.5
                ),
                onTap: viewModel.onNextTap
            )
        }
    }
}
