package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {

        return Karate.run("classpath:CursoKarate/05userDetailsJson.feature").tags("@test001");
    }    

}
