import Foundation

@main
struct LauncherPathTest {
    static func main() {
        let actual = LauncherPath.subtitle(
            isFileBacked: true,
            path: "/Users/anurag/Applications/Droppy.app",
            homeDirectory: "/Users/anurag")
        let expected = "~/Applications/Droppy.app"

        if actual == expected {
            print("PASS  file-backed entries use a home-relative path")
        } else {
            print("FAIL  expected \(expected), got \(actual ?? "nil")")
            exit(1)
        }
    }
}
