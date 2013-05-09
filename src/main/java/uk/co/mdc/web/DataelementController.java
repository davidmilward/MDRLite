package uk.co.mdc.web;

import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import uk.co.mdc.model.Dataelement;

@RequestMapping("/dataelements")
@Controller
@RooWebScaffold(path = "dataelements", formBackingObject = Dataelement.class)
@RooWebJson(jsonObject = Dataelement.class)
public class DataelementController {
}
