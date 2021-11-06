// This could be something that allows fetching or pushing the new value
public protocol TextSource {
  func word() -> String
}

public struct MockTextSource: TextSource {
  public init() { }
  
  public func word() -> String {
    ""
  }
}
