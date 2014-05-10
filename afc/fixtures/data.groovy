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

    cm1(Commentator, name:"อัฐชพงษ์ สีมา", email:"cautchapong.s@gmail.com ")
	cm2(Commentator, name:"ธีรยุทธ์ บันหนองสา", email:"cteerayut.b@gmail.com" )
	cm3(Commentator, name:"โยธิน อารีย์การเลิศ", email:"cyothin.a@gmail.com" )
	cm4(Commentator, name:"วีรศักดิ์ นิลกลัด", email:"cweerasak.n@gmail.com" )
	cm5(Commentator, name:"สาธิต กรีกุล", email:"csathit.k@gmail.com", image: new File("fixtures/satit.jpg").bytes)
	cm6(Commentator, name:"กิตติกร อุดมผล", email:"ckittikorn.a@gmail.com")
	cm7(Commentator, name:"อภิสิทธิ์ อภิสุขสิริ", email:"capisit.a@gmail.com")
	cm8(Commentator, name:"ยุทธชัย จิรขวัญฉาย", email:"cyuttachai.j@gmail.com")
	cm9(Commentator, name:"พีระณัฐ จําปาเงิน", email:"cpeeranut.j@gmail.com")
	cm10(Commentator, name:"ทรงศักดิ์ วรรณวิจิตร", email:"csongsak.w@gmail.com")
	cm11(Commentator, name:"เอก ฮิมสกุล", email:"ceak.h@gmail.com")
	cm12(Commentator, name:"สุวินัย อ่อนสอาด", email:"csuwinai.a@gmail.com")

	mc1(MatchCommentator,commentator:cm1, match:match01)
    mc2(MatchCommentator,commentator:cm2, match:match02)
    mc3(MatchCommentator,commentator:cm3, match:match03)
    mc4(MatchCommentator,commentator:cm4, match:match04)
}

