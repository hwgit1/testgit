package kr.co.ictedu.board.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ictedu.board.free.FreeBoardDTO;
import kr.co.ictedu.util.dto.SearchDTO;

@Repository
public class MemberBoardDAO {

	@Autowired
	private SqlSession sqlSession;

	public int update(MemberBoardDTO dto) {
		int successCount = 0;
		successCount = sqlSession.update("MemberBoardMapper.update", dto);
		return successCount;
	}//update
	
	public int delete(MemberBoardDTO dto) {
		int successCount = 0;
		successCount = sqlSession.delete("MemberBoardMapper.delete", dto);
		return successCount;
	}//delete
	
	public MemberBoardDTO detail(String board_no) {
		MemberBoardDTO dto = null;
		dto = sqlSession.selectOne("MemberBoardMapper.detail", board_no);
		return dto;
	}//detail

	public void incrementViewCnt(String board_no) {
		sqlSession.update("MemberBoardMapper.incrementViewCnt", board_no);
	}//incrementViewCnt
	
	public int write(MemberBoardDTO dto) {
		int successCount = 0;
		successCount = sqlSession.insert("MemberBoardMapper.write", dto);
		return successCount;
	}
	
	public List<MemberBoardDTO> searchList( SearchDTO dto ) {
		List<MemberBoardDTO> list = null;
		System.out.println(dto);
		list = sqlSession.selectList("MemberBoardMapper.searchList", dto);
		System.out.println(list);
		return list;
	}//searchList

	public int searchListCount( SearchDTO dto ) {
		int totalCount = 0;
		totalCount = sqlSession.selectOne("MemberBoardMapper.searchListCount", dto);
		return totalCount;
	}//searchListCount

}//class
