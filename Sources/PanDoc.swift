import PerfectLib
#if os(Linux)
    import SwiftGlibc
#else
    import Darwin
#endif


public func PanDocConvert(sourceFile: String, sourceType: String, resultFile: String, resultType: String) throws {
  let proc = try SysProcess("pandoc",
    args: [sourceFile,
      "-f", sourceType,
      "-t", resultType,
      "-o", resultFile],
    env: [("PATH", "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin")])
  let res = try proc.wait(hang: true)
  if res != 0 {
      let s = try proc.stderr?.readString() ?? "Unknown Error"
      throw PerfectError.systemError(Int32(res), s)
  }
}
