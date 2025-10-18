package dto;

    public class AppUserDto {
        public Long id;
        public String firstName;
        public String lastName;
        public String email;

        public AppUserDto() {}

        public AppUserDto(Long id, String firstName, String lastName, String email) {
            this.id = id;
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
        }
    }