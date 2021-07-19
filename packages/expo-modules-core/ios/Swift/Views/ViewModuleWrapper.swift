
public class ViewModuleWrapper: RCTViewManager {
  let wrappedModuleHolder: ModuleHolder

  init(_ wrappedModuleHolder: ModuleHolder) {
    self.wrappedModuleHolder = wrappedModuleHolder
  }

  @objc
  public func name() -> String {
    return "ViewManagerAdapter_ExpoLinearGradient"
  }

  @objc
  public override class func moduleName() -> String! {
    return "ExpoLinearGradientManager"
  }

  public override func view() -> UIView! {
    guard let view = wrappedModuleHolder.definition.viewFactory?.create() else {
      fatalError("Module `\(wrappedModuleHolder.name)` doesn't define any view factory.")
    }
    return view
  }

  @objc
  func set_proxiedProperties(_ json: Any?, forView view: UIView, withDefaultView defaultView: UIView) {
    print("Got proxied properties: \(json!)")
  }
}
