package com.javaweb.api.admin;

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

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
@Transactional

public class BuildingAPI
{
    @Autowired
    private BuildingService buildingService;

    @GetMapping
    public List<BuildingSearchResponse> getBuilding (@ModelAttribute BuildingSearchRequest buildingSearchRequest, Pageable pageable)
    {
        List<BuildingSearchResponse> res = buildingService.findAll(buildingSearchRequest, (org.springframework.data.domain.Pageable) pageable);
        return res;
    }

    @PostMapping
    public ResponseEntity<BuildingDTO> addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO)
    {
        return ResponseEntity.ok(buildingService.addOrUpdateBuilding(buildingDTO));
    }
}