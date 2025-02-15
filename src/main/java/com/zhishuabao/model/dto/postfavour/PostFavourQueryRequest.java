package com.zhishuabao.model.dto.postfavour;

import com.zhishuabao.common.PageRequest;
import com.zhishuabao.model.dto.post.PostQueryRequest;
import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 帖子收藏查询请求
 *
 * @author <a href="https://github.com/wahahahhaha">被遗忘的南极熊</a>
 *  
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class PostFavourQueryRequest extends PageRequest implements Serializable {

    /**
     * 帖子查询请求
     */
    private PostQueryRequest postQueryRequest;

    /**
     * 用户 id
     */
    private Long userId;

    private static final long serialVersionUID = 1L;
}