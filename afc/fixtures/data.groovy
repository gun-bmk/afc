package afc

import org.joda.time.*

import afc.*

fixture{
	def now = new LocalDateTime()

	team01(Team, name:'Manchester united', shortName:'MTD', logo: new File("fixtures/team01.jpg").bytes)
	team02(Team, name:'Manchester city', shortName:'MCT', logo: new File("fixtures/team02.jpg").bytes)
	team03(Team, name:'Stoke city', shortName:'STC', logo: new File("fixtures/team03.jpg").bytes)
	team04(Team, name:'Chelsea', shortName:'CHE', logo: new File("fixtures/team04.jpg").bytes)
	team05(Team, name:'Arsenal', shortName:'ASN', logo: new File("fixtures/team05.jpg").bytes)
	team06(Team, name:'Newcastle', shortName:'NEC', logo: new File("fixtures/team06.jpg").bytes)
	team07(Team, name:'Liverpool', shortName:'LVP', logo: new File("fixtures/team07.jpg").bytes)
	team08(Team, name:'Hull city', shortName:'HUL', logo: new File("fixtures/team08.jpg").bytes)
	
	match01(Match, home:team01, away:team02, date:now, place:"Old trafford")
	match02(Match, home:team04, away:team03, date:now, place:"Stamford bridge")
	match03(Match, home:team05, away:team06, date:now, place:"Emirates Stadium")
    match04(Match, home:team07, away:team08, date:now, place:"Anfield Stadium")

   	cmt1(Commentator, name:"อัฐชพงษ์ สีมา", email:"cautchapong.s@gmail.com ", image: new File("fixtures/cm01.jpg").bytes)
	cmt2(Commentator, name:"ธีรยุทธ์ บันหนองสา", email:"cteerayut.b@gmail.com", image: new File("fixtures/cm02.jpg").bytes)
	cmt3(Commentator, name:"โยธิน อารีย์การเลิศ", email:"cyothin.a@gmail.com", image: new File("fixtures/cm03.jpg").bytes)
	cmt4(Commentator, name:"วีรศักดิ์ นิลกลัด", email:"cweerasak.n@gmail.com", image: new File("fixtures/cm04.jpg").bytes )
	cmt5(Commentator, name:"สาธิต กรีกุล", email:"csathit.k@gmail.com", image: new File("fixtures/cm05.jpg").bytes)
	cmt6(Commentator, name:"กิตติกร อุดมผล", email:"ckittikorn.a@gmail.com", image: new File("fixtures/cm06.jpg").bytes)
	cmt7(Commentator, name:"อภิสิทธิ์ อภิสุขสิริ", email:"capisit.a@gmail.com", image: new File("fixtures/cm07.jpg").bytes)
	cmt8(Commentator, name:"ยุทธชัย จิรขวัญฉาย", email:"cyuttachai.j@gmail.com", image: new File("fixtures/cm08.jpg").bytes)
	cmt9(Commentator, name:"พีระณัฐ จําปาเงิน", email:"cpeeranut.j@gmail.com", image: new File("fixtures/cm09.jpg").bytes)
	cmt10(Commentator, name:"ทรงศักดิ์ วรรณวิจิตร", email:"csongsak.w@gmail.com", image: new File("fixtures/cm10.jpg").bytes)
	cmt11(Commentator, name:"เอก ฮิมสกุล", email:"ceak.h@gmail.com", image: new File("fixtures/cm11.jpg").bytes)
	cmt12(Commentator, name:"สุวินัย อ่อนสอาด", email:"csuwinai.a@gmail.com", image: new File("fixtures/cm12.jpg").bytes)

	mc1(MatchCommentator,commentator:cmt1, match:match01)
    mc2(MatchCommentator,commentator:cmt2, match:match02)
    mc3(MatchCommentator,commentator:cmt3, match:match03)
    mc4(MatchCommentator,commentator:cmt4, match:match04)
	
	cm1(Comment, comment:"เยี่ยมมากเลยครับ", authorName: "LVFAN", timeStamp: now, likeCount: 0, match: match01)
	cm2(Comment, comment:"ห่วยฮะ", authorName: "หึหึ", timeStamp: now, likeCount: 4, match :match01)
	cm3(Comment, comment:"what da hell", authorName: "ไม่บอกครับ", timeStamp: now, likeCount: 0, match: match01)
	cm4(Comment, comment:"ไม่เจ๊งก็เจ๊า ครับแบบนี้", authorName: "เด็กผีฮะ", timeStamp: now, likeCount: 1, match: match02)
	cm5(Comment, comment:"good voice", authorName: "เชลซีจงเจริญ", timeStamp: now, likeCount: 3, match: match03)
}

