import XCTest
import Logging
@testable import SwiftLogConsoleColors

final class SwiftLogConsoleColorsTests: XCTestCase {
    
    func testAssertLogLevelHiearchy() {
        XCTAssertGreaterThan(
            Logger.Level.critical,
            Logger.Level.error,
            "`critical` should be more serious than `error`"
        )
    }
    
    func testExample() {
        //            LoggingSystem.bootstrap(ColorStreamLogHandler.standardOutput(label: "Label", logIconType: .cool))
        
        
        //            LoggingSystem.bootstrap(ColorStreamLogHandler.standardOutput(label: "testLabel"))
        //
        //
        //            // Create a logger (or re-use one you already have)
        //            let logger = Logger(label: "MyApp")
        //
        //            // Log!
        //            logger.trace("Testing log levels..")
        //            logger.debug("Testing log levels..", metadata: ["user-id": "testmeta"])
        //            logger.info("Testing log levels..")
        //            logger.notice("Testing log levels..")
        //            logger.warning("Testing log levels..")
        //            logger.error("Testing log levels..")
        //            logger.critical("Testing log levels..", metadata: ["user-id": "testmeta"])
    }
}
