//
//  BaseViewModel.swift
//  lono
//


import Foundation

class BaseViewModel: NSObject {
    var showHUD: Bindable<Bool> = Bindable(false)
    var success: Bindable<Bool> = Bindable(false)
}
