varying vec3 vPosition;

uniform float uTime;

void main() {
    // Stripes
    float stripes = mod((vPosition.y - uTime * 0.05) * 20.0, 1.0);
    stripes = pow(stripes, 3.0);

    // Final color
    gl_FragColor = vec4(vec3(1.0), stripes);

    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}