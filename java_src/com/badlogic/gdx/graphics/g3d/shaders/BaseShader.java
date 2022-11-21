package com.badlogic.gdx.graphics.g3d.shaders;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GLTexture;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.Attributes;
import com.badlogic.gdx.graphics.g3d.Environment;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.Shader;
import com.badlogic.gdx.graphics.g3d.utils.RenderContext;
import com.badlogic.gdx.graphics.g3d.utils.TextureDescriptor;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntIntMap;
/* loaded from: classes.dex */
public abstract class BaseShader implements Shader {
    public Camera camera;
    public RenderContext context;

    /* renamed from: k */
    public int[] f4732k;
    public ShaderProgram program;

    /* renamed from: s */
    public Mesh f4736s;

    /* renamed from: a */
    public final Array<String> f4729a = new Array<>();

    /* renamed from: b */
    public final Array<Validator> f4730b = new Array<>();

    /* renamed from: d */
    public final Array<Setter> f4731d = new Array<>();

    /* renamed from: p */
    public final IntArray f4733p = new IntArray();

    /* renamed from: q */
    public final IntArray f4734q = new IntArray();

    /* renamed from: r */
    public final IntIntMap f4735r = new IntIntMap();

    /* renamed from: t */
    public final IntArray f4737t = new IntArray();

    /* renamed from: u */
    public Attributes f4738u = new Attributes();

    /* loaded from: classes.dex */
    public static abstract class GlobalSetter implements Setter {
        @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
        public boolean isGlobal(BaseShader baseShader, int i) {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class LocalSetter implements Setter {
        @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Setter
        public boolean isGlobal(BaseShader baseShader, int i) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface Setter {
        boolean isGlobal(BaseShader baseShader, int i);

        void set(BaseShader baseShader, int i, Renderable renderable, Attributes attributes);
    }

    /* loaded from: classes.dex */
    public static class Uniform implements Validator {
        public final String alias;
        public final long environmentMask;
        public final long materialMask;
        public final long overallMask;

        public Uniform(String str, long j, long j2, long j3) {
            this.alias = str;
            this.materialMask = j;
            this.environmentMask = j2;
            this.overallMask = j3;
        }

        @Override // com.badlogic.gdx.graphics.g3d.shaders.BaseShader.Validator
        public boolean validate(BaseShader baseShader, int i, Renderable renderable) {
            long j;
            Environment environment;
            Material material;
            long j2 = 0;
            if (renderable != null && (material = renderable.material) != null) {
                j = material.getMask();
            } else {
                j = 0;
            }
            if (renderable != null && (environment = renderable.environment) != null) {
                j2 = environment.getMask();
            }
            long j3 = this.materialMask;
            if ((j & j3) == j3) {
                long j4 = this.environmentMask;
                if ((j2 & j4) == j4) {
                    long j5 = j2 | j;
                    long j6 = this.overallMask;
                    if ((j5 & j6) == j6) {
                        return true;
                    }
                }
            }
            return false;
        }

        public Uniform(String str, long j, long j2) {
            this(str, j, j2, 0L);
        }

        public Uniform(String str, long j) {
            this(str, 0L, 0L, j);
        }

        public Uniform(String str) {
            this(str, 0L, 0L);
        }
    }

    /* loaded from: classes.dex */
    public interface Validator {
        boolean validate(BaseShader baseShader, int i, Renderable renderable);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.program = null;
        this.f4729a.clear();
        this.f4730b.clear();
        this.f4731d.clear();
        this.f4734q.clear();
        this.f4733p.clear();
        this.f4732k = null;
    }

    public String getUniformAlias(int i) {
        return this.f4729a.get(i);
    }

    public final boolean has(int i) {
        if (i >= 0) {
            int[] iArr = this.f4732k;
            if (i < iArr.length && iArr[i] >= 0) {
                return true;
            }
        }
        return false;
    }

    public final int loc(int i) {
        if (i >= 0) {
            int[] iArr = this.f4732k;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        return -1;
    }

    public int register(String str, Validator validator, Setter setter) {
        if (this.f4732k == null) {
            int uniformID = getUniformID(str);
            if (uniformID >= 0) {
                this.f4730b.set(uniformID, validator);
                this.f4731d.set(uniformID, setter);
                return uniformID;
            }
            this.f4729a.add(str);
            this.f4730b.add(validator);
            this.f4731d.add(setter);
            return this.f4729a.size - 1;
        }
        throw new GdxRuntimeException("Cannot register an uniform after initialization");
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public void render(Renderable renderable) {
        if (renderable.worldTransform.det3x3() == 0.0f) {
            return;
        }
        this.f4738u.clear();
        Environment environment = renderable.environment;
        if (environment != null) {
            this.f4738u.set(environment);
        }
        Material material = renderable.material;
        if (material != null) {
            this.f4738u.set(material);
        }
        render(renderable, this.f4738u);
    }

    public final boolean set(int i, Matrix4 matrix4) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformMatrix(i2, matrix4);
        return true;
    }

    /* renamed from: a */
    public final int[] m24096a(VertexAttributes vertexAttributes) {
        this.f4737t.clear();
        int size = vertexAttributes.size();
        for (int i = 0; i < size; i++) {
            this.f4737t.add(this.f4735r.get(vertexAttributes.get(i).getKey(), -1));
        }
        this.f4737t.shrink();
        return this.f4737t.items;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public void begin(Camera camera, RenderContext renderContext) {
        this.camera = camera;
        this.context = renderContext;
        this.program.bind();
        this.f4736s = null;
        int i = 0;
        while (true) {
            IntArray intArray = this.f4733p;
            if (i < intArray.size) {
                Array<Setter> array = this.f4731d;
                int i2 = intArray.get(i);
                if (array.get(i2) != null) {
                    this.f4731d.get(i2).set(this, i2, null, null);
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.Shader
    public void end() {
        Mesh mesh = this.f4736s;
        if (mesh != null) {
            mesh.unbind(this.program, this.f4737t.items);
            this.f4736s = null;
        }
    }

    public int getUniformID(String str) {
        int i = this.f4729a.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f4729a.get(i2).equals(str)) {
                return i2;
            }
        }
        return -1;
    }

    public void init(ShaderProgram shaderProgram, Renderable renderable) {
        if (this.f4732k == null) {
            if (shaderProgram.isCompiled()) {
                this.program = shaderProgram;
                int i = this.f4729a.size;
                this.f4732k = new int[i];
                for (int i2 = 0; i2 < i; i2++) {
                    String str = this.f4729a.get(i2);
                    Validator validator = this.f4730b.get(i2);
                    Setter setter = this.f4731d.get(i2);
                    if (validator != null && !validator.validate(this, i2, renderable)) {
                        this.f4732k[i2] = -1;
                    } else {
                        this.f4732k[i2] = shaderProgram.fetchUniformLocation(str, false);
                        if (this.f4732k[i2] >= 0 && setter != null) {
                            if (setter.isGlobal(this, i2)) {
                                this.f4733p.add(i2);
                            } else {
                                this.f4734q.add(i2);
                            }
                        }
                    }
                    if (this.f4732k[i2] < 0) {
                        this.f4730b.set(i2, null);
                        this.f4731d.set(i2, null);
                    }
                }
                if (renderable != null) {
                    VertexAttributes vertexAttributes = renderable.meshPart.mesh.getVertexAttributes();
                    int size = vertexAttributes.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        VertexAttribute vertexAttribute = vertexAttributes.get(i3);
                        int attributeLocation = shaderProgram.getAttributeLocation(vertexAttribute.alias);
                        if (attributeLocation >= 0) {
                            this.f4735r.put(vertexAttribute.getKey(), attributeLocation);
                        }
                    }
                    return;
                }
                return;
            }
            throw new GdxRuntimeException(shaderProgram.getLog());
        }
        throw new GdxRuntimeException("Already initialized");
    }

    public final boolean set(int i, Matrix3 matrix3) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformMatrix(i2, matrix3);
        return true;
    }

    public final boolean set(int i, Vector3 vector3) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformf(i2, vector3);
        return true;
    }

    public void render(Renderable renderable, Attributes attributes) {
        int i = 0;
        while (true) {
            IntArray intArray = this.f4734q;
            if (i >= intArray.size) {
                break;
            }
            Array<Setter> array = this.f4731d;
            int i2 = intArray.get(i);
            if (array.get(i2) != null) {
                this.f4731d.get(i2).set(this, i2, renderable, attributes);
            }
            i++;
        }
        Mesh mesh = this.f4736s;
        if (mesh != renderable.meshPart.mesh) {
            if (mesh != null) {
                mesh.unbind(this.program, this.f4737t.items);
            }
            Mesh mesh2 = renderable.meshPart.mesh;
            this.f4736s = mesh2;
            mesh2.bind(this.program, m24096a(mesh2.getVertexAttributes()));
        }
        renderable.meshPart.render(this.program, false);
    }

    public final boolean set(int i, Vector2 vector2) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformf(i2, vector2);
        return true;
    }

    public final boolean set(int i, Color color) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformf(i2, color);
        return true;
    }

    public int register(String str, Validator validator) {
        return register(str, validator, null);
    }

    public int register(String str, Setter setter) {
        return register(str, null, setter);
    }

    public final boolean set(int i, float f) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformf(i2, f);
        return true;
    }

