package com.javaweb.api.admin;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
@Transactional

public class BuildingAPI {
    @Autowired
    private BuildingService buildingService;

    @GetMapping
    public List<BuildingSearchResponse> getBuilding(@ModelAttribute BuildingSearchRequest buildingSearchRequest,
            Pageable pageable) {
        List<BuildingSearchResponse> res = buildingService.findAll(buildingSearchRequest,
                (org.springframework.data.domain.Pageable) pageable);
        return res;
    }

    @PostMapping
    public ResponseEntity<BuildingDTO> addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO) {
        return ResponseEntity.ok(buildingService.addOrUpdateBuilding(buildingDTO));
    }

    @DeleteMapping("/{ids}")
    public ResponseEntity<BuildingDTO> deleteBuilding(@PathVariable Long[] ids) {
        // Xuống db xoá theo danh sách id
        return ResponseEntity.ok(buildingService.deleteBuildings(ids));
    }

    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable Long id) {
        ResponseDTO result = buildingService.listStaffs(id);
        return result;
    }

    @PostMapping("/assiment")
    public void updateAssigmentBuilding(@RequestBody AssignmentBuildingDTO assignmentBuildingDTO) {
        System.out.println("sdkh");
    }
}