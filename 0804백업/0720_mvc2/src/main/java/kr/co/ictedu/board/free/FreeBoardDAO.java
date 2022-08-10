package kr.co.ictedu.board.free;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ictedu.util.dto.SearchDTO;

@Repository
public class FreeBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*
	 * 핵심 메소드 목록 : searchList, searchListCount, update, delete, detail, write (프로젝트때 활용가능)
	 */
	
	/*
	 * 연습 메소드 목록 : search1Test, pagingList, totalListCount, list
	 */
	
	public List<FreeBoardDTO> searchList(SearchDTO dto) {
		List<FreeBoardDTO> list = null;
		list = sqlSession.selectList("FreeBoardMapper.searchList", dto);
		return list;
	}//searchList
	
	public int searchListCount(SearchDTO dto) {
		int totalCount = 0;
		totalCount = sqlSession.selectOne("FreeBoardMapper.searchListCount", dto);
		return totalCount;
	}//searchListCount
	
	public List<FreeBoardDTO> search1Test(SearchDTO dto) {
		List<FreeBoardDTO> list = null;
		list = sqlSession.selectList("FreeBoardMapper.search1Test", dto);
		return list;
	}//search1Test
	
	public List<FreeBoardDTO> pagingList(int limitNum) {
		List<FreeBoardDTO> list = null;
		list = sqlSession.selectList("FreeBoardMapper.pagingList", limitNum);
		return list;
	}//pagingList
	
	public int totalListCount() {
		int totalCount = 0;
		totalCount = sqlSession.selectOne("FreeBoardMapper.totalListCount");
		return totalCount;
	}//totalListCount
	
	public int update(FreeBoardDTO dto) {
		int successCount = 0;
		successCount = sqlSession.update("FreeBoardMapper.update", dto);
		return successCount;
	}//update
	
	public int delete(FreeBoardDTO dto) {
		int successCount = 0;
		successCount = sqlSession.delete("FreeBoardMapper.delete", dto);
		return successCount;
	}//delete
	
	public FreeBoardDTO detail( String board_no ) {
		FreeBoardDTO dto = null;
		dto = sqlSession.selectOne("FreeBoardMapper.detail", board_no);
		return dto;
	}//detail
	
	public void incrementViewCnt(String board_no) {
		sqlSession.update("FreeBoardMapper.incrementViewCnt", board_no);
	}//incrementViewCnt
	
	public int write( FreeBoardDTO dto ) {
		int successCount = 0;
		successCount = sqlSession.insert("FreeBoardMapper.write", dto);
		return successCount;
	}//write
	
	//sqlSession.selectOne : select 결과가 오직 하나 일때.
	//sqlSession.selectList : select 결과가 너무 많아서 List 하나에 모두 담아 주는 메소드.
	public List<FreeBoardDTO> list() {
		List<FreeBoardDTO> list = null;
		list = sqlSession.selectList("FreeBoardMapper.list");
		return list;
	}

}//class
