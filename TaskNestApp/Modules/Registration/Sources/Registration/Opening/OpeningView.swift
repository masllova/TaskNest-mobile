
import SwiftUI
import ViewComponents
import AppDesign

public struct OpeningView: View {
    @ObservedObject var viewModel: OpeningViewModel
    @State private(set) var pageNumber = 0
    
    public init(viewModel: OpeningViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        VStack {
            navigation
            title
            image
            VStack {
                description
                VStack {
                    pageControl
                    nextButton
                }
                .padding(.top, .calcToVertical(10))
            }
            .padding(.horizontal, .calcToHorizontal(20))
            .padding(.top, .calcToVertical(26))
        }
        .background(
            AppColors.background.getSUI()
        )
        .padding(.top, .calcToVertical(54))
        .padding(.bottom, .calcToVertical(24))
        .ignoresSafeArea()
    }
    
    private var navigation: some View {
        HStack {
            Button {
                viewModel.onBackButtonTap { ind in
                    pageNumber = ind
                }
            } label: {
                VCSImage(
                    image: AppImages.backArrow.getSUI(),
                    style: .init(
                        mode: .fit,
                        height: .calcToVertical(45)
                    )
                )
                .opacity(
                    viewModel.isFirstStep
                    ? 0
                    : 1
                )
            }
            Spacer()
            Button {
                viewModel.onSkipTap()
            } label: {
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
                        horizontalPadding: .calcToHorizontal(18)
                    )
                )
                .opacity(
                    viewModel.isFirstStep
                    ? 1
                    : 0
                )
            }
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
        .frame(
            height: .calcToVertical(84)
        )
        .padding(.horizontal, .calcToHorizontal(19))
        .padding(.top, .calcToVertical(36))
    }
    
    private var image: some View {
        VCSImage(
            image: viewModel.isFirstStep
            ? AppImages.oppeningFirstStep.getSUI()
            : AppImages.oppeningSecondStep.getSUI(),
            style: .init(
                width: UIScreen.main.bounds.width,
                height: .calcToVertical(326)
            )
        )
        .padding(.top, .calcToVertical(12))
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
            Spacer(
                minLength: .calcToVertical(40)
            )
        }
        .frame(
            height: .calcToVertical(115)
        )
    }
    
    private var pageControl: some View {
        HStack {
            PageTrackerView(
                pageCount: viewModel.pageCount,
                currentPage: $pageNumber
            )
            Spacer()
        }
    }
    
    private var nextButton: some View {
        HStack {
            Spacer()
            Button {
                viewModel.onNextTap() { ind in
                    pageNumber = ind
                }
            } label: {
                VCSText(
                    text: AppStrings.Opening.next,
                    style: .init(
                        font: AppFonts.regular.getSUI(size: 18),
                        color: AppColors.staticWhite.getSUI()
                    ),
                    backgroundStyle: .init(
                        color: AppColors.accent.getSUI(),
                        cornerRadius: 20,
                        verticalPadding: .calcToVertical(10.5),
                        horizontalPadding: .calcToHorizontal(46.5)
                    )
                )
            }
        }
    }
}
