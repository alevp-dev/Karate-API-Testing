function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'qa';
  }
  var config = {
    env: env,
    url_booking: 'https://restful-booker.herokuapp.com'

  }
  if (env == 'dev') {
    config.url_booking = 'https://restful-booker-dev.herokuapp.com'
  } else if (env == 'qa') {
    config.url_booking = 'https://restful-booker.herokuapp.com'
  }
  //karate.configure()
  return config;
}