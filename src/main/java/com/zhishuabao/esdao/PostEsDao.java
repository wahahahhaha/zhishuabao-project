package com.zhishuabao.esdao;

import com.zhishuabao.model.dto.post.PostEsDTO;
import java.util.List;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

/**
 * 帖子 ES 操作
 *
 * @author <a href="https://github.com/wahahahhaha">被遗忘的南极熊</a>
 *  
 */
public interface PostEsDao extends ElasticsearchRepository<PostEsDTO, Long> {

    List<PostEsDTO> findByUserId(Long userId);
}