package com.example.test;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.example.config.ApplicationConfig;
import com.example.dao.HouseDao;
import com.example.dao.MemberDao;
import com.example.dao.MemberDetailDao;
import com.example.dao.QuestionDao;
import com.example.dao.RegistHouseDao;
import com.example.dao.ReplyDao;
import com.example.dao.ReportDao;
import com.example.dto.House;
import com.example.dto.Member;
import com.example.dto.MemberDetail;
import com.example.dto.Question;
import com.example.dto.RegistHouse;
import com.example.dto.Reply;
import com.example.dto.Report;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class DaoTest {

	private static Logger logger = LoggerFactory.getLogger(DaoTest.class);
	
   @Autowired
   MemberDao mdao;
   @Autowired
   HouseDao hdao;
   @Autowired
   RegistHouseDao rhdao;
   @Autowired
   QuestionDao qdao;
   @Autowired
   ReplyDao rdao;
   @Autowired
   ReportDao rpdao;
   @Autowired
   MemberDetailDao mddao;
   @Autowired
   SqlSessionTemplate template;

   /** MEMBER TEST */
   @Test
   public void testSelectAllMember() {
      List<Member> member = mdao.selectAllMember(template);
      logger.trace("List: {}", member);
   }

   @Test
   public void testSelectByIdMember() {
      Member member = mdao.selectByIdMember(template, "admin");
      logger.trace("List: {}", member);
   }

   @Test
   public void testInsertMember() {
      Member member = new Member("yang", "양희준", "1423", "SKT", "01029051216", "yang@naver.com", "male", "/index.jsp/img", "안녕하세요", 2, "회원");
      int result = mdao.insertMember(template, member);
      logger.trace("List: {}", member);
   }

   @Test
   public void testUpdateMember() {
      Member member = new Member("yang", "양희준", "1425", "U+", "01029051217", "yang1@naver.com", "male", "/index.jsp/img", "안녕하세요!!", 2, "회원");
      int result = mdao.insertMember(template, member);
      logger.trace("List: {}", member);
   }

   @Test
   public void testDeleteMeber() {
      int result = mdao.deleteMember(template, "hong", "1234");
      /* mdao.deleteMember(template, "hong", "1234"); */
      logger.trace("List: {}", result);

   }

   @Test
   public void testFindIdMember() {
      String result = mdao.selectId(template, "hh", "abc@naver.com");
      logger.trace("id: {}", result);

   }

   /** HOUSE TEST */
   @Test
   public void testSelectAllHouse() {
      List<House> house = hdao.selectAllHouse(template);
      logger.trace("List: {}", house);

   }

   @Test
   public void testSelectByNoHouse() {
      House house = hdao.selectByNoHouse(template, 1);
      logger.trace("List: {}", house);

   }

   @Test
   public void testSelectByIdHouse() {
      List<House> house = hdao.selectByIdHouse(template, "hong");
      logger.trace("List: {}", house);

   }

   @Test
   public void testInsertHouse() {
      House house = new House(2, "대전빌라", "천안시 서북구 두정동", 350000, 8, "hello", "hong", 2, "2개", "1개", "3명", "tv", "aircon", "wifi", "elebe", "washing", "/index.jsp/img.jpg", "일");
      int result = hdao.insertHouse(template, house);
      logger.trace("List: {}", house);

   }

   @Test
   public void testUpdateHouse() {
      House house = new House(1, "빌라", "대전시 유성구 장대동", 400000, 7, "hello", "hong", 2);
      int result = hdao.updateHouse(template, house);
      logger.trace("List: {}", house);

   }

   @Test
   public void testDeleteHouse() {
      House house = new House(2, "대전빌라", "대전시 유성구 장대동", 400000, 7, "hello");
      int result = hdao.deleteHouse(template, 1);
      logger.trace("List: {}", house);

   }

   /** REGIST_HOUSE */
   @Test
   public void testSelectAllRegistHouse() {
      List<RegistHouse> rhouse = rhdao.selectAllRegistHouse(template);
      logger.trace("List: {}", rhouse);

   }

   @Test
   public void testSelectByIdRegistHouse() {
      RegistHouse rhouse = rhdao.selectByIdRegistHouse(template, 1);
      logger.trace("List: {}", rhouse);

   }

   // date type 넣는 Query 생각하기
   @Test
   public void testInsertRegistHouse() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      RegistHouse rhouse = new RegistHouse(2, dd, dd, 1, "hong");
      int result = rhdao.insertRegistHouse(template, rhouse);
      logger.trace("List: {}", rhouse);

   }

   // date type 넣는 Query 생각하기
   @Test
   public void testUpdateRegistHouse() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      RegistHouse rHouse = new RegistHouse(2, dd, dd);
      int result = rhdao.updateRegistHouse(template, rHouse);
      logger.trace("List: {}", rHouse);

   }

   @Test
   public void testDeleteRegistHouse() {
      int result = rhdao.deleteRegistHouse(template, 1);
      rhdao.deleteRegistHouse(template, 1);
      logger.trace("List: {}", result);

   }

   /** QUESTION_TEST */
   @Test
   public void testSelectAllQuestion() {
      List<Question> question = qdao.selectAllQuestion(template);
      logger.trace("List: {}", question);

   }

   @Test
   public void testSelectByQuestNo() {
      Question question = qdao.selectByQuestNo(template, 99);
      logger.trace("List: {}", question);

   }
   @Test
   public void testSelectByQuesId() {
      List<Question> question = qdao.selectByMemId(template, "jang");
      logger.trace("List: {}", question);

   }
   @Test
   public void testInsertQuestion() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      Question question = new Question(2, "신고합니다.", "예약자가 입금을 하지 않습니다.", dd, "hong", 2, 2);
      int result = qdao.insertQuestion(template, question);
      logger.trace("List: {}", question);

   }

   @Test
   public void testUpdateQuestion() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      Question question = new Question(2, "신고합니다.", "예약자가 입금을 하지 않습니다. 조치를 취해주세요.", dd, "hong", 2, 2);
      int result = qdao.updateQuestion(template, question);
      logger.trace("List: {}", question);

   }

   @Test
   public void testDeletQuestion() {
      int result = qdao.deleteQuestion(template, 1);
      qdao.deleteQuestion(template, 1);
      logger.trace("List: {}", result);

   }

   /** REPLY_TEST */
   @Test
   public void testSelectAllReply() {
      List<Reply> reply = rdao.selectAllReply(template);
      logger.trace("List: {}", reply);

   }

   @Test
   public void testSelectByReplyNo() {
      Reply reply = rdao.selectByIdReplyNo(template, 1);
      logger.trace("List: {}", reply);

   }
   
   @Test
   public void testSelectByHouseNo() {
	   List<Reply> reply = rdao.selecyByIdHouseNo(template, 99);
      logger.trace("List: {}", reply);

   }

   @Test
   public void testInsertReply() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      Reply reply = new Reply(2, "정말 깨끗하고 좋았어요.", dd, 1, "hong", 2);
      int result = rdao.insertReply(template, reply);
      logger.trace("List: {}", reply);

   }

   @Test
   public void testUpdateReply() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      Reply reply = new Reply(2, "정말 깨끗하고 좋았어요. 쾌적합니다.", dd, "hong", 2);
      int result = rdao.updateReply(template, reply);
      logger.trace("List: {}", reply);

   }

   @Test
   public void testDeletReply() {
      int result = rdao.deleteReply(template, 1);
      rdao.deleteReply(template, 1);
      logger.trace("List: {}", result);

   }

   /** REPORT_TEST */
   @Test
   public void testSelectAllReport() {
      List<Report> report = rpdao.selectAllReport(template);
      logger.trace("List: {}", report);

   }

   @Test
   public void testSelectByReportNo() {
      Report report = rpdao.selectByReport(template, 1);
      logger.trace("List: {}", report);

   }

   @Test
   public void testInsertReport() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      Report report = new Report(2, "블랙리스트", "이사람 신고합니다.", "이 사람 사기꾼이에여~", dd, "hong", 2, 0);
      int result = rpdao.insertReport(template, report);
      logger.trace("List: {}", report);

   }

   @Test
   public void testUpdateReport() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      Report report = new Report(2, "블랙리스트", "이사람 신고합니다.", "이 사람 사기꾼이에여~ 할아버지의 명예를 걸고 찾아낼꺼에여", dd, "hong", 2, 2);
      int result = rpdao.updateReport(template, report);
      logger.trace("List: {}", report);

   }

   @Test
   public void testDeletReport() {
      int result = rpdao.deleteReport(template, 1);
      rpdao.deleteReport(template, 1);
      logger.trace("List: {}", result);

   }

   /** MEMBERDEATIL_TEST */
   @Test
   public void testSelectAllMemberDetail() {
      List<MemberDetail> memberDetail = mddao.selectAllMemberDetail(template);
      logger.trace("List: {}", memberDetail);

   }

   @Test
   public void testSelectByMemberDetailNo() {
      MemberDetail memberDetail = mddao.selectByMemberDetail(template, 1);
      logger.trace("List: {}", memberDetail);

   }

   @Test
   public void testInsertMemberDetail() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      MemberDetail memberDetail = new MemberDetail(3, "회원");
      int result = mddao.insertMemberDetail(template, memberDetail);
      logger.trace("List: {}", result);

   }

   @Test
   public void testUpdateMemberDetail() {
      Calendar cd = Calendar.getInstance();
      Date dd = cd.getTime();
      MemberDetail memberDetail = new MemberDetail(2, "최고관리자");
      int result = mddao.updateMemberDetail(template, memberDetail);
      logger.trace("List: {}", result);

   }

   @Test
   public void testDeletMemberDetail() {
      int result = mddao.deleteMemberDetail(template, 2);
      logger.trace("List: {}", result);

   }

}