import Foundation

var tasks: [String] = []

func showMenu() {
    print("\nTo-Do List")
    print("1. Show tasks")
    print("2. Add task")
    print("3. Exit")
    print("Enter your choice: ", terminator: "")
}

func showTasks() {
    if tasks.isEmpty {
        print("No tasks yet.")
    } else {
        for (index, task) in tasks.enumerated() {
            print("\(index + 1). \(task)")
        }
    }
}

func addTask() {
    print("Enter task description: ", terminator: "")
    if let task = readLine() {
        tasks.append(task)
        print("Task added.")
    }
}

while true {
    showMenu()
    guard let choice = readLine() else { continue }

    switch choice {
    case "1":
        showTasks()
    case "2":
        addTask()
    case "3":
        print("Goodbye!")
        exit(0)
    default:
        print("Invalid choice")
    }
}
