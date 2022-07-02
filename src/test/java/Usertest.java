import com.yang.dao.Usermapper;
import com.yang.pojo.Book;
import com.yang.pojo.Student;
import com.yang.pojo.User;
import com.yang.service.Bookservice;
import com.yang.service.Studentservice;
import com.yang.service.Userservice;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public  class Usertest {
    @Test
    public void login(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Userservice userserviceimpl = applicationContext.getBean("userserviceimpl", Userservice.class);
        User user = userserviceimpl.selectuser(new User("李四", "123", "0"));
        System.out.println(user);
    }

    @Test
    public void register(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Usermapper usermapper = applicationContext.getBean("usermapper", Usermapper.class);
        usermapper.adduser(new User("123","123","0"));
        System.out.println("注册成功！");
    }

    @Test
    public void allbook(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Bookservice bookserviceimpl = applicationContext.getBean("bookserviceimpl", Bookservice.class);
        List<Book> allbook = bookserviceimpl.allbook();
        for (Book book : allbook) {
            System.out.println(book);
        }
    }

    @Test
    public void deletebook(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Bookservice bookserviceimpl = applicationContext.getBean("bookserviceimpl", Bookservice.class);
        bookserviceimpl.deletebook("7");
    }

    @Test
    public void allstudent(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Studentservice studentserviceimpl = applicationContext.getBean("studentserviceimpl", Studentservice.class);
        List<Student> allstudent = studentserviceimpl.allstudent();
        for (Student student : allstudent) {
            System.out.println(student);
        }
    }
    @Test
    public void addstudent(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Studentservice studentserviceimpl = applicationContext.getBean("studentserviceimpl", Studentservice.class);
        Student student1 = new Student(19050,"123","呜呜拉","男",18,"北京市海定区","1");
        studentserviceimpl.addstudent(student1);
    }

    @Test
    public  void update(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Studentservice studentserviceimpl = applicationContext.getBean("studentserviceimpl", Studentservice.class);
        studentserviceimpl.updatepassword(1905060301,"1");
    }
}
