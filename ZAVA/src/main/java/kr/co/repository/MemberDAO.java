package kr.co.repository;

import java.util.List;

import kr.co.domain.MemberVO;

public interface MemberDAO {
	
	public List<MemberVO> list();

	public MemberVO read(String mid);

	public MemberVO login(MemberVO vo);

	public void insert(MemberVO vo);

	public void update(MemberVO vo);

	public MemberVO updateUI(String mid);

	public void delete(MemberVO vo);


}
