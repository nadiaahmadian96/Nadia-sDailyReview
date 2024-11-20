protocol Logger {
    func log(message: String)
}

struct ConsoleLogger: Logger {
    func log(message: String) {
        print("Log: \(message)")
    }
}

struct FileLogger: Logger {
    func log(message: String) {
        print("Writing '\(message)' to file...")
    }
}

struct App {
    let logger: Logger

    func run() {
        logger.log(message: "App is running")
    }
}

let appWithConsoleLogger = App(logger: ConsoleLogger())
appWithConsoleLogger.run() // Output: Log: App is running

let appWithFileLogger = App(logger: FileLogger())
appWithFileLogger.run() // Output: Writing 'App is running' to file...
