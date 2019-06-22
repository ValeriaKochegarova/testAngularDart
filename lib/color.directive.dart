
import 'package:angular/angular.dart';
import 'package:angular/core.dart';

@Directive(
  selector: '[color]'
)

class ChangeColorDirective {
  bool _hasView = false;

  TemplateRef _templateRef;
  ViewContainerRef _viewContainer;

  ChangeColorDirective(this._templateRef, this._viewContainer);

  @Input()
  set color(bool changeColor) {
    if (!changeColor && !_hasView) {
      _viewContainer.createEmbeddedView(_templateRef);
      _hasView = true;
    } else if (changeColor && _hasView) {
      _viewContainer.clear();
      _hasView = false;
    }
  }
}