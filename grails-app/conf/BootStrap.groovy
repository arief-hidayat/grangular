import com.hida.acct.Role
import com.hida.acct.User
import com.hida.acct.UserRole

class BootStrap {

    def init = { servletContext ->
        Role admin = new Role(authority : "ROLE_ADMIN")
        admin.save(flush: true, failOnError: true)
        User user = new User(username : "admin", password: "admin")
        user.save(flush: true, failOnError: true)
        UserRole.create(user, admin, true)
    }
    def destroy = {
    }
}
