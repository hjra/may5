package net.may5.controller;

import java.io.File;
import java.io.IOException;

import net.may5.dto.FileDTO;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileController {
 
    @RequestMapping(value = "/file.do", method = RequestMethod.GET)
    public ModelAndView fileForm() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("fileForm");
        return mv;
    }
     
    @RequestMapping(value = "/file.do", method = RequestMethod.POST)
    public String fileSubmit(FileDTO dto) {
        MultipartFile uploadfile = dto.getUploadfile();
        if (uploadfile != null) {
            String fileName = uploadfile.getOriginalFilename();
            dto.setFileName(fileName);
            try {
                // 1. FileOutputStream 사용
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
                 
                // 2. File 사용
                File file = new File("/Users/khy6683/Documents/youngGit/may5/CShop/src/main/webapp/resources/" + fileName);
                // 이제 이 이미지가 메뉴리스트와 메뉴리스트엠엔지에 등록이 되어야 한다.
                uploadfile.transferTo(file);
               
            } catch (IOException e) {
                e.printStackTrace();
            } // try - catch
        } // if
        // 데이터 베이스 처리를 현재 위치에서 처리
        return "redirect:menuListMng.do"; // 리스트 요청으로 보내야하는데 일단 제외하고 구현
    }
}