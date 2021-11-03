# School System

1. Instalation ruby 3.0.2 with your ruby manager
2. Execute `gem install bundler` to instalation Bundler
3. Execute `gem install rails -v=6.1.4`
3. Execute `bundle install` to instalation all gems
4. Create file `.env.local` and `.env.test` with the content: 

```
DATABASE_URL=postgres://postgres:postgres@db:5432/school_system_capacitation
```

5. Execute `rails db:create` and `rails db:migrate`
6. Now, to started project, execute `rails server`