    public int register(String str) {
        return register(str, null, null);
    }

    public int register(Uniform uniform, Setter setter) {
        return register(uniform.alias, uniform, setter);
    }

    public final boolean set(int i, float f, float f2) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformf(i2, f, f2);
        return true;
    }

    public int register(Uniform uniform) {
        return register(uniform, (Setter) null);
    }

    public final boolean set(int i, float f, float f2, float f3) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformf(i2, f, f2, f3);
        return true;
    }

    public final boolean set(int i, float f, float f2, float f3, float f4) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformf(i2, f, f2, f3, f4);
        return true;
    }

    public final boolean set(int i, int i2) {
        int i3 = this.f4732k[i];
        if (i3 < 0) {
            return false;
        }
        this.program.setUniformi(i3, i2);
        return true;
    }

    public final boolean set(int i, int i2, int i3) {
        int i4 = this.f4732k[i];
        if (i4 < 0) {
            return false;
        }
        this.program.setUniformi(i4, i2, i3);
        return true;
    }

    public final boolean set(int i, int i2, int i3, int i4) {
        int i5 = this.f4732k[i];
        if (i5 < 0) {
            return false;
        }
        this.program.setUniformi(i5, i2, i3, i4);
        return true;
    }

    public final boolean set(int i, int i2, int i3, int i4, int i5) {
        int i6 = this.f4732k[i];
        if (i6 < 0) {
            return false;
        }
        this.program.setUniformi(i6, i2, i3, i4, i5);
        return true;
    }

    public final boolean set(int i, TextureDescriptor textureDescriptor) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformi(i2, this.context.textureBinder.bind(textureDescriptor));
        return true;
    }

    public final boolean set(int i, GLTexture gLTexture) {
        int i2 = this.f4732k[i];
        if (i2 < 0) {
            return false;
        }
        this.program.setUniformi(i2, this.context.textureBinder.bind(gLTexture));
        return true;
    }
}
