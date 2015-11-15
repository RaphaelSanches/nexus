module.exports = function( grunt ) {
 
  grunt.initConfig({
    // Tasks que o Grunt deve executar

    uglify : {
    	options: {
    		mangle: false
    	},
    
    	my_target : {
    		files : {
          'assets/js/script-min.js' : ['src/js/scripts.js'], // arquivo minificado [ arquivo original]
    		}
    	}
    },

    watch : {
      dist : {
        files : [
          'src/stylus/**/*',
          'src/js/**/*',
        ],

        tasks : [
          'stylus',
          // 'imagemin'
        ]

      }
    },


    stylus : {
      compile : {
        files : {
          'assets/css/style.css': 'src/stylus/*.styl' // 1:1 compile 
          //'path/to/style.css': ['path/to/sources/*.styl', 'path/to/more/*.styl'] // compile and concat into single file 
        }
      }
    },


  // imagemin: {
  //   png: {
  //     options: {
  //       optimizationLevel: 7
  //     },
  //     files: [
  //       {
  //         // Set to true to enable the following options…
  //         expand: true,
  //         // cwd is 'current working directory'
  //         cwd: 'src/img/',
  //         src: ['**/*.png'],
  //         // Could also match cwd line above. i.e. project-directory/img/
  //         dest: 'assets/img/'
  //         ext: '.png'
  //       }
  //     ]
  //   },
  //   jpg: {
  //     options: {
  //       progressive: true
  //     },
  //     files: [
  //       {
  //         // Set to true to enable the following options…
  //         expand: true,
  //         // cwd is 'current working directory'
  //         cwd: 'src/img/',
  //         src: ['**/*.jpg'],
  //         // Could also match cwd. i.e. project-directory/img/
  //         dest: 'assets/img/',
  //         ext: '.jpg'
  //       }
  //     ]
  //   }
  // }


  });

  // Declaração do plugin
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-stylus');
  // grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-watch');

  //Tarefas a serem executadas
  grunt.registerTask('min', ["uglify"]);
  grunt.registerTask('css', ["stylus"]);
  grunt.registerTask('w', [ "watch" ]);

};