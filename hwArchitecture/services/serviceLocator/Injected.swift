//
//  Injected.swift
//  hwServiceLocator
//
//  Created by Alexandra Kurganova on 22.05.2023.
//

import Foundation

@propertyWrapper
struct Injected<Service> {
    private var service: Service?
    
    public var wrappedValue: Service? {
        mutating get {
            if service == nil {
                service = ServiceLocator.shared.getService()
            }
            return service
        }
    }
    
    public var projectedValue: Injected<Service> {
        mutating set {
            self = newValue
        }
        get {
            return self
        }
    }
}
