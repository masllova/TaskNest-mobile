
import UIKit

public class MainPageViewController: UIViewController {
    // MARK: - Properies
    private var viewModel: MainPageViewModel
    
    // MARK: - init
    
    public init(viewModel: MainPageViewModel) {
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
        view.backgroundColor = .red
    }
}
