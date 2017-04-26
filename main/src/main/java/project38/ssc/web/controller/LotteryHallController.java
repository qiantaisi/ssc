package project38.ssc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
//import project38.ssc.web.result.AllSscOpenTimeResult;


@Controller
@RequestMapping(value = "/lottery") //请求路径
public class LotteryHallController extends BaseController {
//    @RequestMapping(value = "/lotteryhall.html", method = {RequestMethod.GET, RequestMethod.POST})
//    public ModelAndView gouCaiDaTing() {
//        Map<String, Object> lotteryMao = new HashMap<String, Object>();
//
//        return this.renderView("lottery/lotteryhall", lotteryMao);
//
//    }
//
//    @RequestMapping(value = "/allOpenTime.json", method = {RequestMethod.GET, RequestMethod.POST})
//    @ResponseBody
//    public String gouCaiDaTJson () {
//        AllSscOpenTimeResult allResult = ApiUtils.getAllSscOpenTime();
//        return this.renderJson(allResult);
//    }

}
