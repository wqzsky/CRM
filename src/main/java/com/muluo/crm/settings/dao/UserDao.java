package com.muluo.crm.settings.dao;

        import com.muluo.crm.settings.domain.User;

        import java.util.List;
        import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-03 8:49
 */
public interface UserDao {
    User login(Map<String, String> map);

    List<User> getUserList();
}
