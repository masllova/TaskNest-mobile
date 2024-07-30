
import UIKit

public class OpeningViewController: UIViewController {
    // MARK: - Properies
    private var viewModel: OpeningViewModel
    
    // MARK: - init
    
    public init(viewModel: OpeningViewModel) {
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
        view.backgroundColor = .purple
    }
}

