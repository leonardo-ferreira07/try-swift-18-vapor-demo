import Vapor

struct JSONExample: Content {
    let name: String
    let birthday: Date
}

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    // json endpoint example
    router.get("json") { req -> JSONExample in
        return JSONExample(name: "Leonardo", birthday: Date())
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.get("todos", Todo.parameter, use: todoController.view)
    router.post("todos", use: todoController.create)
    router.patch("todos", Todo.parameter, use: todoController.update)
    router.delete("todos", use: todoController.clear)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
