//
//  User.swift
//  
//
//  Created by 윤소희 on 2023/10/12.
//

import Fluent
import Vapor

final class Account: Model, Content {
    static let schema = "users" //테이블 또는 컬렉션의 이름
    
    @ID(key: .id) //모델 인스턴스의 고유 식별자
    var id: UUID?

    @OptionalField(key: "recent")
    var recent: [String]?
    
    @OptionalField(key: "save")
    var save: [String]?
    
    @OptionalField(key: "memo")
    var memo: [String]?
    
    @Timestamp(key: "createdAt", on:.create)
    var createdAt: Date?
    

    init() { }

    init(id: UUID? = nil, recent: [String]?, save: [String]?, memo: [String]?, createdAt: Date? = nil) {
        self.id = id
        self.recent = recent
        self.save = save
        self.memo = memo
        self.createdAt = createdAt
    }
}
