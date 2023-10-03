enum AppEnvironment{
 DEVELOPMENT('DEVELOPMENT ENVIRONMENT'),
 PRODUCTION('PRODUCTION ENVIRONMENT'),
 STAGING('STAGING ENVIRONMENT');
 const AppEnvironment(this.name);
 final String name;
}