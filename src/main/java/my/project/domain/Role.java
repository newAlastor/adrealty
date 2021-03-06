package my.project.domain;

import javax.persistence.*;
import java.util.Set;

/**
 * POJO класс для роли пользователя
 */
@Entity
@Table(name = "role")
public class Role {

    /**
     * пустой конструктор
     */
    public Role() {

    }


    /**
     * id роли
     */
    @Id
    @Column(name = "id")
    private Long id;

    /**
     * имя роли
     */
    @Column(name = "name")
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
