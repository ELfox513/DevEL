package com.badlogic.gdx.graphics.g3d.shaders;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.graphics.g3d.Attributes;
import com.badlogic.gdx.graphics.g3d.Environment;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.Shader;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.ColorAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.CubemapAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.DepthTestAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.DirectionalLightsAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.FloatAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.IntAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.PointLightsAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.TextureAttribute;
import com.badlogic.gdx.graphics.g3d.environment.AmbientCubemap;
import com.badlogic.gdx.graphics.g3d.environment.DirectionalLight;
import com.badlogic.gdx.graphics.g3d.environment.PointLight;
import com.badlogic.gdx.graphics.g3d.environment.SpotLight;
import com.badlogic.gdx.graphics.g3d.shaders.BaseShader;
import com.badlogic.gdx.graphics.g3d.utils.RenderContext;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.Iterator;
/* loaded from: classes.dex */
public class DefaultShader extends BaseShader {

    /* renamed from: v0 */
    public static String f4739v0;

    /* renamed from: w0 */
    public static String f4740w0;

    /* renamed from: A */
    public final int f4744A;

    /* renamed from: B */
    public final int f4745B;

    /* renamed from: C */
    public final int f4746C;

    /* renamed from: D */
    public final int f4747D;

    /* renamed from: E */
    public final int f4748E;

    /* renamed from: F */
    public final int f4749F;

    /* renamed from: G */
    public final int f4750G;

    /* renamed from: H */
    public final int f4751H;

    /* renamed from: I */
    public final int f4752I;

    /* renamed from: J */
    public final int f4753J;

    /* renamed from: K */
    public final int f4754K;

    /* renamed from: L */
    public final int f4755L;

    /* renamed from: M */
    public final int f4756M;

    /* renamed from: N */
    public final int f4757N;

    /* renamed from: O */
    public final int f4758O;

    /* renamed from: P */
    public int f4759P;

    /* renamed from: Q */
    public int f4760Q;

    /* renamed from: R */
    public int f4761R;

    /* renamed from: S */
    public int f4762S;

    /* renamed from: T */
    public int f4763T;

    /* renamed from: U */
    public int f4764U;

    /* renamed from: V */
    public int f4765V;

    /* renamed from: W */
    public int f4766W;

    /* renamed from: X */
    public int f4767X;

    /* renamed from: Y */
    public int f4768Y;

    /* renamed from: Z */
    public int f4769Z;

    /* renamed from: a0 */
    public int f4770a0;

    /* renamed from: b0 */
    public int f4771b0;

    /* renamed from: c0 */
    public int f4772c0;

    /* renamed from: d0 */
    public int f4773d0;

    /* renamed from: e0 */
    public int f4774e0;

    /* renamed from: f0 */
    public int f4775f0;

    /* renamed from: g0 */
    public final boolean f4776g0;

    /* renamed from: h0 */
    public final boolean f4777h0;

    /* renamed from: i0 */
    public final boolean f4778i0;

    /* renamed from: j0 */
    public final AmbientCubemap f4779j0;

    /* renamed from: k0 */
    public final DirectionalLight[] f4780k0;

    /* renamed from: l0 */
    public final PointLight[] f4781l0;

    /* renamed from: m0 */
    public final SpotLight[] f4782m0;

    /* renamed from: n0 */
    public Renderable f4783n0;

    /* renamed from: o0 */
    public final long f4784o0;

    /* renamed from: p0 */
    public final long f4785p0;

    /* renamed from: q0 */
    public final Config f4786q0;

    /* renamed from: r0 */
    public final Matrix3 f4787r0;

    /* renamed from: s0 */
    public float f4788s0;

    /* renamed from: t0 */
    public boolean f4789t0;

    /* renamed from: u0 */
    public final Vector3 f4790u0;
    public final int u_alphaTest;
    public final int u_ambientTexture;
    public final int u_ambientUVTransform;
    public final int u_bones;
    public final int u_cameraDirection;
    public final int u_cameraNearFar;
    public final int u_cameraPosition;
    public final int u_cameraUp;
    public final int u_diffuseColor;
    public final int u_diffuseTexture;
    public final int u_diffuseUVTransform;
    public final int u_emissiveColor;
    public final int u_emissiveTexture;
    public final int u_emissiveUVTransform;
    public final int u_normalMatrix;
    public final int u_normalTexture;
    public final int u_normalUVTransform;
    public final int u_opacity;
    public final int u_projTrans;
    public final int u_projViewTrans;
    public final int u_projViewWorldTrans;
    public final int u_reflectionColor;
    public final int u_reflectionTexture;
    public final int u_reflectionUVTransform;
    public final int u_shininess;
    public final int u_specularColor;
    public final int u_specularTexture;
    public final int u_specularUVTransform;
    public final int u_time;
    public final int u_viewTrans;
    public final int u_viewWorldTrans;
    public final int u_worldTrans;

    /* renamed from: v */
    public final int f4791v;

    /* renamed from: w */
    public final int f4792w;

    /* renamed from: x */
    public final int f4793x;

    /* renamed from: y */
    public final int f4794y;

    /* renamed from: z */
    public final int f4795z;

    /* renamed from: x0 */
    public static long f4741x0 = (((BlendingAttribute.Type | TextureAttribute.Diffuse) | ColorAttribute.Diffuse) | ColorAttribute.Specular) | FloatAttribute.Shininess;
    @Deprecated
    public static int defaultCullFace = GL20.GL_BACK;
    @Deprecated
    public static int defaultDepthFunc = GL20.GL_LEQUAL;

