package com.indihx.elecvote.dao;

import com.indihx.elecvote.entity.VoteOwnerHistory;
import com.indihx.elecvote.entity.VoteOwnerHistoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VoteOwnerHistoryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    long countByExample(VoteOwnerHistoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int deleteByExample(VoteOwnerHistoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int deleteByPrimaryKey(String recordId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int insert(VoteOwnerHistory record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int insertSelective(VoteOwnerHistory record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    List<VoteOwnerHistory> selectByExample(VoteOwnerHistoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    VoteOwnerHistory selectByPrimaryKey(String recordId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByExampleSelective(@Param("record") VoteOwnerHistory record, @Param("example") VoteOwnerHistoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByExample(@Param("record") VoteOwnerHistory record, @Param("example") VoteOwnerHistoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByPrimaryKeySelective(VoteOwnerHistory record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VOTE_OWNER_HISTORY
     *
     * @mbg.generated Thu Jul 12 18:41:26 CST 2018
     */
    int updateByPrimaryKey(VoteOwnerHistory record);
}