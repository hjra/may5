package net.may5.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import net.may5.service.ItemService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileController {
 
	@Autowired
	private ItemService itemService;
	@RequestMapping(value = "/file.do", method = RequestMethod.POST)
    public String fileSubmit(@RequestParam Map<String,String> param,HttpServletRequest request, Model model) {
    	
    	//insert map
    	Map<String,String> insertParam = new HashMap<String,String>();
    	
    	//id generator
    	String idValue = "";
		String idArray[] = {"","","","",""};
		
		for(Entry<String, MultipartFile> entry : ((MultipartHttpServletRequest) request).getFileMap().entrySet() ){
			String key               = entry.getKey();
			MultipartFile uploadFile = entry.getValue();
			
			// file이 첨부되어있는경우 작동
			if( uploadFile.getSize() > 0 ){
				//파일 저장
				String resourcePath = "/resources/newImage";
				String fileName     = uploadFile.getOriginalFilename();
				String uriPath      = request.getSession().getServletContext().getContextPath()+resourcePath+"/"+fileName;
				String filePath     = request.getSession().getServletContext().getRealPath(resourcePath)+"/"+fileName;
				//실제저장
				try {
	                File file = new File(filePath);
	                uploadFile.transferTo(file);
				}  catch (IOException e) {
		    		e.printStackTrace();
		    	}
                // 파라메터 값
				insertParam.put(key,uriPath);
				//System.out.println("save=>file:/"+filePath);
				//System.out.println("uri =>/"+uriPath);
			} else {
				insertParam.put(key,"");
			}
		}
		
		//폼 내용 불러오기
    	for (Entry<String, String> entry : param.entrySet()) {
    		// parameter key value
    		String  key   = entry.getKey();
    		String  value = entry.getValue();
    		
    		//System.out.println("evaluate => "+key+"  =>  "+value);
    		
    		if(key.indexOf("item_") == 0){
    			//id와 관련된 값
    			switch(key.substring(5)){
    				case "size"  : idArray[0] = value.toUpperCase(); break;
    				case "cream" : idArray[1] = value.toUpperCase(); break;
    				case "fruit1": idArray[2] = value.toUpperCase(); break;
    				case "fruit2": idArray[3] = value.toUpperCase(); break;
    				case "fruit3": idArray[4] = value.toUpperCase(); break;
    			}
    		} else {
    			//그냥 파라메터들
    			insertParam.put(key, value);
    		}
    	}
    	
    	//id도 만듬
    	for(int i=0;i<5;i++){ idValue += idArray[i]; }
    	insertParam.put("ITEMID",idValue);
    	
    	//IMG1
    	insertParam.put("ITEMIMG1","");
    	
    	//들여보낼 폼 이름 확인
    	System.out.println("insert params result");
    	System.out.println(insertParam);
    	
    	
    	itemService.setNewItem(insertParam);
    	//model.addAttribute("setNewItem", );
    	
    	return "redirect:menuListMng.do";    	
 
	}}
