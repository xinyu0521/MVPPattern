//
//  UserPresenter.swift
//  MVPPattern
//
//  Created by zhanx630 on 2022/5/22.
//

import Foundation
import UIKit

protocol UserPresenterDelegate {
    func presentUsers(users: [User])
    func presentAlert(title: String, message: String)
}

typealias PresentDelegate = UserPresenterDelegate & UIViewController

class UserPresenter {
    weak var delegate: PresentDelegate?

    func getUsers() {
        let users = [User(name: "Matt"),
                     User(name: "Cindy"),
                     User(name: "Jeo"),
                     User(name: "Jeff"),
                     User(name: "Karen"),
                     User(name: "Jenny"),
                     User(name: "Raj")]
        self.delegate?.presentUsers(users: users)
    }

    func setView(delegate: PresentDelegate) {
        self.delegate = delegate
    }

    func didTap(user: User) {
        self.delegate?.presentAlert(
            title: user.name,
            message: "\(user.name)HHHHH")
    }
}
