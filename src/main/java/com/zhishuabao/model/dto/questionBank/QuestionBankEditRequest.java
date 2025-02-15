package com.zhishuabao.model.dto.questionBank;

import lombok.Data;

import java.io.Serializable;

/**
 * 编辑题库请求
 *
 * @author <a href="https://github.com/wahahahhaha">被遗忘的南极熊</a>
 *   
 */
@Data
public class QuestionBankEditRequest implements Serializable {

    /**
     * id
     */
    private Long id;

    /**
     * 标题
     */
    private String title;

    /**
     * 描述
     */
    private String description;

    /**
     * 图片
     */
    private String picture;

    private static final long serialVersionUID = 1L;
}