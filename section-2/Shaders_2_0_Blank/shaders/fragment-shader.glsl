/*
varying vec2 vUvs;

void main() {
  //gl_FragColor = vec4(vUvs.x, vUvs.x, vUvs.x, 1.0);  //绘制x轴0-1的渐变(方法1)
  //gl_FragColor = vec4(vec3(vUvs.x), 1.0);    //绘制x轴0-1的渐变(方法2)
  //gl_FragColor = vec4(vec3(1.0 - vUvs.x), 1.0); //绘制x轴1-0的渐变

  //top left vec3(0.0, 1.0, 0.0),bottom right vec3(1.0, 0.0, 0.0)
  //gl_FragColor = vec4(vUvs.x, vUvs.y, 0.0, 1.0);
  //gl_FragColor = vec4(vUvs, 0.0, 1.0);

  //Try to make the top left red, and the bottom right blue
  //gl_FragColor = vec4(vUvs.y, 0.0, vUvs.x, 1.0);


  //------------------------------
  //mix(a, b, t) glsl颜色线性插值
  //mix(a, b, t) == return a + t * (b - a)
  gl_FragColor = mix(
    vec4(1.0, 0.0, 0.0, 1.0),
    vec4(0.0, 1.0, 0.0, 1.0),
    vUvs.x
  );
}
*/



/*
//可以不用把所有的变量硬编码到着色器中（如上面的添加变量一样）。可以在顶部使用全局变量uniform，然后在main.js文件中进行变量定义
varying vec2 vUvs;

uniform vec4 colour1;
uniform vec4 colour2;

void main(){
  gl_FragColor = mix(
    colour1,
    colour2,
    vUvs.x
  );
}
*/



//添加并运用attribute
varying vec2 vUvs;
varying vec3 vColour;

uniform vec4 colour1;
uniform vec4 colour2;

void main() {
  gl_FragColor = vec4(vColour, 1.0);
}