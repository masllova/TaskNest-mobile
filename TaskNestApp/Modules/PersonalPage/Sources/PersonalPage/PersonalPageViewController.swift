import UIKit

public class PersonalPageViewController: UIViewController {
    // MARK: - Properies
    private var viewModel: PersonalPageViewModel
    
    // MARK: - init
    
    public init(viewModel: PersonalPageViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

