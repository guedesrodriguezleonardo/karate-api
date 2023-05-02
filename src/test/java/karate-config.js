function fn() {
    // Get system property 'karate.env'
    var env = karate.env;
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        env: env,
        myVarName: 'hello karate',
        baseUrl: 'https://automationexercise.com/api/'
    }
    if (env == 'dev') {
        // Customize
        // e.g. config.foo = 'bar';
    } else if (env == 'e2e') {
        // Customize
    }
    return config;
}
