package com.dao.cardRecord.mapper;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.pojo.CardRecord;

public interface CardRecordMapper {


	//添加售卡记录
	public void addCardRecord(CardRecord Card);
	//查询售卡者的售卡记录--------int id,Date crTime,Date enTime,int startIndex,int length
	public List<CardRecord> findCardBySellerIdandTime(Map<String, Object> paramMap);
	//查询买卡者的买卡及记录--------int id,Date crTime,Date enTime,int startIndex,int length
	public List<CardRecord> findCardByBuyerIdandTime(Map<String, Object> paramMap);
	//管理员--------查找售卡记录，时间可选--------Date crTime,Date enTime,int startIndex,int length
	public List<CardRecord> getAllCardRecord(Map<String, Object> paramMap);
	//总代查找手下代理的售卡记录，时间可选(查询一组人的售卡记录)--------List<Integer> ids,Date crTime,Date enTime,int startIndex,int length
	public List<CardRecord> findCardRecordsInGroup(Map<String, Object> paramMap);
	//总代查找手下代理的售卡记录，时间可选(查询一组人的售卡记录)--------List<Integer> ids,Date crTime,Date enTime
	public int findCountInGroup(Map<String, Object> paramMap);
	//代理---------查找售卡记录条数，时间可选----------int id,Date crTime,Date enTime
	public int findCountByTimeAndId(Map<String, Object> paramMap);
	//管理员--------查找售卡记录条数，时间可选----------Date crTime,Date enTime
	public int getCountByTime(Map<String, Object> paramMap);


	/*   *//** 
	 * 注意要和Employeer.xml的方法名对应 
	 *//*  
    public List<CardRecord> findCardRecordByID(int id,int startIndex,int endIndex);  
    public List<CardRecord> findCardRecordByIds(HashMap<String,Object> map);  
	  *//** 
	  * 注意要和Employeer.xml的方法名对应 
	  *//*  
    public void deleteCardRecord(String Card);  

	   *//**
	   * 注意要和Employeer.xml的方法名对应 
	   *//*  
    public void updateCardRecord(CardRecord card);  

    public List<CardRecord> getAllCardRecord(int startIndex,int endIndex);

    public List<CardRecord> getCardRecordByTime(HashMap<String,Object> date);

    public List<CardRecord> findCardBySellerIdandTime(HashMap<String, Object> msg);
    public List<CardRecord> findCardByBuyerIdandTime(HashMap<String, Object> msg);
    public int getCount();*/

	/*

	<!-- 查找 -->
	<select id="getCount" parameterType="int" resultType="int">
		select
		count(*) from t_cardrecord
	</select>
	<!-- 查找 -->
	<select id="findCardRecordByID" parameterType="int" resultMap="cardRecordMap">
		select* from t_cardrecord where f_seller_id =#{0} limit #{1},#{2}
	</select>
	<!-- 查找 -->
	<select id="findCardRecordByIds" parameterType="java.util.HashMap"
		resultMap="cardRecordMap">
		select* from t_cardrecord where f_seller_id in
		<foreach collection="sellerIds" index="index" item="item"
			open="(" separator="," close=")">
			#{item}
		</foreach>
		limit #{startIndex},#{endIndex}
	</select>
	<!-- 查找售卡记录 -->
	<select id="findCardBySellerIdandTime" parameterType="java.util.HashMap"
		resultMap="cardRecordMap">
		select* from t_cardrecord where f_seller_id =#{id}
		<if test="startTime!=null">and f_sell_time >= #{startTime}</if>
		<if test="endTime!=null">and #{endTime} >= f_sell_time</if>
	</select>
	<!-- 查找买卡记录 -->
	<select id="findCardByBuyerIdandTime" parameterType="java.util.HashMap"
		resultMap="cardRecordMap">
		select* from t_cardrecord where f_buyer_id =#{id}
		<if test="startTime!=null">and f_sell_time >= #{startTime}</if>
		<if test="endTime!=null">and #{endTime} >= f_sell_time</if>
	</select>
	<!-- 查询所有 -->
	<select id="getAllCardRecord" parameterType="int" resultMap="cardRecordMap">
		select* from t_cardrecord order by f_sell_time limit #{0},#{1};
	</select>
	<!-- 按所有时间查找售卡记录 -->
	<select id="getCardRecordByTime" parameterType="java.util.HashMap"
		resultMap="cardRecordMap">
		select* from t_cardrecord where
		<if test="startTime!=null"> f_sell_time >= #{startTime}</if>
		<if test="startTime!=null and endTime!=null">and</if>
		<if test="endTime!=null"> #{endTime} >= f_sell_time</if>
	</select>
	<!-- 插入 -->
	<!-- useGeneratedKeys设置为"true"表明要MyBatis获取由数据库自动生成的主键；keyProperty="id"指定把获取到的主键值注入到CardRecord的id属性 -->

	<!-- 删除 -->
	<delete id="deleteCardRecord" parameterType="int">
		delete from
		t_cardrecord where f_sell_time = #{sellTime}
	</delete>

	<!-- 修改 -->
	<update id="updateCardRecord" parameterType="CardRecord">
		update t_cardrecord
		set f_seller_id = #{sellerId},f_seller_name=
		#{sellerName},f_sell_to_type=#{sellToType},f_sell_time=#{sellTime},f_income=#{income},f_sell_type=#{sellType},f_card_l_count=#{cardLCount},f_card_f_count=#{cardFCount},f_buyer_id=#{buyerId},f_buyer_name=#{buyerName},f_memo=#{memo}
	</update>
	 */
}
