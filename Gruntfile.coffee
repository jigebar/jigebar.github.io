module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    sass: 
      styles:
        options:
          style: 'expanded'
        files:
          'styles/main.css': 'styles/main.scss'
    watch:
      styles:
        files: ['styles/*.scss']
        tasks: ['sass']

  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['watch']


