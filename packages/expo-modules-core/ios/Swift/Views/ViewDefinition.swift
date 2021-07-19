public func prop<PropType>(_ name: String, _ value: PropType? = nil, _ setter: @escaping (PropType) -> Void) -> AnyDefinition {
  return ConcreteViewProp(name, value, setter)
}

public protocol AnyViewProp: AnyDefinition {
  var name: String { get }
  func get() -> Any?
  func set(_ value: Any?)
}

public class ConcreteViewProp<PropType>: AnyViewProp {
  public typealias SetterType = (PropType) -> Void

  public let name: String

  var value: PropType?

  let setter: SetterType

  init(_ name: String, _ value: PropType? = nil, _ setter: @escaping SetterType) {
    self.name = name
    self.value = value
    self.setter = setter
  }

  public func get() -> Any? {
    return value
  }

  public func set(_ value: Any?) {
    self.value = value as? PropType
  }
}

public struct ViewDefinition: AnyDefinition {
  let props: [AnyViewProp]

  init(definitions: [AnyDefinition]) {
    self.props = definitions.compactMap { $0 as? AnyViewProp }
  }
}
