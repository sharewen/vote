package com.indihx.elecvote.dao;

import com.indihx.elecvote.entity.VoteApplyInfo;
import com.indihx.elecvote.entity.VoteApplyInfoExample;
import java.math.BigDecimal;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VoteApplyInfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    long countByExample(VoteApplyInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int deleteByExample(VoteApplyInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int deleteByPrimaryKey(BigDecimal applyId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int insert(VoteApplyInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int insertSelective(VoteApplyInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    List<VoteApplyInfo> selectByExample(VoteApplyInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    VoteApplyInfo selectByPrimaryKey(BigDecimal applyId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByExampleSelective(@Param("record") VoteApplyInfo record, @Param("example") VoteApplyInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByExample(@Param("record") VoteApplyInfo record, @Param("example") VoteApplyInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByPrimaryKeySelective(VoteApplyInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_APPLY_INFO
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByPrimaryKey(VoteApplyInfo record);
}