    /* renamed from: y0 */
    public static final long f4742y0 = IntAttribute.CullFace | DepthTestAttribute.Type;

    /* renamed from: z0 */
    public static final Attributes f4743z0 = new Attributes();

    /* loaded from: classes.dex */
    public static class Inputs {
        public static final BaseShader.Uniform alphaTest;
        public static final BaseShader.Uniform ambientCube;
        public static final BaseShader.Uniform ambientTexture;
        public static final BaseShader.Uniform ambientUVTransform;
        public static final BaseShader.Uniform diffuseTexture;
        public static final BaseShader.Uniform diffuseUVTransform;
        public static final BaseShader.Uniform dirLights;
        public static final BaseShader.Uniform emissiveColor;
        public static final BaseShader.Uniform emissiveTexture;
        public static final BaseShader.Uniform emissiveUVTransform;
        public static final BaseShader.Uniform environmentCubemap;
        public static final BaseShader.Uniform normalTexture;
        public static final BaseShader.Uniform normalUVTransform;
        public static final BaseShader.Uniform pointLights;
        public static final BaseShader.Uniform reflectionColor;
        public static final BaseShader.Uniform reflectionTexture;
        public static final BaseShader.Uniform reflectionUVTransform;
        public static final BaseShader.Uniform specularColor;
        public static final BaseShader.Uniform specularTexture;
        public static final BaseShader.Uniform specularUVTransform;
        public static final BaseShader.Uniform spotLights;
        public static final BaseShader.Uniform projTrans = new BaseShader.Uniform("u_projTrans");
        public static final BaseShader.Uniform viewTrans = new BaseShader.Uniform("u_viewTrans");
        public static final BaseShader.Uniform projViewTrans = new BaseShader.Uniform("u_projViewTrans");
        public static final BaseShader.Uniform cameraPosition = new BaseShader.Uniform("u_cameraPosition");
        public static final BaseShader.Uniform cameraDirection = new BaseShader.Uniform("u_cameraDirection");
        public static final BaseShader.Uniform cameraUp = new BaseShader.Uniform("u_cameraUp");
        public static final BaseShader.Uniform cameraNearFar = new BaseShader.Uniform("u_cameraNearFar");
        public static final BaseShader.Uniform worldTrans = new BaseShader.Uniform("u_worldTrans");
        public static final BaseShader.Uniform viewWorldTrans = new BaseShader.Uniform("u_viewWorldTrans");
        public static final BaseShader.Uniform projViewWorldTrans = new BaseShader.Uniform("u_projViewWorldTrans");
        public static final BaseShader.Uniform normalMatrix = new BaseShader.Uniform("u_normalMatrix");
        public static final BaseShader.Uniform bones = new BaseShader.Uniform("u_bones");
        public static final BaseShader.Uniform shininess = new BaseShader.Uniform("u_shininess", FloatAttribute.Shininess);
        public static final BaseShader.Uniform opacity = new BaseShader.Uniform("u_opacity", BlendingAttribute.Type);
        public static final BaseShader.Uniform diffuseColor = new BaseShader.Uniform("u_diffuseColor", ColorAttribute.Diffuse);

        static {
            long j = TextureAttribute.Diffuse;
            diffuseTexture = new BaseShader.Uniform("u_diffuseTexture", j);
            diffuseUVTransform = new BaseShader.Uniform("u_diffuseUVTransform", j);
            specularColor = new BaseShader.Uniform("u_specularColor", ColorAttribute.Specular);
            long j2 = TextureAttribute.Specular;
            specularTexture = new BaseShader.Uniform("u_specularTexture", j2);
            specularUVTransform = new BaseShader.Uniform("u_specularUVTransform", j2);
            emissiveColor = new BaseShader.Uniform("u_emissiveColor", ColorAttribute.Emissive);
            long j3 = TextureAttribute.Emissive;
            emissiveTexture = new BaseShader.Uniform("u_emissiveTexture", j3);
            emissiveUVTransform = new BaseShader.Uniform("u_emissiveUVTransform", j3);
            reflectionColor = new BaseShader.Uniform("u_reflectionColor", ColorAttribute.Reflection);
            long j4 = TextureAttribute.Reflection;
            reflectionTexture = new BaseShader.Uniform("u_reflectionTexture", j4);
            reflectionUVTransform = new BaseShader.Uniform("u_reflectionUVTransform", j4);
            long j5 = TextureAttribute.Normal;
            normalTexture = new BaseShader.Uniform("u_normalTexture", j5);
            normalUVTransform = new BaseShader.Uniform("u_normalUVTransform", j5);
            long j6 = TextureAttribute.Ambient;
            ambientTexture = new BaseShader.Uniform("u_ambientTexture", j6);
            ambientUVTransform = new BaseShader.Uniform("u_ambientUVTransform", j6);
            alphaTest = new BaseShader.Uniform("u_alphaTest");
            ambientCube = new BaseShader.Uniform("u_ambientCubemap");
            dirLights = new BaseShader.Uniform("u_dirLights");
            pointLights = new BaseShader.Uniform("u_pointLights");
            spotLights = new BaseShader.Uniform("u_spotLights");
            environmentCubemap = new BaseShader.Uniform("u_environmentCubemap");
        }
    }

