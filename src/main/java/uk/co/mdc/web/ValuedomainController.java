package uk.co.mdc.web;

import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import uk.co.mdc.model.Valuedomain;

@RequestMapping("/valuedomains")
@Controller
@RooWebScaffold(path = "valuedomains", formBackingObject = Valuedomain.class)
@RooWebJson(jsonObject = Valuedomain.class)
public class ValuedomainController {
}
