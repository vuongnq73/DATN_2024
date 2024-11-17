package com.example.bee_shirt.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShirtResponseDTO {
<<<<<<< Updated upstream
    private int id;
=======
    private Integer id;
>>>>>>> Stashed changes
    private String codeshirt;
    private String nameshirt;
    private String createBy;
    private String updateBy;
    private Date createAt;
    private Date updateAt;
<<<<<<< Updated upstream
    private int statusshirt;
    private String nameBrand;
    private String nameCategory;
    private int categoryId;
    private int brandId;
=======
    private Integer statusshirt;
    private String nameBrand;
    private String nameCategory;
    private Integer categoryId;
    private Integer brandId;
>>>>>>> Stashed changes
    private boolean deleted;
    private long quantity;
}
