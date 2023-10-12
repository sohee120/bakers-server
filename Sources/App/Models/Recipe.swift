//
//  Recipe.swift
//  
//
//  Created by 윤소희 on 2023/10/12.
//

import Fluent
import Vapor

final class Recipe: Model, Content {
    static let schema = "recipes" //테이블 또는 컬렉션의 이름
    
    @ID(key: .id) //모델 인스턴스의 고유 식별자
    var id: UUID?

    @Field(key: "image")
    var image: String
    
    @Field(key: "category")
    var category: String
    
    @Field(key: "views")
    var views: Int
    
    @Field(key: "title")
    var title: String
    
    @Field(key: "ingredient")
    var ingredient: String
    
    @Field(key: "amount")
    var amount: String
    
    @Field(key: "order")
    var order: String
    
    @Timestamp(key: "created_date", on: .create)
    var createdDate: Date?

    init() { }

    init(id: UUID? = nil, title: String, image: String, category: String, views: Int, ingredieng: String, amount: String, createdDate: Date? = nil) {
        self.id = id
        self.image = image
        self.category = category
        self.views = views
        self.title = title
        self.ingredient = ingredient
        self.amount = amount
        self.order = order
        self.createdDate = createdDate
    }
}
