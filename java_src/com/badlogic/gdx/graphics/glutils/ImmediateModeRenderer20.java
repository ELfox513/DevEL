package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class ImmediateModeRenderer20 implements ImmediateModeRenderer {

    /* renamed from: a */
    public int f5018a;

    /* renamed from: b */
    public int f5019b;

    /* renamed from: c */
    public int f5020c;

    /* renamed from: d */
    public final int f5021d;

    /* renamed from: e */
    public int f5022e;

    /* renamed from: f */
    public final Mesh f5023f;

    /* renamed from: g */
    public ShaderProgram f5024g;

    /* renamed from: h */
    public boolean f5025h;

    /* renamed from: i */
    public final int f5026i;

    /* renamed from: j */
    public final int f5027j;

    /* renamed from: k */
    public final int f5028k;

    /* renamed from: l */
    public final int f5029l;

    /* renamed from: m */
    public final int f5030m;

    /* renamed from: n */
    public final Matrix4 f5031n;

    /* renamed from: o */
    public final float[] f5032o;

    /* renamed from: p */
    public final String[] f5033p;

    public ImmediateModeRenderer20(boolean z, boolean z2, int i) {
        this(5000, z, z2, i, createDefaultShader(z, z2, i));
        this.f5025h = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void color(Color color) {
        this.f5032o[this.f5019b + this.f5029l] = color.toFloatBits();
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void end() {
        flush();
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public int getMaxVertices() {
        return this.f5021d;
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public int getNumVertices() {
        return this.f5022e;
    }

    public ShaderProgram getShader() {
        return this.f5024g;
    }

    /* renamed from: b */
    public static String m24018b(boolean z, boolean z2, int i) {
        String str;
        String str2 = z2 ? "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_col;\n" : "#ifdef GL_ES\nprecision mediump float;\n#endif\n";
        for (int i2 = 0; i2 < i; i2++) {
            str2 = (str2 + "varying vec2 v_tex" + i2 + ";\n") + "uniform sampler2D u_sampler" + i2 + ";\n";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append("void main() {\n   gl_FragColor = ");
        if (z2) {
            str = "v_col";
        } else {
            str = "vec4(1, 1, 1, 1)";
        }
        sb.append(str);
        String sb2 = sb.toString();
        if (i > 0) {
            sb2 = sb2 + " * ";
        }
        for (int i3 = 0; i3 < i; i3++) {
            if (i3 == i - 1) {
                sb2 = sb2 + " texture2D(u_sampler" + i3 + ",  v_tex" + i3 + ")";
            } else {
                sb2 = sb2 + " texture2D(u_sampler" + i3 + ",  v_tex" + i3 + ") *";
            }
        }
        return sb2 + ";\n}";
    }

    /* renamed from: c */
    public static String m24017c(boolean z, boolean z2, int i) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("attribute vec4 a_position;\n");
        String str3 = "";
        if (!z) {
            str = "";
        } else {
            str = "attribute vec3 a_normal;\n";
        }
        sb.append(str);
        if (!z2) {
            str2 = "";
        } else {
            str2 = "attribute vec4 a_color;\n";
        }
        sb.append(str2);
        String sb2 = sb.toString();
        for (int i2 = 0; i2 < i; i2++) {
            sb2 = sb2 + "attribute vec2 a_texCoord" + i2 + ";\n";
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append("uniform mat4 u_projModelView;\n");
        if (z2) {
            str3 = "varying vec4 v_col;\n";
        }
        sb3.append(str3);
        String sb4 = sb3.toString();
        for (int i3 = 0; i3 < i; i3++) {
            sb4 = sb4 + "varying vec2 v_tex" + i3 + ";\n";
        }
        String str4 = sb4 + "void main() {\n   gl_Position = u_projModelView * a_position;\n";
        if (z2) {
            str4 = str4 + "   v_col = a_color;\n   v_col.a *= 255.0 / 254.0;\n";
        }
        for (int i4 = 0; i4 < i; i4++) {
            str4 = str4 + "   v_tex" + i4 + " = " + ShaderProgram.TEXCOORD_ATTRIBUTE + i4 + ";\n";
        }
        return str4 + "   gl_PointSize = 1.0;\n}\n";
    }

    /* renamed from: a */
    public final VertexAttribute[] m24019a(boolean z, boolean z2, int i) {
        Array array = new Array();
        array.add(new VertexAttribute(1, 3, ShaderProgram.POSITION_ATTRIBUTE));
        if (z) {
            array.add(new VertexAttribute(8, 3, ShaderProgram.NORMAL_ATTRIBUTE));
        }
        if (z2) {
            array.add(new VertexAttribute(4, 4, ShaderProgram.COLOR_ATTRIBUTE));
        }
        for (int i2 = 0; i2 < i; i2++) {
            array.add(new VertexAttribute(16, 2, ShaderProgram.TEXCOORD_ATTRIBUTE + i2));
        }
        VertexAttribute[] vertexAttributeArr = new VertexAttribute[array.size];
        for (int i3 = 0; i3 < array.size; i3++) {
            vertexAttributeArr[i3] = (VertexAttribute) array.get(i3);
        }
        return vertexAttributeArr;
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void begin(Matrix4 matrix4, int i) {
        this.f5031n.set(matrix4);
        this.f5018a = i;
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void color(float f, float f2, float f3, float f4) {
        this.f5032o[this.f5019b + this.f5029l] = Color.toFloatBits(f, f2, f3, f4);
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void dispose() {
        ShaderProgram shaderProgram;
        if (this.f5025h && (shaderProgram = this.f5024g) != null) {
            shaderProgram.dispose();
        }
        this.f5023f.dispose();
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void flush() {
        if (this.f5022e == 0) {
            return;
        }
        this.f5024g.bind();
        this.f5024g.setUniformMatrix("u_projModelView", this.f5031n);
        for (int i = 0; i < this.f5026i; i++) {
            this.f5024g.setUniformi(this.f5033p[i], i);
        }
        this.f5023f.setVertices(this.f5032o, 0, this.f5019b);
        this.f5023f.render(this.f5024g, this.f5018a);
        this.f5020c = 0;
        this.f5019b = 0;
        this.f5022e = 0;
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void normal(float f, float f2, float f3) {
        int i = this.f5019b + this.f5028k;
        float[] fArr = this.f5032o;
        fArr[i] = f;
        fArr[i + 1] = f2;
        fArr[i + 2] = f3;
    }

    public void setShader(ShaderProgram shaderProgram) {
        if (this.f5025h) {
            this.f5024g.dispose();
        }
        this.f5024g = shaderProgram;
        this.f5025h = false;
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void texCoord(float f, float f2) {
        int i = this.f5019b + this.f5030m;
        float[] fArr = this.f5032o;
        int i2 = this.f5020c;
        fArr[i + i2] = f;
        fArr[i + i2 + 1] = f2;
        this.f5020c = i2 + 2;
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void vertex(float f, float f2, float f3) {
        int i = this.f5019b;
        float[] fArr = this.f5032o;
        fArr[i] = f;
        fArr[i + 1] = f2;
        fArr[i + 2] = f3;
        this.f5020c = 0;
        this.f5019b = i + this.f5027j;
        this.f5022e++;
    }

    public ImmediateModeRenderer20(int i, boolean z, boolean z2, int i2) {
        this(i, z, z2, i2, createDefaultShader(z, z2, i2));
        this.f5025h = true;
    }

    public static ShaderProgram createDefaultShader(boolean z, boolean z2, int i) {
        ShaderProgram shaderProgram = new ShaderProgram(m24017c(z, z2, i), m24018b(z, z2, i));
        if (shaderProgram.isCompiled()) {
            return shaderProgram;
        }
        throw new GdxRuntimeException("Error compiling shader: " + shaderProgram.getLog());
    }

    @Override // com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer
    public void color(float f) {
        this.f5032o[this.f5019b + this.f5029l] = f;
    }

    public ImmediateModeRenderer20(int i, boolean z, boolean z2, int i2, ShaderProgram shaderProgram) {
        this.f5031n = new Matrix4();
        this.f5021d = i;
        this.f5026i = i2;
        this.f5024g = shaderProgram;
        Mesh mesh = new Mesh(false, i, 0, m24019a(z, z2, i2));
        this.f5023f = mesh;
        this.f5032o = new float[i * (mesh.getVertexAttributes().vertexSize / 4)];
        this.f5027j = mesh.getVertexAttributes().vertexSize / 4;
        this.f5028k = mesh.getVertexAttribute(8) != null ? mesh.getVertexAttribute(8).offset / 4 : 0;
        this.f5029l = mesh.getVertexAttribute(4) != null ? mesh.getVertexAttribute(4).offset / 4 : 0;
        this.f5030m = mesh.getVertexAttribute(16) != null ? mesh.getVertexAttribute(16).offset / 4 : 0;
        this.f5033p = new String[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            String[] strArr = this.f5033p;
            strArr[i3] = "u_sampler" + i3;
        }
    }
}
