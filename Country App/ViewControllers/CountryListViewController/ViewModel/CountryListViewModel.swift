//
//  CountryListViewModel.swift
//  Country App
//
//  Created by Senthilkumar Kalaiselvan on 25/7/24.
//

import Foundation

final class CountryListViewModel {
    
    var countryList: [CountryDetailModel] = []
    private let serviceManager: ServiceManager = ServiceManager.live
    
    var reloadTableView: (() -> Void)?
    
    func fetchCountryList() {
        Task {
            do {
                countryList = try await serviceManager.fetchCountryList()
                print(countryList)
                reloadTableView?()
            }catch {
                // show some error
            }
        }
    }
    
}
