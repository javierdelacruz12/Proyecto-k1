package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {

        return Karate.run("classpath:examples/CursoKarate/10productCRUD.feature").tags("@test005");
    }    

}
