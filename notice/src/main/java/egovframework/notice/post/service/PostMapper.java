package egovframework.notice.post.service;

import egovframework.notice.post.vo.PostVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("postMapper")
public interface PostMapper {
	
	public void regPost(PostVo postvo) throws Exception;
}
