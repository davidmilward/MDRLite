package uk.co.mdc.web;

import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import uk.co.mdc.model.ConceptualDomain;

@RequestMapping("/conceptualdomains")
@Controller
@RooWebScaffold(path = "conceptualdomains", formBackingObject = ConceptualDomain.class)
@RooWebJson(jsonObject = ConceptualDomain.class)
public class ConceptualDomainController {
}
