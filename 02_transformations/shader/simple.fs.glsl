/**
 * as simple fragment shader just setting the provided color as fragment color
 * Created by Samuel Gratzl on 08.02.2016.
 */

//need to specify how "precise" float should be
precision mediump float;

///uniform like a parameter for all fragment shader instances. In our case a the rgb color to use
//uniform vec3 u_usercolor;

//interpolate argument between vertex and fragment shader
varying vec3 v_color;

//entry point again
void main() {
  //gl_FragColor ... magic output variable containg the final 4D color of the fragment
  //gl_FragColor = vec4(u_usercolor, 1);

  //in our case we use the provided interpolated color from our three vertices
  gl_FragColor = vec4(v_color, 1.);
}
