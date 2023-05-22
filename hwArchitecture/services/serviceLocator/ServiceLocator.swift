//
//  ServiceLocator.swift
//  hwServiceLocator
//
//  Created by Alexandra Kurganova on 22.05.2023.
//

protocol ServiceLocating {
    func getService<T>() -> T?
}

final class ServiceLocator: ServiceLocating {
    public static let shared = ServiceLocator()
    
    private lazy var services: [String: Any] = [:]
    
    private func typeName(some: Any) -> String {
        return (some is Any.Type) ? "\(some)" : "\(type(of: some))'"
    }
    
    func addService<T>(service: T) {
        let key = typeName(some: T.self)
        services[key] = service
    }
    
    func getService<T>() -> T? {
        let key = typeName(some: T.self)
        return services[key] as? T
    }
}

