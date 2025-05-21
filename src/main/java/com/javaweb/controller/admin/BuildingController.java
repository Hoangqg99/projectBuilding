package com.javaweb.controller.admin;

import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.BuildingSearchResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {

    @RequestMapping(value = "/admin/building-list", method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingSearchResponse buildingSearchResponse, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch", buildingSearchResponse);
        //Xuong DB -- lay dataa
        List<BuildingSearchResponse> responseList = new ArrayList<>();
        BuildingSearchResponse item1 = new BuildingSearchResponse();
        item1.setId(1L);
        item1.setName("ACM Building");
        item1.setAddress("130 Quang Trung, Phạm Ngũ Lão, Quận 1");
        item1.setNumberOfBasement(2L);
        item1.setManagerName("Anh Long");
        item1.setRentArea("100, 200, 300");
        item1.setManagerPhoneNumber("095783234");

        BuildingSearchResponse item2 = new BuildingSearchResponse();
        item2.setId(2L);
        item2.setName("DBS Building");
        item2.setAddress("130 Quang Trung, Phạm Ngũ Lão, Quận 1");
        item2.setNumberOfBasement(2L);
        item2.setManagerName("Anh Chiến");
        item2.setRentArea("100, 200, 300");
        item2.setManagerPhoneNumber("095783234");
        responseList.add(item1);
        responseList.add(item2);
        mav.addObject("buildingList", responseList);
        return mav;
    }

    @RequestMapping(value = "/admin/building-edit", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        return mav;
    }

    @RequestMapping(value = "/admin/building-edit-{id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("id") Long Id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        // Xuống DB tìm building
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setId(Id);
        buildingDTO.setName("Hoang");
        mav.addObject("buildingEdit", buildingDTO);
        return mav;
    }

}
