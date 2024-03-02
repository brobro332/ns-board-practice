package egovframework.notice.post.web;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.notice.post.service.PostService;
import egovframework.notice.post.vo.PostVo;

@Controller
public class PostController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private PostService service;
	
	@RequestMapping("/post.do")
	public void regPost(PostVo vo) throws Exception {

		vo.setPostId(1L);
		vo.setTitle("test");
		vo.setContent("test");
		vo.setCreatedDate(Timestamp.valueOf(LocalDateTime.now()));
		vo.setLastModifiedDate(Timestamp.valueOf(LocalDateTime.now()));
		vo.setMemberId(4L);
		vo.setPartyId(5L);
		
		service.regPost(vo);
		
	}
}
