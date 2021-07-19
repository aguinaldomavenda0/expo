
#if swift(>=5.4)
@resultBuilder
public struct ViewDefinitionBuilder {
  public static func buildBlock(_ definitions: AnyDefinition...) -> ViewDefinition {
    return ViewDefinition(definitions: definitions)
  }
}
#endif
