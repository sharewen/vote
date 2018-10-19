package com.indihx.elecvote.dao;

import com.indihx.elecvote.entity.VoteScopeInfo;
import com.indihx.elecvote.entity.VoteScopeInfoExample;
import com.indihx.elecvote.entity.VoteScopeInfoKey;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface VoteScopeInfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    long countByExample(VoteScopeInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int deleteByExample(VoteScopeInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int deleteByPrimaryKey(VoteScopeInfoKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int insert(VoteScopeInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int insertSelective(VoteScopeInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    List<VoteScopeInfo> selectByExample(VoteScopeInfoExample example);
    
    List<VoteScopeInfo> selectByOpenId(@Param("topicId") String topicId, @Param("userId") String userId);
    
    List<BigDecimal> selectInfoIdByPrimaryKey(BigDecimal topicId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    VoteScopeInfo selectByPrimaryKey(VoteScopeInfoKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByExampleSelective(@Param("record") VoteScopeInfo record, @Param("example") VoteScopeInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByExample(@Param("record") VoteScopeInfo record, @Param("example") VoteScopeInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByPrimaryKeySelective(VoteScopeInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_SCOPE_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByPrimaryKey(VoteScopeInfo record);
    
    Map<String, BigDecimal>  selectTotalHouse(BigDecimal topicId); 
}