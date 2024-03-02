package egovframework.notice.post.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import egovframework.notice.post.vo.PostVo;

@Service
@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
public class PostServiceImpl implements PostService {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Resource(name = "postMapper")
	private PostMapper mapper;
	
	@Override
	public void regPost(PostVo postVo) throws Exception {
		try {
			log.debug("매퍼 요청 전");
			
			mapper.regPost(postVo);
			
			log.debug("매퍼 요청 후");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
