# postgres-18-base

## Usage guide

### .env
```properties
POSTGRES_PASSWORD=your-password
```

### compose.yml
```yml
# ... lines omitted
        env_file:
            - .env
        command: ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
# ... lines omitted
```


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.