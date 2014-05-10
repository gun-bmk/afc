package afc

import org.joda.time.*

import afc.*

fixture{
	def now = new LocalDateTime()

	team01(Team, name:'Manchester united', shortName:'MTD')
	team02(Team, name:'Manchester city', shortName:'MCT')
	team03(Team, name:'Stoke city', shortName:'STC')
	team04(Team, name:'Chelsea', shortName:'CHE')
	team05(Team, name:'Arsenal', shortName:'ASN')
	team06(Team, name:'Newcastle', shortName:'NEC')
	team07(Team, name:'Liverpool', shortName:'LVP')
	team08(Team, name:'Hull city', shortName:'HUL')
	
	match01(Match, home:team01, away:team02, date:now, place:"Old trafford")
	match02(Match, home:team04, away:team03, date:now, place:"Stamford bridge")
	match03(Match, home:team05, away:team06, date:now, place:"Emirates Stadium")
    match04(Match, home:team07, away:team08, date:now, place:"Anfield Stadium")

   	cmt1(Commentator, name:"อัฐชพงษ์ สีมา", email:"cautchapong.s@gmail.com ")
	cmt2(Commentator, name:"ธีรยุทธ์ บันหนองสา", email:"cteerayut.b@gmail.com" )
	cmt3(Commentator, name:"โยธิน อารีย์การเลิศ", email:"cyothin.a@gmail.com" )
	cmt4(Commentator, name:"วีรศักดิ์ นิลกลัด", email:"cweerasak.n@gmail.com" )
	cmt5(Commentator, name:"สาธิต กรีกุล", email:"csathit.k@gmail.com")
	cmt6(Commentator, name:"กิตติกร อุดมผล", email:"ckittikorn.a@gmail.com")
	cmt7(Commentator, name:"อภิสิทธิ์ อภิสุขสิริ", email:"capisit.a@gmail.com")
	cmt8(Commentator, name:"ยุทธชัย จิรขวัญฉาย", email:"cyuttachai.j@gmail.com")
	cmt9(Commentator, name:"พีระณัฐ จําปาเงิน", email:"cpeeranut.j@gmail.com")
	cmt10(Commentator, name:"ทรงศักดิ์ วรรณวิจิตร", email:"csongsak.w@gmail.com")
	cmt11(Commentator, name:"เอก ฮิมสกุล", email:"ceak.h@gmail.com")
	cmt12(Commentator, name:"สุวินัย อ่อนสอาด", email:"csuwinai.a@gmail.com")

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

