import UIKit

public class TeamPageViewController: UIViewController {
    // MARK: - Properies
    private var viewModel: TeamPageViewModel
    
    // MARK: - init
    
    public init(viewModel: TeamPageViewModel) {
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
        view.backgroundColor = .yellow
    }
}
