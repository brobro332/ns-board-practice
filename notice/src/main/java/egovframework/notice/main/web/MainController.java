package egovframework.notice.main.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@GetMapping("/main.do")
	public String mainPage() {

		log.debug("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
		log.debug("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
		
		return "main";
	}
}
