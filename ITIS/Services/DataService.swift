//
//  DataService.swift
//  ITIS
//
//  Created by n.lyapustin on 25.03.2022.
//

protocol DataServiceProtocol {
    func loadData(completion: @escaping ((Result<String, Error>) -> Void))
}

class DataService: DataServiceProtocol {
    func loadData(completion: @escaping ((Result<String, Error>) -> Void)) {
        completion(.success("Alba \(Int.random(in: 1...10000))"))
    }
}

class DataServiceMock: DataServiceProtocol {
    func loadData(completion: @escaping ((Result<String, Error>) -> Void)) {
        completion(.success("chetko"))
    }
}
