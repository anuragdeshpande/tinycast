import Foundation

enum LauncherPath {
    static func subtitle(
        isFileBacked: Bool, path: String, homeDirectory: String
    ) -> String? {
        guard isFileBacked else { return nil }
        guard path != homeDirectory else { return "~" }
        guard path.hasPrefix(homeDirectory + "/") else { return path }
        return "~" + path.dropFirst(homeDirectory.count)
    }
}
