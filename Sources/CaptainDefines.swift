//
//  CaptainDefines.swift
//  JXCaptain
//
//  Created by jiaxin on 2019/8/26.
//  Copyright © 2019 jiaxin. All rights reserved.
//

import Foundation

public protocol Soldier {
    var name: String { get }
    var team: String { get }
    var icon: UIImage? { get }
    var contentView: UIView? { get }
    func prepare()
    func action(naviController: UINavigationController)
}

protocol Monitor {
    associatedtype ValueType
    var valueDidUpdateClosure: ((ValueType) -> Void)? { set get }
    func start()
    func end()
}

enum MonitorType {
    case fps
    case memory
    case cpu
    case anr
}
