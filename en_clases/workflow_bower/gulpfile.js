var gulp = require('gulp'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    concatCss = require('gulp-concat-css'),
    cleanCss = require('gulp-clean-css'),
    watch = require('gulp-watch'),
    browserSync = require('browser-sync').create();


    gulp.task('minify-js', function() {
      return gulp.src('./js/*.js')
        .pipe(concat('all.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('./js/build/'));
    });

    gulp.task('minify-css', function() {
      return gulp.src('./css/*.css')
        .pipe(concat('all.min.css'))
        .pipe(cleanCss())
        .pipe(gulp.dest('./css/build/'));
    });

    gulp.task('watch', function() {
        browserSync.init({
          server: {
            baseDir: "./"
          }
      });

      gulp.watch('css/**/*.css', ['minify-css']);
      gulp.watch('js/**/*.js', ['minify-js']);
      gulp.watch('*.html').on('change', browserSync.reload);
  });
