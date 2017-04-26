package project38.ssc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.WebInfoResult;
import project38.api.utils.ApiUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2016/11/8.
 */

@Controller
@RequestMapping("/help")
public class HelpController extends BaseController{
    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1);
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(2));
        modelMap.put("webName",webInfoResult.getWebName());
        return this.renderView("help/index", modelMap);
    }

    @RequestMapping(value = "/{file}.html", method = RequestMethod.GET)
    public ModelAndView file(@PathVariable String file) {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1);
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        modelMap.put("webName",webInfoResult.getWebName());
        return this.renderView("help/" + file, modelMap);
    }

    @RequestMapping(value = "/{folder}/{file}.html", method = RequestMethod.GET)
    public ModelAndView folderFile(@PathVariable String folder, @PathVariable String file) {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1);
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        modelMap.put("webName",webInfoResult.getWebName());
        modelMap.put("logo", ApiUtils.getLogo(2));
        return this.renderView("help/" + folder + "/" + file, modelMap);
    }
}
