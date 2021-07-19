import ExpoModulesCore

public class LinearGradientModule: Module {
  public func definition() -> ModuleDefinition {
    name("ExpoLinearGradientManager")

    view {
      return EXLinearGradient()
    }
  }
}
