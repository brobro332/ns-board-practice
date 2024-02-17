package egovframework.notice.main.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/main.do")
	public String mainPage() {
		
		final Logger logger = LoggerFactory.getLogger(MainController.class);
		
		logger.debug("hello");
		
		return "main";
	}
}
