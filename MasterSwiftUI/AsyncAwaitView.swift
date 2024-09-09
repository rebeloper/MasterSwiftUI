//
//  AsyncAwaitView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 09.09.2024.
//

import SwiftUI

struct AsyncAwaitView: View {
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text(name)
            Button {
                buttonTapped()
            } label: {
                Text("Tap me")
            }
        }
        .task {
            do {
                let name = try await fetchNameFromServer()
                print(name)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func buttonTapped() {
//        let name = fetchName()
//        self.name = name
        
//        fetchNameFromServer { result in
//            switch result {
//            case .success(let name):
//                print(name)
//                fetchNameFromServer { result in
//                    switch result {
//                    case .success(let name):
//                        fetchNameFromServer { result in
//                            switch result {
//                            case .success(let name):
//                                print(name)
//                            case .failure(let error):
//                                print(error.localizedDescription)
//                            }
//                        }
//                        print(name)
//                    case .failure(let error):
//                        print(error.localizedDescription)
//                    }
//                }
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
        
        Task {
            do {
//                let name = try await fetchNameFromServerWithAsync()
                
                let name = try await fetchNameFromServer()
                print(name)
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchName() -> String {
        "Ada"
    }
    
    func fetchNameFromServer(completion: @escaping (Result<String, Error>) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            let name = "Ada"
            completion(.success(name))
        })
    }
    
    func fetchNameFromServerWithAsync() async throws -> String {
        let name = "Ada"
        return name
    }
    
    func fetchNameFromServer() async throws -> String {
        try await withCheckedThrowingContinuation { continuation in
            fetchNameFromServer { result in
                continuation.resume(with: result)
            }
        }
    }
}

#Preview {
    AsyncAwaitView()
}
