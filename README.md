# MySQL-Example

## Setup

### Download and Install MySQL

#### On MAC

`brew install mysql`

follow instructions when homebrew completes install to setup root password
login as root

```{SQL}

CREATE USER '<your-username>'@'localhost' IDENTIFIED WITH mysql_native_password BY '<your-password>';

```

and when sucessful running `FLUSH PRIVLEDGES;`

### Connecting to MySQL in VSCode

1. Install SQLTools extension and MySQL/MariaDB Driver extension
2. Connect Using Default settings is fine as long as native_mysql_password is used when creating user
