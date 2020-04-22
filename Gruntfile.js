module.expots = function(grunt) {

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    options: {
      
    }
  });

  grunt.loadNpmTasks('grunt-aws-s3');

}