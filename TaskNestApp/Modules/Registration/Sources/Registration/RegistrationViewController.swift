
import UIKit

public class RegistrationViewController: UIViewController {
    // MARK: - Properies
    private var viewModel: RegistrationViewModel
    
    // MARK: - init
    
    public init(viewModel: RegistrationViewModel) {
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
        view.backgroundColor = .cyan
    }
}

