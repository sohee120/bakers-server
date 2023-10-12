//
//  Creator.swift
//  
//
//  Created by 윤소희 on 2023/10/12.
//

import Fluent
import Vapor

final class Creator: Model, Content {
    static let schema = "creators" //테이블 또는 컬렉션의 이름
    
    @ID(key: .id) //모델 인스턴스의 고유 식별자
    var id: UUID?

    @Field(key: "profileImage")
    var profileImage: String
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "introduce")
    var introduce: String
    

    init() { }

    init(id: UUID? = nil, profileImage: String, name: String, introduce: String) {
        self.id = id
        self.profileImage = profileImage
        self.name = name
        self.introduce = introduce
    }
}
