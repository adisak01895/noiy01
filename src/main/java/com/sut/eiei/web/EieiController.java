package com.sut.eiei.web;
import com.sut.eiei.domain.Eiei;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/eieis")
@Controller
@RooWebScaffold(path = "eieis", formBackingObject = Eiei.class)
public class EieiController {
}
