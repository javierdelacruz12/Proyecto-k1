package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {

        return Karate.run("classpath:examples/CursoKarate/08generateData.feature").tags("@test004");
    }    

}
