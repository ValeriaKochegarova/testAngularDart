import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_toggle/material_toggle.dart';

import 'package:testDart/color.directive.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [MaterialButtonComponent ,MaterialToggleComponent, NgClass, NgFor, ChangeColorDirective
  ],
)
class AppComponent {

  bool basicState;
  bool changeColor = false;
  bool btEnabled = false;
}
