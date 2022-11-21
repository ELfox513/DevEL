package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.graphics.g3d.Attributes;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.Shader;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.DepthTestAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.IntAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.TextureAttribute;
import com.badlogic.gdx.graphics.g3d.shaders.BaseShader;
import com.badlogic.gdx.graphics.g3d.shaders.DefaultShader;
import com.badlogic.gdx.graphics.g3d.utils.RenderContext;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ParticleShader extends BaseShader {

    /* renamed from: A */
    public static String f4533A;

    /* renamed from: B */
    public static String f4534B;

    /* renamed from: C */
    public static long f4535C = BlendingAttribute.Type | TextureAttribute.Diffuse;

    /* renamed from: D */
    public static final Vector3 f4536D = new Vector3();

    /* renamed from: E */
    public static final long f4537E = IntAttribute.CullFace | DepthTestAttribute.Type;

    /* renamed from: v */
    public Renderable f4538v;

    /* renamed from: w */
    public long f4539w;

    /* renamed from: x */
    public long f4540x;

    /* renamed from: y */
    public final Config f4541y;

    /* renamed from: z */
    public Material f4542z;

    /* loaded from: classes.dex */
    public enum AlignMode {
        Screen,
        ViewPoint
    }

    /* loaded from: classes.dex */
    public static class Inputs {
        public static final BaseShader.Uniform cameraRight = new BaseShader.Uniform("u_cameraRight");
        public static final BaseShader.Uniform cameraInvDirection = new BaseShader.Uniform("u_cameraInvDirection");
        public static final BaseShader.Uniform screenWidth = new BaseShader.Uniform("u_screenWidth");
        public static final BaseShader.Uniform regionSize = new BaseShader.Uniform("u_regionSize");
    }

    /* loaded from: classes.dex */
    public enum ParticleType {
        Billboard,
        Point
    }

    /* loaded from: classes.dex */
    public static class Setters {
        public static final BaseShader.Setter cameraRight = new BaseShader.Setter() { // from class: com.badlogic.gdx.graphics.g3d.particles.ParticleShader.Setters.1
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public boolean isGlobal(BaseShader baseShader, int i) {
                return true;
            }

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, ParticleShader.f4536D.set(baseShader.camera.direction).crs(baseShader.camera.f3888up).nor());
            }
        };
        public static final BaseShader.Setter cameraUp = new BaseShader.Setter() { // from class: com.badlogic.gdx.graphics.g3d.particles.ParticleShader.Setters.2
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public boolean isGlobal(BaseShader baseShader, int i) {
                return true;
            }

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, ParticleShader.f4536D.set(baseShader.camera.f3888up).nor());
            }
        };
        public static final BaseShader.Setter cameraInvDirection = new BaseShader.Setter() { // from class: com.badlogic.gdx.graphics.g3d.particles.ParticleShader.Setters.3
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public boolean isGlobal(BaseShader baseShader, int i) {
                return true;
            }

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                Vector3 vector3 = ParticleShader.f4536D;
                Vector3 vector32 = baseShader.camera.direction;
                baseShader.set(i, vector3.set(-vector32.f5533x, -vector32.f5534y, -vector32.f5535z).nor());
            }
        };
        public static final BaseShader.Setter cameraPosition = new BaseShader.Setter() { // from class: com.badlogic.gdx.graphics.g3d.particles.ParticleShader.Setters.4
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public boolean isGlobal(BaseShader baseShader, int i) {
                return true;
            }

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, baseShader.camera.position);
            }
        };
        public static final BaseShader.Setter screenWidth = new BaseShader.Setter() { // from class: com.badlogic.gdx.graphics.g3d.particles.ParticleShader.Setters.5
            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public boolean isGlobal(BaseShader baseShader, int i) {
                return true;
            }

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, Gdx.graphics.getWidth());
            }
        };
        public static final BaseShader.Setter worldViewTrans = new BaseShader.Setter() { // from class: com.badlogic.gdx.graphics.g3d.particles.ParticleShader.Setters.6

            /* renamed from: a */
            public final Matrix4 f4545a = new Matrix4();

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public boolean isGlobal(BaseShader baseShader, int i) {
                return false;
            }

            @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
            public void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes) {
                baseShader.set(i, this.f4545a.set(baseShader.camera.view).mul(renderable.worldTransform));
            }
        };
    }

    public ParticleShader(Renderable renderable) {
        this(renderable, new Config());
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.graphics.g3d.Shader
    public void begin(Camera camera, RenderContext renderContext) {
        super.begin(camera, renderContext);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public int compareTo(Shader shader) {
        return shader == null ? -1 : 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.graphics.g3d.Shader
    public void end() {
        this.f4542z = null;
        super.end();
    }

    public boolean equals(ParticleShader particleShader) {
        return particleShader == this;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ParticleShader) && equals((ParticleShader) obj);
    }

    public int getDefaultCullFace() {
        int i = this.f4541y.defaultCullFace;
        return i == -1 ? GL20.GL_BACK : i;
    }

    public int getDefaultDepthFunc() {
        int i = this.f4541y.defaultDepthFunc;
        return i == -1 ? GL20.GL_LEQUAL : i;
    }

    public void setDefaultCullFace(int i) {
        this.f4541y.defaultCullFace = i;
    }

    public void setDefaultDepthFunc(int i) {
        this.f4541y.defaultDepthFunc = i;
    }

    public ParticleShader(Renderable renderable, Config config) {
        this(renderable, config, createPrefix(renderable, config));
    }

    public static String createPrefix(Renderable renderable, Config config) {
        String str;
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            str = "#version 120\n";
        } else {
            str = "#version 100\n";
        }
        if (config.type == ParticleType.Billboard) {
            String str2 = str + "#define billboard\n";
            AlignMode alignMode = config.align;
            if (alignMode == AlignMode.Screen) {
                return str2 + "#define screenFacing\n";
            } else if (alignMode == AlignMode.ViewPoint) {
                return str2 + "#define viewPointFacing\n";
            } else {
                return str2;
            }
        }
        return str;
    }

    public static String getDefaultFragmentShader() {
        if (f4534B == null) {
            f4534B = Gdx.files.classpath("com/badlogic/gdx/graphics/g3d/particles/particles.fragment.glsl").readString();
        }
        return f4534B;
    }

    public static String getDefaultVertexShader() {
        if (f4533A == null) {
            f4533A = Gdx.files.classpath("com/badlogic/gdx/graphics/g3d/particles/particles.vertex.glsl").readString();
        }
        return f4533A;
    }

    /* renamed from: b */
    public void m24115b(Renderable renderable) {
        Material material = this.f4542z;
        Material material2 = renderable.material;
        if (material == material2) {
            return;
        }
        Config config = this.f4541y;
        int i = config.defaultCullFace;
        if (i == -1) {
            i = GL20.GL_BACK;
        }
        int i2 = config.defaultDepthFunc;
        if (i2 == -1) {
            i2 = GL20.GL_LEQUAL;
        }
        float f = 0.0f;
        float f2 = 1.0f;
        this.f4542z = material2;
        Iterator<Attribute> it = material2.iterator();
        boolean z = true;
        while (it.hasNext()) {
            Attribute next = it.next();
            long j = next.type;
            if (BlendingAttribute.m24160is(j)) {
                BlendingAttribute blendingAttribute = (BlendingAttribute) next;
                this.context.setBlending(true, blendingAttribute.sourceFunction, blendingAttribute.destFunction);
            } else {
                long j2 = DepthTestAttribute.Type;
                if ((j & j2) == j2) {
                    DepthTestAttribute depthTestAttribute = (DepthTestAttribute) next;
                    i2 = depthTestAttribute.depthFunc;
                    f = depthTestAttribute.depthRangeNear;
                    f2 = depthTestAttribute.depthRangeFar;
                    z = depthTestAttribute.depthMask;
                } else if (!this.f4541y.ignoreUnimplemented) {
                    throw new GdxRuntimeException("Unknown material attribute: " + next.toString());
                }
            }
        }
        this.context.setCullFace(i);
        this.context.setDepthTest(i2, f, f2);
        this.context.setDepthMask(z);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public boolean canRender(Renderable renderable) {
        if (this.f4539w == (renderable.material.getMask() | f4537E) && this.f4540x == renderable.meshPart.mesh.getVertexAttributes().getMask()) {
            return true;
        }
        return false;
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.program.dispose();
        super.dispose();
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public void init() {
        ShaderProgram shaderProgram = this.program;
        this.program = null;
        init(shaderProgram, this.f4538v);
        this.f4538v = null;
    }

    @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader, com.badlogic.gdx.graphics.g3d.Shader
    public void render(Renderable renderable) {
        if (!renderable.material.has(BlendingAttribute.Type)) {
            this.context.setBlending(false, GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
        m24115b(renderable);
        super.render(renderable);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ParticleShader(com.badlogic.gdx.graphics.g3d.Renderable r8, com.badlogic.gdx.graphics.g3d.particles.ParticleShader.Config r9, java.lang.String r10) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g3d.particles.ParticleShader.<init>(com.badlogic.gdx.graphics.g3d.Renderable, com.badlogic.gdx.graphics.g3d.particles.ParticleShader$Config, java.lang.String):void");
    }

    public ParticleShader(Renderable renderable, Config config, String str, String str2, String str3) {
        this(renderable, config, new ShaderProgram(str + str2, str + str3));
    }

    public ParticleShader(Renderable renderable, Config config, ShaderProgram shaderProgram) {
        this.f4541y = config;
        this.program = shaderProgram;
        this.f4538v = renderable;
        this.f4539w = renderable.material.getMask() | f4537E;
        this.f4540x = renderable.meshPart.mesh.getVertexAttributes().getMask();
        if (!config.ignoreUnimplemented) {
            long j = f4535C;
            long j2 = this.f4539w;
            if ((j & j2) != j2) {
                throw new GdxRuntimeException("Some attributes not implemented yet (" + this.f4539w + ")");
            }
        }
        register(DefaultShader.Inputs.viewTrans, DefaultShader.Setters.viewTrans);
        register(DefaultShader.Inputs.projViewTrans, DefaultShader.Setters.projViewTrans);
        register(DefaultShader.Inputs.projTrans, DefaultShader.Setters.projTrans);
        register(Inputs.screenWidth, Setters.screenWidth);
        register(DefaultShader.Inputs.cameraUp, Setters.cameraUp);
        register(Inputs.cameraRight, Setters.cameraRight);
        register(Inputs.cameraInvDirection, Setters.cameraInvDirection);
        register(DefaultShader.Inputs.cameraPosition, Setters.cameraPosition);
        register(DefaultShader.Inputs.diffuseTexture, DefaultShader.Setters.diffuseTexture);
    }

    /* loaded from: classes.dex */
    public static class Config {
        public AlignMode align;
        public int defaultCullFace;
        public int defaultDepthFunc;
        public String fragmentShader;
        public boolean ignoreUnimplemented;
        public ParticleType type;
        public String vertexShader;

        public Config() {
            this.vertexShader = null;
            this.fragmentShader = null;
            this.ignoreUnimplemented = true;
            this.defaultCullFace = -1;
            this.defaultDepthFunc = -1;
            this.align = AlignMode.Screen;
            this.type = ParticleType.Billboard;
        }

        public Config(AlignMode alignMode, ParticleType particleType) {
            this.vertexShader = null;
            this.fragmentShader = null;
            this.ignoreUnimplemented = true;
            this.defaultCullFace = -1;
            this.defaultDepthFunc = -1;
            this.align = AlignMode.Screen;
            ParticleType particleType2 = ParticleType.Billboard;
            this.align = alignMode;
            this.type = particleType;
        }

        public Config(AlignMode alignMode) {
            this.vertexShader = null;
            this.fragmentShader = null;
            this.ignoreUnimplemented = true;
            this.defaultCullFace = -1;
            this.defaultDepthFunc = -1;
            this.align = AlignMode.Screen;
            this.type = ParticleType.Billboard;
            this.align = alignMode;
        }

        public Config(ParticleType particleType) {
            this.vertexShader = null;
            this.fragmentShader = null;
            this.ignoreUnimplemented = true;
            this.defaultCullFace = -1;
            this.defaultDepthFunc = -1;
            this.align = AlignMode.Screen;
            ParticleType particleType2 = ParticleType.Billboard;
            this.type = particleType;
        }

        public Config(String str, String str2) {
            this.vertexShader = null;
            this.fragmentShader = null;
            this.ignoreUnimplemented = true;
            this.defaultCullFace = -1;
            this.defaultDepthFunc = -1;
            this.align = AlignMode.Screen;
            this.type = ParticleType.Billboard;
            this.vertexShader = str;
            this.fragmentShader = str2;
        }
    }
}
