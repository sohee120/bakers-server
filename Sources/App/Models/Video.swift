//
//  Video.swift
//  
//
//  Created by 윤소희 on 2023/10/12.
//

import Fluent
import Vapor

final class Video: Model, Content {
    static let schema = "videos" //테이블 또는 컬렉션의 이름
    
    @ID(key: .id) //모델 인스턴스의 고유 식별자
    var id: UUID?

    @Field(key: "link")
    var link: String

    @Field(key: "title")
    var title: String
    
    @Field(key: "creator")
    var creator: String

    @Field(key: "views")
    var views: Int

    
    init() { }

    init(id: UUID? = nil, link: String, title: String, creator: String, views: Int) {
        self.id = id
        self.link = link
        self.title = title
        self.creator = creator
        self.views = views
    }
}

