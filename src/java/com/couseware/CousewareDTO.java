/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.couseware;

import com.category.CategoryDTO;
import java.util.Date;

/**
 *
 * @author admin
 */
public class CousewareDTO {

    private Long id;
    private String content;
    private String short_content;
    private String title;
    private Date created_date;
    private Date modified_date;
    private CategoryDTO category;

    public CousewareDTO() {
    }

    public CousewareDTO(Long id, String content, String short_content, String title, Date created_date, Date modified_date, CategoryDTO category) {
        this.id = id;
        this.content = content;
        this.short_content = short_content;
        this.title = title;
        this.created_date = created_date;
        this.modified_date = modified_date;
        this.category = category;
    }

    public CousewareDTO(String content, String short_content, String title, Date created_date, Date modified_date, CategoryDTO category) {
        this.content = content;
        this.short_content = short_content;
        this.title = title;
        this.created_date = created_date;
        this.modified_date = modified_date;
        this.category = category;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getShort_content() {
        return short_content;
    }

    public void setShort_content(String short_content) {
        this.short_content = short_content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }

    public Date getModified_date() {
        return modified_date;
    }

    public void setModified_date(Date modified_date) {
        this.modified_date = modified_date;
    }

    public CategoryDTO getCategory() {
        return category;
    }

    public void setCategory(CategoryDTO category) {
        this.category = category;
    }

}
