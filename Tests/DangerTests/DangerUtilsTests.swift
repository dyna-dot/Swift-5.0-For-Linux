        XCTAssertEqual(fileDiff,
                       FileDiff(parsedHeader: .init(filePath: ".swiftpm/xcode/package.xcworkspace/contents.xcworkspacedata",
                                                    change: .created),
                                hunks: [
                                    .init(oldLineStart: 0, oldLineSpan: 0, newLineStart: 1, newLineSpan: 7, lines: [
                                        FileDiff.Line(text: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>", changeType: .added),
                                        FileDiff.Line(text: "<Workspace", changeType: .added),
                                        FileDiff.Line(text: "   version = \"1.0\">", changeType: .added),
                                        FileDiff.Line(text: "   <FileRef", changeType: .added),
                                        FileDiff.Line(text: "      location = \"self:\">", changeType: .added),
                                        FileDiff.Line(text: "   </FileRef>", changeType: .added),
                                        FileDiff.Line(text: "</Workspace>", changeType: .added),
                                    ]),
                                ]))
    }

    func testAwaitsFunctionResult() {
        var executed = false

        executed = DangerUtils(fileMap: [:]).sync { completion in
            DispatchQueue(label: "Test", qos: .userInteractive).async {
                completion(true)
            }
        }

        XCTAssertTrue(executed)
        diff --git \
        a/.swiftpm/xcode/package.xcworkspace/contents.xcworkspacedata b/.swiftpm/xcode/package.xcworkspace/contents.xcworkspacedata