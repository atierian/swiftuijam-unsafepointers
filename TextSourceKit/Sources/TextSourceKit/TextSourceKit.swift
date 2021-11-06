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

protocol TextSourcePlugin {
  /// Retrieves an array of words. Zero indexed.
  /// - Returns: `[String]`
  /// - Important: If the total `wordCount < from`, this will return an empty array.
  /// If `wordCount >= from` and `wordCount < to`, this will return the remaining elements.
  /// ~~~~~
  ///  // in the case of [ "foo", "bar", "baz", "quux" ]
  ///
  ///  let words = await plugin.words(from: 4, to: 10)
  ///  // returns []
  ///
  ///  let words = await plugin.words(from: 1, to: 10)
  ///  // returns [ "bar, "baz", quux" ]
  /// ~~~~~
  func words(from: Int, to: Int) async -> [String]
  
  /// Retrieves an array of words. Zero indexed.
  /// - Returns: `[String]`
  /// - Important: If the total `wordCount < lowerBound`, this will return an empty array.
  /// If `wordCount >= lowerBound` and `wordCount < upperBound`, this will return the remaining elements.
  /// ~~~~~
  ///  // in the case of [ "foo", "bar", "baz", "quux" ]
  ///
  ///  let words = await plugin.words(4...10)
  ///  // returns []
  ///
  ///  let words = await plugin.words(1...10)
  ///  // returns [ "bar, "baz", quux" ]
  /// ~~~~~
  func words(_ from: ClosedRange<Int>) async -> [String]
  
  /// Total word count of word storage
  /// - Complexity: O(1)
  var wordCount: Int { get }
}
