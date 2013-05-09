package uk.co.mdc.web;

import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import uk.co.mdc.model.UmlModel;

@RequestMapping("/umlmodels")
@Controller
@RooWebScaffold(path = "umlmodels", formBackingObject = UmlModel.class)
@RooWebJson(jsonObject = UmlModel.class)
public class UmlModelController {
}