    /* loaded from: classes.dex */
    public static class Setters {
        public static final BaseShader.Setter projTrans = new BaseShader.GlobalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.1
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.camera.projection);
            }
        };
        public static final BaseShader.Setter viewTrans = new BaseShader.GlobalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.2
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.camera.view);
            }
        };
        public static final BaseShader.Setter projViewTrans = new BaseShader.GlobalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.3
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.camera.combined);
            }
        };
        public static final BaseShader.Setter cameraPosition = new BaseShader.GlobalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.4
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                Camera camera = baseShader.camera;
                Vector3 vector3 = camera.position;
                float f = vector3.f5533x;
                float f2 = vector3.f5534y;
                float f3 = vector3.f5535z;
                float f4 = camera.far;
                baseShader.set(i, f, f2, f3, 1.1881f / (f4 * f4));
            }
        };
        public static final BaseShader.Setter cameraDirection = new BaseShader.GlobalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.5
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.camera.direction);
            }
        };
        public static final BaseShader.Setter cameraUp = new BaseShader.GlobalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.6
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.camera.f3888up);
            }
        };
        public static final BaseShader.Setter cameraNearFar = new BaseShader.GlobalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.7
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                Camera camera = baseShader.camera;
                baseShader.set(i, camera.near, camera.far);
            }
        };
        public static final BaseShader.Setter worldTrans = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.8
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, renderable.worldTransform);
            }
        };
        public static final BaseShader.Setter viewWorldTrans = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.9

            /* renamed from: a */
            public final Matrix4 f4798a = new Matrix4();

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, this.f4798a.set(baseShader.camera.view).mul(renderable.worldTransform));
            }
        };
        public static final BaseShader.Setter projViewWorldTrans = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.10

            /* renamed from: a */
            public final Matrix4 f4796a = new Matrix4();

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, this.f4796a.set(baseShader.camera.combined).mul(renderable.worldTransform));
            }
        };
        public static final BaseShader.Setter normalMatrix = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.11

            /* renamed from: a */
            public final Matrix3 f4797a = new Matrix3();

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, this.f4797a.set(renderable.worldTransform).inv().transpose());
            }
        };
        public static final BaseShader.Setter shininess = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.12
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, ((FloatAttribute) attributes.get(FloatAttribute.Shininess)).value);
            }
        };
        public static final BaseShader.Setter diffuseColor = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.13
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, ((ColorAttribute) attributes.get(ColorAttribute.Diffuse)).color);
            }
        };
        public static final BaseShader.Setter diffuseTexture = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.14
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.context.textureBinder.bind(((TextureAttribute) attributes.get(TextureAttribute.Diffuse)).textureDescription));
            }
        };
        public static final BaseShader.Setter diffuseUVTransform = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.15
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                TextureAttribute textureAttribute = (TextureAttribute) attributes.get(TextureAttribute.Diffuse);
                baseShader.set(i, textureAttribute.offsetU, textureAttribute.offsetV, textureAttribute.scaleU, textureAttribute.scaleV);
            }
        };
        public static final BaseShader.Setter specularColor = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.16
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, ((ColorAttribute) attributes.get(ColorAttribute.Specular)).color);
            }
        };
        public static final BaseShader.Setter specularTexture = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.17
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.context.textureBinder.bind(((TextureAttribute) attributes.get(TextureAttribute.Specular)).textureDescription));
            }
        };
        public static final BaseShader.Setter specularUVTransform = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.18
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                TextureAttribute textureAttribute = (TextureAttribute) attributes.get(TextureAttribute.Specular);
                baseShader.set(i, textureAttribute.offsetU, textureAttribute.offsetV, textureAttribute.scaleU, textureAttribute.scaleV);
            }
        };
        public static final BaseShader.Setter emissiveColor = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.19
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, ((ColorAttribute) attributes.get(ColorAttribute.Emissive)).color);
            }
        };
        public static final BaseShader.Setter emissiveTexture = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.20
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.context.textureBinder.bind(((TextureAttribute) attributes.get(TextureAttribute.Emissive)).textureDescription));
            }
        };
        public static final BaseShader.Setter emissiveUVTransform = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.21
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                TextureAttribute textureAttribute = (TextureAttribute) attributes.get(TextureAttribute.Emissive);
                baseShader.set(i, textureAttribute.offsetU, textureAttribute.offsetV, textureAttribute.scaleU, textureAttribute.scaleV);
            }
        };
        public static final BaseShader.Setter reflectionColor = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.22
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, ((ColorAttribute) attributes.get(ColorAttribute.Reflection)).color);
            }
        };
        public static final BaseShader.Setter reflectionTexture = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.23
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.context.textureBinder.bind(((TextureAttribute) attributes.get(TextureAttribute.Reflection)).textureDescription));
            }
        };
        public static final BaseShader.Setter reflectionUVTransform = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.24
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                TextureAttribute textureAttribute = (TextureAttribute) attributes.get(TextureAttribute.Reflection);
                baseShader.set(i, textureAttribute.offsetU, textureAttribute.offsetV, textureAttribute.scaleU, textureAttribute.scaleV);
            }
        };
        public static final BaseShader.Setter normalTexture = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.25
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.context.textureBinder.bind(((TextureAttribute) attributes.get(TextureAttribute.Normal)).textureDescription));
            }
        };
        public static final BaseShader.Setter normalUVTransform = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.26
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                TextureAttribute textureAttribute = (TextureAttribute) attributes.get(TextureAttribute.Normal);
                baseShader.set(i, textureAttribute.offsetU, textureAttribute.offsetV, textureAttribute.scaleU, textureAttribute.scaleV);
            }
        };
        public static final BaseShader.Setter ambientTexture = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.27
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.context.textureBinder.bind(((TextureAttribute) attributes.get(TextureAttribute.Ambient)).textureDescription));
            }
        };
        public static final BaseShader.Setter ambientUVTransform = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.28
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                TextureAttribute textureAttribute = (TextureAttribute) attributes.get(TextureAttribute.Ambient);
                baseShader.set(i, textureAttribute.offsetU, textureAttribute.offsetV, textureAttribute.scaleU, textureAttribute.scaleV);
            }
        };
        public static final BaseShader.Setter environmentCubemap = new BaseShader.LocalSetter() { // from class: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Setters.29
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                long j = CubemapAttribute.EnvironmentMap;
                if (attributes.has(j)) {
                    baseShader.set(i, baseShader.context.textureBinder.bind(((CubemapAttribute) attributes.get(j)).textureDescription));
                }
            }
        };

        /* loaded from: classes.dex */
        public static class ACubemap extends BaseShader.LocalSetter {

            /* renamed from: b */
            public static final float[] f4799b = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

            /* renamed from: c */
            public static final Vector3 f4800c = new Vector3();

            /* renamed from: a */
            public final AmbientCubemap f4801a = new AmbientCubemap();
            public final int dirLightsOffset;
            public final int pointLightsOffset;

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                if (renderable.environment == null) {
                    ShaderProgram shaderProgram = baseShader.program;
                    int loc = baseShader.loc(i);
                    float[] fArr = f4799b;
                    shaderProgram.setUniform3fv(loc, fArr, 0, fArr.length);
                    return;
                }
                renderable.worldTransform.getTranslation(f4800c);
                long j = ColorAttribute.AmbientLight;
                if (attributes.has(j)) {
                    this.f4801a.set(((ColorAttribute) attributes.get(j)).color);
                }
                long j2 = DirectionalLightsAttribute.Type;
                if (attributes.has(j2)) {
                    Array<DirectionalLight> array = ((DirectionalLightsAttribute) attributes.get(j2)).lights;
                    for (int i2 = this.dirLightsOffset; i2 < array.size; i2++) {
                        this.f4801a.add(array.get(i2).color, array.get(i2).direction);
                    }
                }
                long j3 = PointLightsAttribute.Type;
                if (attributes.has(j3)) {
                    Array<PointLight> array2 = ((PointLightsAttribute) attributes.get(j3)).lights;
                    for (int i3 = this.pointLightsOffset; i3 < array2.size; i3++) {
                        this.f4801a.add(array2.get(i3).color, array2.get(i3).position, f4800c, array2.get(i3).intensity);
                    }
                }
                this.f4801a.clamp();
                ShaderProgram shaderProgram2 = baseShader.program;
                int loc2 = baseShader.loc(i);
                float[] fArr2 = this.f4801a.data;
                shaderProgram2.setUniform3fv(loc2, fArr2, 0, fArr2.length);
            }

            public ACubemap(int i, int i2) {
                this.dirLightsOffset = i;
                this.pointLightsOffset = i2;
            }
        }

        /* loaded from: classes.dex */
        public static class Bones extends BaseShader.LocalSetter {

            /* renamed from: a */
            public static final Matrix4 f4802a = new Matrix4();
            public final float[] bones;

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                Matrix4 matrix4;
                int i2 = 0;
                while (true) {
                    float[] fArr = this.bones;
                    if (i2 < fArr.length) {
                        int i3 = i2 / 16;
                        Matrix4[] matrix4Arr = renderable.bones;
                        if (matrix4Arr != null && i3 < matrix4Arr.length && (matrix4 = matrix4Arr[i3]) != null) {
                            System.arraycopy(matrix4.val, 0, fArr, i2, 16);
                        } else {
                            System.arraycopy(f4802a.val, 0, fArr, i2, 16);
                        }
                        i2 += 16;
                    } else {
                        ShaderProgram shaderProgram = baseShader.program;
                        int loc = baseShader.loc(i);
                        float[] fArr2 = this.bones;
                        shaderProgram.setUniformMatrix4fv(loc, fArr2, 0, fArr2.length);
                        return;
                    }
                }
            }

            public Bones(int i) {
                this.bones = new float[i * 16];
            }
        }
    }

    public DefaultShader(Renderable renderable) {
        this(renderable, new Config());
    }

    /* renamed from: b */
    public static final boolean m24095b(long j, long j2) {
        return (j & j2) == j2;
    }

    /* renamed from: g */
    public static final boolean m24090g(long j, long j2) {
        return (j & j2) != 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public int compareTo(Shader shader) {
        return shader == null ? -1 : 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.graphics.g3d.Shader
    public void end() {
        super.end();
    }

    public boolean equals(DefaultShader defaultShader) {
        return defaultShader == this;
    }

    public boolean equals(Object obj) {
        return (obj instanceof DefaultShader) && equals((DefaultShader) obj);
    }

    public int getDefaultCullFace() {
        int i = this.f4786q0.defaultCullFace;
        return i == -1 ? defaultCullFace : i;
    }

    public int getDefaultDepthFunc() {
        int i = this.f4786q0.defaultDepthFunc;
        return i == -1 ? defaultDepthFunc : i;
    }

    public void setDefaultCullFace(int i) {
        this.f4786q0.defaultCullFace = i;
    }

    public void setDefaultDepthFunc(int i) {
        this.f4786q0.defaultDepthFunc = i;
    }

    public DefaultShader(Renderable renderable, Config config) {
        this(renderable, config, createPrefix(renderable, config));
    }

    /* renamed from: e */
    public static final long m24092e(Renderable renderable) {
        Environment environment = renderable.environment;
        long j = 0;
        if (environment != null) {
            j = 0 | environment.getMask();
        }
        Material material = renderable.material;
        if (material != null) {
            return j | material.getMask();
        }
        return j;
    }

    /* renamed from: f */
    public static final Attributes m24091f(Renderable renderable) {
        Attributes attributes = f4743z0;
        attributes.clear();
        Environment environment = renderable.environment;
        if (environment != null) {
            attributes.set(environment);
        }
        Material material = renderable.material;
        if (material != null) {
            attributes.set(material);
        }
        return attributes;
    }

    public static String getDefaultFragmentShader() {
        if (f4740w0 == null) {
            f4740w0 = Gdx.files.classpath("com/badlogic/gdx/graphics/g3d/shaders/default.fragment.glsl").readString();
        }
        return f4740w0;
    }

    public static String getDefaultVertexShader() {
        if (f4739v0 == null) {
            f4739v0 = Gdx.files.classpath("com/badlogic/gdx/graphics/g3d/shaders/default.vertex.glsl").readString();
        }
        return f4739v0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.graphics.g3d.Shader
    public void begin(Camera camera, RenderContext renderContext) {
        super.begin(camera, renderContext);
        for (DirectionalLight directionalLight : this.f4780k0) {
            directionalLight.set(0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f);
        }
        for (PointLight pointLight : this.f4781l0) {
            pointLight.set(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
        }
        for (SpotLight spotLight : this.f4782m0) {
            spotLight.set(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        }
        this.f4789t0 = false;
        if (has(this.u_time)) {
            int i = this.u_time;
            float deltaTime = this.f4788s0 + Gdx.graphics.getDeltaTime();
            this.f4788s0 = deltaTime;
            set(i, deltaTime);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x00c2 A[EDGE_INSN: B:107:0x00c2->B:43:0x00c2 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00be A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0155 A[EDGE_INSN: B:113:0x0155->B:71:0x0155 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0151 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x020c A[EDGE_INSN: B:117:0x020c->B:98:0x020c ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0208 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01f7  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m24094c(com.badlogic.gdx.graphics.g3d.Renderable r14, com.badlogic.gdx.graphics.g3d.Attributes r15) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.m24094c(com.badlogic.gdx.graphics.g3d.Renderable, com.badlogic.gdx.graphics.g3d.Attributes):void");
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public boolean canRender(Renderable renderable) {
        boolean z;
        Matrix4[] matrix4Arr = renderable.bones;
        if (matrix4Arr != null && matrix4Arr.length > this.f4786q0.numBones) {
            return false;
        }
        if (this.f4784o0 != (m24092e(renderable) | f4742y0) || this.f4785p0 != renderable.meshPart.mesh.getVertexAttributes().getMaskWithSizePacked()) {
            return false;
        }
        if (renderable.environment != null) {
            z = true;
        } else {
            z = false;
        }
        if (z != this.f4776g0) {
            return false;
        }
        return true;
    }

    /* renamed from: d */
    public void m24093d(Attributes attributes) {
        Config config = this.f4786q0;
        int i = config.defaultCullFace;
        if (i == -1) {
            i = defaultCullFace;
        }
        int i2 = config.defaultDepthFunc;
        if (i2 == -1) {
            i2 = defaultDepthFunc;
        }
        float f = 0.0f;
        float f2 = 1.0f;
        Iterator<Attribute> it = attributes.iterator();
        boolean z = true;
        while (it.hasNext()) {
            Attribute next = it.next();
            long j = next.type;
            if (BlendingAttribute.m24160is(j)) {
                BlendingAttribute blendingAttribute = (BlendingAttribute) next;
                this.context.setBlending(true, blendingAttribute.sourceFunction, blendingAttribute.destFunction);
                set(this.u_opacity, blendingAttribute.opacity);
            } else {
                long j2 = IntAttribute.CullFace;
                if ((j & j2) == j2) {
                    i = ((IntAttribute) next).value;
                } else {
                    long j3 = FloatAttribute.AlphaTest;
                    if ((j & j3) == j3) {
                        set(this.u_alphaTest, ((FloatAttribute) next).value);
                    } else {
                        long j4 = DepthTestAttribute.Type;
                        if ((j & j4) == j4) {
                            DepthTestAttribute depthTestAttribute = (DepthTestAttribute) next;
                            i2 = depthTestAttribute.depthFunc;
                            f = depthTestAttribute.depthRangeNear;
                            f2 = depthTestAttribute.depthRangeFar;
                            z = depthTestAttribute.depthMask;
                        } else if (!this.f4786q0.ignoreUnimplemented) {
                            throw new GdxRuntimeException("Unknown material attribute: " + next.toString());
                        }
                    }
                }
            }
        }
        this.context.setCullFace(i);
        this.context.setDepthTest(i2, f, f2);
        this.context.setDepthMask(z);
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.program.dispose();
        super.dispose();
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public void init() {
        int i;
        ShaderProgram shaderProgram = this.program;
        this.program = null;
        init(shaderProgram, this.f4783n0);
        this.f4783n0 = null;
        this.f4759P = loc(this.f4793x);
        this.f4760Q = loc(this.f4793x) - this.f4759P;
        this.f4761R = loc(this.f4794y) - this.f4759P;
        int loc = loc(this.f4795z) - this.f4759P;
        this.f4762S = loc;
        if (loc < 0) {
            this.f4762S = 0;
        }
        this.f4763T = loc(this.f4744A);
        this.f4764U = loc(this.f4744A) - this.f4763T;
        this.f4765V = loc(this.f4745B) - this.f4763T;
        int i2 = -1;
        if (has(this.f4746C)) {
            i = loc(this.f4746C) - this.f4763T;
        } else {
            i = -1;
        }
        this.f4766W = i;
        int loc2 = loc(this.f4747D) - this.f4763T;
        this.f4767X = loc2;
        if (loc2 < 0) {
            this.f4767X = 0;
        }
        this.f4768Y = loc(this.f4748E);
        this.f4769Z = loc(this.f4748E) - this.f4768Y;
        this.f4770a0 = loc(this.f4749F) - this.f4768Y;
        this.f4771b0 = loc(this.f4751H) - this.f4768Y;
        if (has(this.f4750G)) {
            i2 = loc(this.f4750G) - this.f4768Y;
        }
        this.f4772c0 = i2;
        this.f4773d0 = loc(this.f4752I) - this.f4768Y;
        this.f4774e0 = loc(this.f4753J) - this.f4768Y;
        int loc3 = loc(this.f4754K) - this.f4768Y;
        this.f4775f0 = loc3;
        if (loc3 < 0) {
            this.f4775f0 = 0;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader
    public void render(Renderable renderable, Attributes attributes) {
        if (!attributes.has(BlendingAttribute.Type)) {
            this.context.setBlending(false, GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
        m24093d(attributes);
        if (this.f4776g0) {
            m24094c(renderable, attributes);
        }
        super.render(renderable, attributes);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DefaultShader(com.badlogic.gdx.graphics.g3d.Renderable r8, com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.Config r9, java.lang.String r10) {
        /*
            r7 = this;
            java.lang.String r0 = r9.vertexShader
            if (r0 == 0) goto L5
            goto L9
        L5:
            java.lang.String r0 = getDefaultVertexShader()
        L9:
            r5 = r0
            java.lang.String r0 = r9.fragmentShader
            if (r0 == 0) goto Lf
            goto L13
        Lf:
            java.lang.String r0 = getDefaultFragmentShader()
        L13:
            r6 = r0
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g3d.shaders.DefaultShader.<init>(com.badlogic.gdx.graphics.g3d.Renderable, com.badlogic.gdx.graphics.g3d.shaders.DefaultShader$Config, java.lang.String):void");
    }

    public static String createPrefix(Renderable renderable, Config config) {
        VertexAttribute vertexAttribute;
        String str;
        Attributes m24091f = m24091f(renderable);
        long mask = m24091f.getMask();
        long mask2 = renderable.meshPart.mesh.getVertexAttributes().getMask();
        String str2 = "";
        if (m24095b(mask2, 1L)) {
            str2 = "#define positionFlag\n";
        }
        if (m24090g(mask2, 6L)) {
            str2 = str2 + "#define colorFlag\n";
        }
        if (m24095b(mask2, 256L)) {
            str2 = str2 + "#define binormalFlag\n";
        }
        if (m24095b(mask2, 128L)) {
            str2 = str2 + "#define tangentFlag\n";
        }
        if (m24095b(mask2, 8L)) {
            str2 = str2 + "#define normalFlag\n";
        }
        if ((m24095b(mask2, 8L) || m24095b(mask2, 384L)) && renderable.environment != null) {
            String str3 = ((((str2 + "#define lightingFlag\n") + "#define ambientCubemapFlag\n") + "#define numDirectionalLights " + config.numDirectionalLights + "\n") + "#define numPointLights " + config.numPointLights + "\n") + "#define numSpotLights " + config.numSpotLights + "\n";
            if (m24091f.has(ColorAttribute.Fog)) {
                str3 = str3 + "#define fogFlag\n";
            }
            if (renderable.environment.shadowMap != null) {
                str3 = str3 + "#define shadowMapFlag\n";
            }
            str2 = str3;
            if (m24091f.has(CubemapAttribute.EnvironmentMap)) {
                str2 = str2 + "#define environmentCubemapFlag\n";
            }
        }
        int size = renderable.meshPart.mesh.getVertexAttributes().size();
        for (int i = 0; i < size; i++) {
            int i2 = renderable.meshPart.mesh.getVertexAttributes().get(i).usage;
            if (i2 == 64) {
                str = str2 + "#define boneWeight" + vertexAttribute.unit + "Flag\n";
            } else if (i2 == 16) {
                str = str2 + "#define texCoord" + vertexAttribute.unit + "Flag\n";
            }
            str2 = str;
        }
        long j = BlendingAttribute.Type;
        if ((mask & j) == j) {
            str2 = str2 + "#define blendedFlag\n";
        }
        long j2 = TextureAttribute.Diffuse;
        if ((mask & j2) == j2) {
            str2 = (str2 + "#define diffuseTextureFlag\n") + "#define diffuseTextureCoord texCoord0\n";
        }
        long j3 = TextureAttribute.Specular;
        if ((mask & j3) == j3) {
            str2 = (str2 + "#define specularTextureFlag\n") + "#define specularTextureCoord texCoord0\n";
        }
        long j4 = TextureAttribute.Normal;
        if ((mask & j4) == j4) {
            str2 = (str2 + "#define normalTextureFlag\n") + "#define normalTextureCoord texCoord0\n";
        }
        long j5 = TextureAttribute.Emissive;
        if ((mask & j5) == j5) {
            str2 = (str2 + "#define emissiveTextureFlag\n") + "#define emissiveTextureCoord texCoord0\n";
        }
        long j6 = TextureAttribute.Reflection;
        if ((mask & j6) == j6) {
            str2 = (str2 + "#define reflectionTextureFlag\n") + "#define reflectionTextureCoord texCoord0\n";
        }
        long j7 = TextureAttribute.Ambient;
        if ((mask & j7) == j7) {
            str2 = (str2 + "#define ambientTextureFlag\n") + "#define ambientTextureCoord texCoord0\n";
        }
        long j8 = ColorAttribute.Diffuse;
        if ((mask & j8) == j8) {
            str2 = str2 + "#define diffuseColorFlag\n";
        }
        long j9 = ColorAttribute.Specular;
        if ((mask & j9) == j9) {
            str2 = str2 + "#define specularColorFlag\n";
        }
        long j10 = ColorAttribute.Emissive;
        if ((mask & j10) == j10) {
            str2 = str2 + "#define emissiveColorFlag\n";
        }
        long j11 = ColorAttribute.Reflection;
        if ((mask & j11) == j11) {
            str2 = str2 + "#define reflectionColorFlag\n";
        }
        long j12 = FloatAttribute.Shininess;
        if ((mask & j12) == j12) {
            str2 = str2 + "#define shininessFlag\n";
        }
        long j13 = FloatAttribute.AlphaTest;
        if ((mask & j13) == j13) {
            str2 = str2 + "#define alphaTestFlag\n";
        }
        if (renderable.bones != null && config.numBones > 0) {
            return str2 + "#define numBones " + config.numBones + "\n";
        }
        return str2;
    }

    public DefaultShader(Renderable renderable, Config config, String str, String str2, String str3) {
        this(renderable, config, new ShaderProgram(str + str2, str + str3));
    }

    public DefaultShader(Renderable renderable, Config config, ShaderProgram shaderProgram) {
        this.f4793x = register(new BaseShader.Uniform("u_dirLights[0].color"));
        this.f4794y = register(new BaseShader.Uniform("u_dirLights[0].direction"));
        this.f4795z = register(new BaseShader.Uniform("u_dirLights[1].color"));
        this.f4744A = register(new BaseShader.Uniform("u_pointLights[0].color"));
        this.f4745B = register(new BaseShader.Uniform("u_pointLights[0].position"));
        this.f4746C = register(new BaseShader.Uniform("u_pointLights[0].intensity"));
        this.f4747D = register(new BaseShader.Uniform("u_pointLights[1].color"));
        this.f4748E = register(new BaseShader.Uniform("u_spotLights[0].color"));
        this.f4749F = register(new BaseShader.Uniform("u_spotLights[0].position"));
        this.f4750G = register(new BaseShader.Uniform("u_spotLights[0].intensity"));
        this.f4751H = register(new BaseShader.Uniform("u_spotLights[0].direction"));
        this.f4752I = register(new BaseShader.Uniform("u_spotLights[0].cutoffAngle"));
        this.f4753J = register(new BaseShader.Uniform("u_spotLights[0].exponent"));
        this.f4754K = register(new BaseShader.Uniform("u_spotLights[1].color"));
        this.f4755L = register(new BaseShader.Uniform("u_fogColor"));
        this.f4756M = register(new BaseShader.Uniform("u_shadowMapProjViewTrans"));
        this.f4757N = register(new BaseShader.Uniform("u_shadowTexture"));
        this.f4758O = register(new BaseShader.Uniform("u_shadowPCFOffset"));
        this.f4779j0 = new AmbientCubemap();
        this.f4787r0 = new Matrix3();
        this.f4790u0 = new Vector3();
        Attributes m24091f = m24091f(renderable);
        this.f4786q0 = config;
        this.program = shaderProgram;
        boolean z = true;
        int i = 0;
        boolean z2 = renderable.environment != null;
        this.f4776g0 = z2;
        long j = CubemapAttribute.EnvironmentMap;
        this.f4777h0 = m24091f.has(j) || (z2 && m24091f.has(j));
        this.f4778i0 = (!z2 || renderable.environment.shadowMap == null) ? false : false;
        this.f4783n0 = renderable;
        this.f4784o0 = m24091f.getMask() | f4742y0;
        this.f4785p0 = renderable.meshPart.mesh.getVertexAttributes().getMaskWithSizePacked();
        this.f4780k0 = new DirectionalLight[(!z2 || (r9 = config.numDirectionalLights) <= 0) ? 0 : 0];
        int i2 = 0;
        while (true) {
            DirectionalLight[] directionalLightArr = this.f4780k0;
            if (i2 >= directionalLightArr.length) {
                break;
            }
            directionalLightArr[i2] = new DirectionalLight();
            i2++;
        }
        this.f4781l0 = new PointLight[(!this.f4776g0 || (r9 = config.numPointLights) <= 0) ? 0 : 0];
        int i3 = 0;
        while (true) {
            PointLight[] pointLightArr = this.f4781l0;
            if (i3 >= pointLightArr.length) {
                break;
            }
            pointLightArr[i3] = new PointLight();
            i3++;
        }
        this.f4782m0 = new SpotLight[(!this.f4776g0 || (r9 = config.numSpotLights) <= 0) ? 0 : 0];
        while (true) {
            SpotLight[] spotLightArr = this.f4782m0;
            if (i >= spotLightArr.length) {
                break;
            }
            spotLightArr[i] = new SpotLight();
            i++;
        }
        if (!config.ignoreUnimplemented) {
            long j2 = f4741x0;
            long j3 = this.f4784o0;
            if ((j2 & j3) != j3) {
                throw new GdxRuntimeException("Some attributes not implemented yet (" + this.f4784o0 + ")");
            }
        }
        Matrix4[] matrix4Arr = renderable.bones;
        if (matrix4Arr != null && matrix4Arr.length > config.numBones) {
            throw new GdxRuntimeException("too many bones: " + renderable.bones.length + ", max configured: " + config.numBones);
        }
        this.u_projTrans = register(Inputs.projTrans, Setters.projTrans);
        this.u_viewTrans = register(Inputs.viewTrans, Setters.viewTrans);
        this.u_projViewTrans = register(Inputs.projViewTrans, Setters.projViewTrans);
        this.u_cameraPosition = register(Inputs.cameraPosition, Setters.cameraPosition);
        this.u_cameraDirection = register(Inputs.cameraDirection, Setters.cameraDirection);
        this.u_cameraUp = register(Inputs.cameraUp, Setters.cameraUp);
        this.u_cameraNearFar = register(Inputs.cameraNearFar, Setters.cameraNearFar);
        this.u_time = register(new BaseShader.Uniform("u_time"));
        this.u_worldTrans = register(Inputs.worldTrans, Setters.worldTrans);
        this.u_viewWorldTrans = register(Inputs.viewWorldTrans, Setters.viewWorldTrans);
        this.u_projViewWorldTrans = register(Inputs.projViewWorldTrans, Setters.projViewWorldTrans);
        this.u_normalMatrix = register(Inputs.normalMatrix, Setters.normalMatrix);
        this.u_bones = (renderable.bones == null || config.numBones <= 0) ? -1 : register(Inputs.bones, new Setters.Bones(config.numBones));
        this.u_shininess = register(Inputs.shininess, Setters.shininess);
        this.u_opacity = register(Inputs.opacity);
        this.u_diffuseColor = register(Inputs.diffuseColor, Setters.diffuseColor);
        this.u_diffuseTexture = register(Inputs.diffuseTexture, Setters.diffuseTexture);
        this.u_diffuseUVTransform = register(Inputs.diffuseUVTransform, Setters.diffuseUVTransform);
        this.u_specularColor = register(Inputs.specularColor, Setters.specularColor);
        this.u_specularTexture = register(Inputs.specularTexture, Setters.specularTexture);
        this.u_specularUVTransform = register(Inputs.specularUVTransform, Setters.specularUVTransform);
        this.u_emissiveColor = register(Inputs.emissiveColor, Setters.emissiveColor);
        this.u_emissiveTexture = register(Inputs.emissiveTexture, Setters.emissiveTexture);
        this.u_emissiveUVTransform = register(Inputs.emissiveUVTransform, Setters.emissiveUVTransform);
        this.u_reflectionColor = register(Inputs.reflectionColor, Setters.reflectionColor);
        this.u_reflectionTexture = register(Inputs.reflectionTexture, Setters.reflectionTexture);
        this.u_reflectionUVTransform = register(Inputs.reflectionUVTransform, Setters.reflectionUVTransform);
        this.u_normalTexture = register(Inputs.normalTexture, Setters.normalTexture);
        this.u_normalUVTransform = register(Inputs.normalUVTransform, Setters.normalUVTransform);
        this.u_ambientTexture = register(Inputs.ambientTexture, Setters.ambientTexture);
        this.u_ambientUVTransform = register(Inputs.ambientUVTransform, Setters.ambientUVTransform);
        this.u_alphaTest = register(Inputs.alphaTest);
        this.f4791v = this.f4776g0 ? register(Inputs.ambientCube, new Setters.ACubemap(config.numDirectionalLights, config.numPointLights)) : -1;
        this.f4792w = this.f4777h0 ? register(Inputs.environmentCubemap, Setters.environmentCubemap) : -1;
    }

    /* loaded from: classes.dex */
    public static class Config {
        public int defaultCullFace;
        public int defaultDepthFunc;
        public String fragmentShader;
        public boolean ignoreUnimplemented;
        public int numBones;
        public int numDirectionalLights;
        public int numPointLights;
        public int numSpotLights;
        public String vertexShader;

        public Config() {
            this.vertexShader = null;
            this.fragmentShader = null;
            this.numDirectionalLights = 2;
            this.numPointLights = 5;
            this.numSpotLights = 0;
            this.numBones = 12;
            this.ignoreUnimplemented = true;
            this.defaultCullFace = -1;
            this.defaultDepthFunc = -1;
        }

        public Config(String str, String str2) {
            this.numDirectionalLights = 2;
            this.numPointLights = 5;
            this.numSpotLights = 0;
            this.numBones = 12;
            this.ignoreUnimplemented = true;
            this.defaultCullFace = -1;
            this.defaultDepthFunc = -1;
            this.vertexShader = str;
            this.fragmentShader = str2;
        }
    }
}
