package project38.ssc.web.controller;


import project38.api.common.utils.JSONUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 优惠活动控制器
 */
@Controller
@RequestMapping(value = "yhhd")
public class PreferentialActivityController extends BaseController{

//    @RequestMapping(value = "youhhdong.html",method = RequestMethod.GET)
//    public ModelAndView youHHDong(){
//        ModelAndView mav=new ModelAndView();
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        List<MonthResult> listmon=new ArrayList<MonthResult>();
//        Calendar ca=Calendar.getInstance();
//        SimpleDateFormat sdf=new SimpleDateFormat("MM");
//        for(int i=0;i<3;i++){
//            MonthResult mr=new MonthResult();
//            if(i==0){
//                ca.add(Calendar.MONTH,0);
//            }else{
//                ca.add(Calendar.MONTH,-1);
//            }
//            mr.setMonthnum(sdf.format(ca.getTime()));
//            listmon.add(mr);
//        }
//        modelMap.put("listMoths",listmon);
//
//        return this.renderView("yhhd/PreferentialActivity",modelMap);
//    }
//
//
//    @RequestMapping(value="monthdetail.json",method = {RequestMethod.GET,RequestMethod.POST})
//    @ResponseBody
//    public String ajaxMonthDetail(HttpServletRequest request, HttpServletResponse response,String number){
//
//        String details="[{\"md_id\":\"0001\",\"md_title\":\"600w彩票1，注册就送100%彩金！\",\"md_content\":\"123456\",\"md_date\":\"2016-11-06\",\"md_img\":\"${resPath}img/img9.jpg\"},"+
//          "{\"md_id\":\"0001\",\"md_title\":\"600w彩票2，注册就送100%彩金！\",\"md_content\":\"123456\",\"md_date\":\"2016-10-06\",\"md_img\":\"${resPath}img/img9.jpg\"},"+
//          "{\"md_id\":\"0001\",\"md_title\":\"600w彩票3，注册就送100%彩金！\",\"md_content\":\"123456\",\"md_date\":\"2016-9-06\",\"md_img\":\"${resPath}img/img9.jpg\"}]";
//        List<MonthDetailResult> mdr= JSONUtils.toArray(details,MonthDetailResult.class);
//        return this.renderJson(mdr);
//    }



}
