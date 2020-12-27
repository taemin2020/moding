package wawo.prototype.moding.dao;

import wawo.prototype.moding.dto.MainDTO;
import wawo.prototype.moding.dto.WeddingDTO;
import wawo.prototype.moding.dto.HostDTO;

import java.util.List;
import java.util.Map;

public interface MainDAO {
	
	MainDTO selectUsers(MainDTO dto) throws Exception;

	void insertFiles(Map<String, Object> fileMap);

	Map<String, Object> getWeddingInfo(Map<String, Object> param);

	Map<String, Object> getGroomInfo(Map<String, Object> param);
	
	Map<String, Object> getBrideInfo(Map<String, Object> param);

	List<Map<String, Object>> getSlidePic(Object object);

	void insertGuestInfo(Map<String, Object> param);

	int getGuestId();

	int checkHost(Map<String, Object> param);
	
	
}
