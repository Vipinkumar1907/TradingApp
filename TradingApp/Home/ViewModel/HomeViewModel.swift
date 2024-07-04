//
//  HomeViewModel.swift
//  TradingApp
//
//  Created by Vipin Kumar on 23/05/24.
//

import Foundation

enum ViewModelState {
    case loading
    case loaded
}

class HomeViewModel: BaseViewModel {
    var state: ViewModelState = .loaded {
        didSet {
            //apiStateUpdated?()
        }
    }
    var holdings: [UserHolding] = []
    var error: String?
    
    var holdingFetched: Bindable<Bool> = Bindable(false)
    var apiStateFetched: Bindable<Bool> = Bindable(false)
    
}

// MARK: - API's
extension HomeViewModel {
    func getHoldings() {
        self.state = .loading
        ServiceManager.shared.getRequest(endpoint: .holdings, responseModel: HoldingsModel.self) { [weak self] result in
            switch result {
            case .success(let response):
                self?.holdings = response.data?.userHolding ?? []
                self?.holdingFetched.value = true
            case .failure(let error):
                print(error.localizedDescription, error.rawValue)
                self?.error = error.rawValue
            }
            self?.state = .loaded
            self?.apiStateFetched.value = true
        }
    }
    
}
