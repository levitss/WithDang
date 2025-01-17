package com.earth.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.earth.mapper.ComuMapper;
import com.earth.domain.CommentDTO;
import com.earth.domain.ComuDTO;
import com.earth.domain.SearchItem;


@Service
public class ComuServiceImpl implements ComuService{
	
	@Autowired
	ComuMapper comuMapper;

	@Override
	public int post(ComuDTO comuDTO) throws Exception {
		return comuMapper.insert(comuDTO);
	}

	@Override
	public int deletePost(Integer post_id, String user_email) throws Exception {
		Map map = new HashMap();
		map.put("post_id", post_id);
		map.put("user_email", user_email);
		
		return comuMapper.delete(map);
	}

	@Override
	public int updatePost(ComuDTO comuDTO) throws Exception {
		return comuMapper.update(comuDTO);
	}

	@Override
	public ComuDTO readPost(Integer post_id) throws Exception {
		ComuDTO comuDTO = comuMapper.select(post_id);
		String user_name = comuMapper.selectUserName(comuDTO.getUser_email());
		comuDTO.setUser_name(user_name);
		comuMapper.increaseViewCnt(post_id);
		return comuDTO;
	}

	@Override
	public int getSearchResultCnt(SearchItem sc) throws Exception {
		return comuMapper.searchResultCnt(sc);
	}

	@Override
	public List<ComuDTO> getSearchSelectPage(SearchItem sc) throws Exception {
		List<ComuDTO> comuDTOs = comuMapper.searchSelectPage(sc);
		
		for (ComuDTO c : comuDTOs) {
			String user_name = comuMapper.selectUserName(c.getUser_email());
			c.setUser_name(user_name);
		}
		
		return comuDTOs;
	}

	@Override
	public int comment(CommentDTO commentDTO) throws Exception {
		return comuMapper.comment(commentDTO);
	}

	@Override
	public int deleteComment(Integer cmt_id, String user_email) throws Exception {
		Map map = new HashMap();
		map.put("cmt_id", cmt_id);
		map.put("user_email", user_email);
		
		return comuMapper.deleteComment(map);
	}
}

