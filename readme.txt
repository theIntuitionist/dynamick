refactors in the waiting:
  1) lib/dynamic_author.rb file name doesnt make sense
  2) want some prepackaged scripts in lib/scripts which take certain params passed in in the host apps lib/dynaimic/script.rb
    - the host apps script sets a param[script] to a value of one of the prepachaged scripts, 
      doing this means dynamic should look in own lib/scripts
    - host apps scripts can add any number of other options to params, according to the script
  3) should delete image after request when in dev mode, not in production mode
  4) for dynamic text will need to generate the image before the request so that the height and width are known.  
    - thus will need public method which allows creation of image and passing back of image (just make the image called in the controller public)
