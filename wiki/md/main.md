##### Setup
<pre> copy and rename file database.yml.postgres.example to database.yml </pre>
**Or**
<pre> copy and rename file database.yml.sqlite.example to database.yml </pre>
<pre> bundle install </pre>
<pre> rake bower:install </pre>
<pre> rake db:create </pre>
<pre> rake db:migrate </pre>
<pre> rake db:seed </pre>

#### API Action
* [Login](api/login.html)
* [Logout](api/logout.html)
* [Get all list Test lesson](api/tests_all.html)
* [Get Test lesson any](api/tests_id.html)
* [Save result make test](api/save_results.html)
* [Get result make test](api/get_results.html)