//
//  CreateUser.swift
//
//
//  Created by 윤소희 on 2023/10/13.
//

import Fluent
import FluentPostgresDriver

struct CreateUser: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("users")
            .id()
            .field("recent", .array(of: .string))
            .field("save", .array(of: .string))
            .field("memo", .array(of: .string))
            .field("createdAt", .string)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("users").delete()
    }
}

