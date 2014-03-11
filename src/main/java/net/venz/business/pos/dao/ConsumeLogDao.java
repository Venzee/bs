package net.venz.business.pos.dao;

import net.venz.core.base.dao.BaseDao;
import org.springframework.stereotype.Repository;

@Repository
public class ConsumeLogDao extends BaseDao {

	private static final String ADD_CONSUME_LOG_SQL = "insert into pos_consume_log("
			+ "billNo, billDate, accountFee, sumFee, crossFlag, freeFlag, operatorId, customNum, customFrom, memberId, cardId, " +
			"cardTypeId, serialId, revokeTime, remark, shopId, submitTime) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW())";
	
	private static final String UPD_CONSUME_LOG_STATUS_SQL = "update pos_consume_log set status = ? where id = ? and shopId = ?";

	private static final String UPD_CONSUME_LOG_DATE_SQL = "update pos_consume_log set billDate = ? where id = ? and shopId = ?";
	
	private static final String UPD_CONSUME_LOG_BILLNO_SQL = "update pos_consume_log set billNo = ? where id = ? and shopId = ?";
	
	private static final String UPD_CONSUME_LOG_CUSTOMNUM_SQL = "update pos_consume_log set customNum = ? where id = ? and shopId = ?";
	
}
