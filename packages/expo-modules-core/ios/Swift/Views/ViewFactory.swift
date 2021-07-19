/**
 A definition of the view factory.
 */
internal struct ViewFactory: AnyDefinition {
  typealias FactoryClosureType = () -> UIView

  let factory: FactoryClosureType

  init(_ factory: @escaping FactoryClosureType) {
    self.factory = factory
  }

  func create() -> UIView {
    return factory()
  }
}
