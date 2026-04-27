class Student {
    String name;
    int age;

    void display() {
        System.out.println(name + " " + age);
    }
}

public class Main {
    public static void main(String[] args) {
        Student s = new Student();
        s.name = "Saif";
        s.age = 20;
        s.display();
    }
}