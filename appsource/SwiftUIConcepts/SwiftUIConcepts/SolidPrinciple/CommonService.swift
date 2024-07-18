//
//  CommonService.swift
//  SwiftUIConcepts
//
//  Created by Purushoth on 18/07/24.
//

import Foundation


class CommonService{

    func fetchRequest(completion: @escaping(Result<[CommentModel], APIError>) -> Void){
        // API Common Service
        NetworkManager().fetchRequest(completion:completion)
    }
}



//protocol NetworkProtocol: ServiceProtocol, DataBaseProtocol{
//
//}
//
//protocol ServiceProtocol{
//    func getPost(completion: @escaping(Result<[UserModel],DemoErrorModel>) -> Void)
//}
//protocol DataBaseProtocol{
//    func getComment(completion: @escaping(Result<[CommentModel],DemoErrorModel>) -> Void)
//}
//
//class CommonService: NetworkProtocol{
//
//    func getComment(completion: @escaping(Result<[CommentModel],DemoErrorModel>) -> Void){
//        guard let url = URL(string: "https://demo1732301.mockable.io/SOLID") else {
//            return completion(.failure(.BadURL))
//        }
////        NetworkManager().getComment(completion:completion)
//        NetworkManager().fetchRequest(type: [CommentModel].self, url: url, completion:completion)
//    }
//    func getPost(completion: @escaping(Result<[UserModel],DemoErrorModel>) -> Void){
//        guard let url = URL(string: "https://demo1732301.mockable.io/SOLID") else {
//            return completion(.failure(.BadURL))  
//        }
////        NetworkManager().getComment(completion:completion)
//        NetworkManager().fetchRequest(type: [UserModel].self, url: url, completion:completion)
//
//    }
//
//}
//
