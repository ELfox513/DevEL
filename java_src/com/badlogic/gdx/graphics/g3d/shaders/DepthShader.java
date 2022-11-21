package com.badlogic.gdx.graphics.g3d.shaders;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.g3d.Attributes;
import com.badlogic.gdx.graphics.g3d.Environment;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.FloatAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.TextureAttribute;
import com.badlogic.gdx.graphics.g3d.shaders.DefaultShader;
import com.badlogic.gdx.graphics.g3d.utils.RenderContext;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class DepthShader extends DefaultShader {

    /* renamed from: B0 */
    public static String f4803B0;

    /* renamed from: C0 */
    public static String f4804C0;

    /* renamed from: D0 */
    public static final Attributes f4805D0 = new Attributes();

    /* renamed from: A0 */
    public final FloatAttribute f4806A0;
    public final int numBones;
    public final int weights;

    public DepthShader(Renderable renderable) {
        this(renderable, new Config());
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.DefaultShader, com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.graphics.g3d.Shader
    public void begin(Camera camera, RenderContext renderContext) {
        super.begin(camera, renderContext);
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.DefaultShader, com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.graphics.g3d.Shader
    public void end() {
        super.end();
    }

    public DepthShader(Renderable renderable, Config config) {
        this(renderable, config, createPrefix(renderable, config));
    }

    /* renamed from: f */
    public static final Attributes m24089f(Renderable renderable) {
        Attributes attributes = f4805D0;
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

    public static final String getDefaultFragmentShader() {
        if (f4804C0 == null) {
            f4804C0 = Gdx.files.classpath("com/badlogic/gdx/graphics/g3d/shaders/depth.fragment.glsl").readString();
        }
        return f4804C0;
    }

    public static final String getDefaultVertexShader() {
        if (f4803B0 == null) {
            f4803B0 = Gdx.files.classpath("com/badlogic/gdx/graphics/g3d/shaders/depth.vertex.glsl").readString();
        }
        return f4803B0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.DefaultShader, com.badlogic.gdx.graphics.g3d.Shader
    public boolean canRender(Renderable renderable) {
        boolean z;
        boolean z2;
        boolean z3;
        Matrix4[] matrix4Arr = renderable.bones;
        if (matrix4Arr != null && matrix4Arr.length > this.numBones) {
            return false;
        }
        Attributes m24089f = m24089f(renderable);
        long j = BlendingAttribute.Type;
        if (m24089f.has(j)) {
            if ((this.f4784o0 & j) != j) {
                return false;
            }
            long j2 = TextureAttribute.Diffuse;
            boolean has = m24089f.has(j2);
            if ((this.f4784o0 & j2) == j2) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (has != z3) {
                return false;
            }
        }
        if ((renderable.meshPart.mesh.getVertexAttributes().getMask() & 64) == 64) {
            z = true;
        } else {
            z = false;
        }
        if (this.weights > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z != z2) {
            return false;
        }
        return true;
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.DefaultShader, com.badlogic.gdx.graphics.g3d.shaders.BaseShader
    public void render(Renderable renderable, Attributes attributes) {
        long j = BlendingAttribute.Type;
        if (attributes.has(j)) {
            BlendingAttribute blendingAttribute = (BlendingAttribute) attributes.get(j);
            attributes.remove(j);
            long j2 = FloatAttribute.AlphaTest;
            boolean has = attributes.has(j2);
            if (!has) {
                attributes.set(this.f4806A0);
            }
            if (blendingAttribute.opacity >= ((FloatAttribute) attributes.get(j2)).value) {
                super.render(renderable, attributes);
            }
            if (!has) {
                attributes.remove(j2);
            }
            attributes.set(blendingAttribute);
            return;
        }
        super.render(renderable, attributes);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DepthShader(com.badlogic.gdx.graphics.g3d.Renderable r8, com.badlogic.gdx.graphics.g3d.shaders.DepthShader.Config r9, java.lang.String r10) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g3d.shaders.DepthShader.<init>(com.badlogic.gdx.graphics.g3d.Renderable, com.badlogic.gdx.graphics.g3d.shaders.DepthShader$Config, java.lang.String):void");
    }

    public static String createPrefix(Renderable renderable, Config config) {
        String createPrefix = DefaultShader.createPrefix(renderable, config);
        if (!config.depthBufferOnly) {
            return createPrefix + "#define PackedDepthFlag\n";
        }
        return createPrefix;
    }

    /* loaded from: classes.dex */
    public static class Config extends DefaultShader.Config {
        public float defaultAlphaTest;
        public boolean depthBufferOnly;

        public Config() {
            this.depthBufferOnly = false;
            this.defaultAlphaTest = 0.5f;
            this.defaultCullFace = GL20.GL_FRONT;
        }

        public Config(String str, String str2) {
            super(str, str2);
            this.depthBufferOnly = false;
            this.defaultAlphaTest = 0.5f;
        }
    }

    public DepthShader(Renderable renderable, Config config, String str, String str2, String str3) {
        this(renderable, config, new ShaderProgram(str + str2, str + str3));
    }

    public DepthShader(Renderable renderable, Config config, ShaderProgram shaderProgram) {
        super(renderable, config, shaderProgram);
        m24089f(renderable);
        Matrix4[] matrix4Arr = renderable.bones;
        if (matrix4Arr != null && matrix4Arr.length > config.numBones) {
            throw new GdxRuntimeException("too many bones: " + renderable.bones.length + ", max configured: " + config.numBones);
        }
        this.numBones = matrix4Arr == null ? 0 : config.numBones;
        int size = renderable.meshPart.mesh.getVertexAttributes().size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            VertexAttribute vertexAttribute = renderable.meshPart.mesh.getVertexAttributes().get(i2);
            if (vertexAttribute.usage == 64) {
                i |= 1 << vertexAttribute.unit;
            }
        }
        this.weights = i;
        this.f4806A0 = new FloatAttribute(FloatAttribute.AlphaTest, config.defaultAlphaTest);
    }
}
