package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
/* loaded from: classes.dex */
public class ShaderProgram implements Disposable {
    public static final String BINORMAL_ATTRIBUTE = "a_binormal";
    public static final String BONEWEIGHT_ATTRIBUTE = "a_boneWeight";
    public static final String COLOR_ATTRIBUTE = "a_color";

    /* renamed from: F */
    public static final ObjectMap<Application, Array<ShaderProgram>> f5092F = new ObjectMap<>();

    /* renamed from: G */
    public static final IntBuffer f5093G = BufferUtils.newIntBuffer(1);
    public static final String NORMAL_ATTRIBUTE = "a_normal";
    public static final String POSITION_ATTRIBUTE = "a_position";
    public static final String TANGENT_ATTRIBUTE = "a_tangent";
    public static final String TEXCOORD_ATTRIBUTE = "a_texCoord";
    public static boolean pedantic = true;
    public static String prependFragmentCode = "";
    public static String prependVertexCode = "";

    /* renamed from: A */
    public final String f5094A;

    /* renamed from: B */
    public boolean f5095B;

    /* renamed from: C */
    public int f5096C;

    /* renamed from: D */
    public IntBuffer f5097D;

    /* renamed from: E */
    public IntBuffer f5098E;

    /* renamed from: a */
    public String f5099a;

    /* renamed from: b */
    public boolean f5100b;

    /* renamed from: d */
    public final ObjectIntMap<String> f5101d;

    /* renamed from: k */
    public final ObjectIntMap<String> f5102k;

    /* renamed from: p */
    public final ObjectIntMap<String> f5103p;

    /* renamed from: q */
    public String[] f5104q;

    /* renamed from: r */
    public final ObjectIntMap<String> f5105r;

    /* renamed from: s */
    public final ObjectIntMap<String> f5106s;

    /* renamed from: t */
    public final ObjectIntMap<String> f5107t;

    /* renamed from: u */
    public String[] f5108u;

    /* renamed from: v */
    public int f5109v;

    /* renamed from: w */
    public int f5110w;

    /* renamed from: x */
    public int f5111x;

    /* renamed from: y */
    public final FloatBuffer f5112y;

    /* renamed from: z */
    public final String f5113z;

    public ShaderProgram(String str, String str2) {
        this.f5099a = "";
        this.f5101d = new ObjectIntMap<>();
        this.f5102k = new ObjectIntMap<>();
        this.f5103p = new ObjectIntMap<>();
        this.f5105r = new ObjectIntMap<>();
        this.f5106s = new ObjectIntMap<>();
        this.f5107t = new ObjectIntMap<>();
        this.f5096C = 0;
        this.f5097D = BufferUtils.newIntBuffer(1);
        this.f5098E = BufferUtils.newIntBuffer(1);
        if (str == null) {
            throw new IllegalArgumentException("vertex shader must not be null");
        }
        if (str2 != null) {
            String str3 = prependVertexCode;
            if (str3 != null && str3.length() > 0) {
                str = prependVertexCode + str;
            }
            String str4 = prependFragmentCode;
            if (str4 != null && str4.length() > 0) {
                str2 = prependFragmentCode + str2;
            }
            this.f5113z = str;
            this.f5094A = str2;
            this.f5112y = BufferUtils.newFloatBuffer(16);
            m24005c(str, str2);
            if (isCompiled()) {
                m24002f();
                m24000h();
                m24007a(Gdx.app, this);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("fragment shader must not be null");
    }

    public static void clearAllShaderPrograms(Application application) {
        f5092F.remove(application);
    }

    public static int getNumManagedShaderPrograms() {
        return f5092F.get(Gdx.app).size;
    }

    @Deprecated
    public void begin() {
        bind();
    }

    public void disableVertexAttribute(String str) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        int m24003e = m24003e(str);
        if (m24003e == -1) {
            return;
        }
        gl20.glDisableVertexAttribArray(m24003e);
    }

    public void enableVertexAttribute(String str) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        int m24003e = m24003e(str);
        if (m24003e == -1) {
            return;
        }
        gl20.glEnableVertexAttribArray(m24003e);
    }

    @Deprecated
    public void end() {
    }

    /* renamed from: g */
    public final int m24001g(String str) {
        return fetchUniformLocation(str, pedantic);
    }

    public int getAttributeLocation(String str) {
        return this.f5105r.get(str, -1);
    }

    public int getAttributeSize(String str) {
        return this.f5107t.get(str, 0);
    }

    public int getAttributeType(String str) {
        return this.f5106s.get(str, 0);
    }

    public String[] getAttributes() {
        return this.f5108u;
    }

    public String getFragmentShaderSource() {
        return this.f5094A;
    }

    public int getHandle() {
        return this.f5109v;
    }

    public int getUniformLocation(String str) {
        return this.f5101d.get(str, -1);
    }

    public int getUniformSize(String str) {
        return this.f5103p.get(str, 0);
    }

    public int getUniformType(String str) {
        return this.f5102k.get(str, 0);
    }

    public String[] getUniforms() {
        return this.f5104q;
    }

    public String getVertexShaderSource() {
        return this.f5113z;
    }

    public boolean hasAttribute(String str) {
        return this.f5105r.containsKey(str);
    }

    public boolean hasUniform(String str) {
        return this.f5101d.containsKey(str);
    }

    public boolean isCompiled() {
        return this.f5100b;
    }

    public void setUniform1fv(String str, float[] fArr, int i, int i2) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform1fv(m24001g(str), i2, fArr, i);
    }

    public void setUniform2fv(String str, float[] fArr, int i, int i2) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform2fv(m24001g(str), i2 / 2, fArr, i);
    }

    public void setUniform3fv(String str, float[] fArr, int i, int i2) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform3fv(m24001g(str), i2 / 3, fArr, i);
    }

    public void setUniform4fv(String str, float[] fArr, int i, int i2) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform4fv(m24001g(str), i2 / 4, fArr, i);
    }

    public void setUniformMatrix(String str, Matrix4 matrix4) {
        setUniformMatrix(str, matrix4, false);
    }

    public void setUniformMatrix4fv(String str, FloatBuffer floatBuffer, int i, boolean z) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        floatBuffer.position(0);
        gl20.glUniformMatrix4fv(m24001g(str), i, z, floatBuffer);
    }

    public void setUniformf(String str, float f) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform1f(m24001g(str), f);
    }

    public void setUniformi(String str, int i) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform1i(m24001g(str), i);
    }

    public void setVertexAttribute(String str, int i, int i2, boolean z, int i3, Buffer buffer) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        int m24003e = m24003e(str);
        if (m24003e == -1) {
            return;
        }
        gl20.glVertexAttribPointer(m24003e, i, i2, z, i3, buffer);
    }

    public static String getManagedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Managed shaders/app: { ");
        ObjectMap.Keys<Application> it = f5092F.keys().iterator();
        while (it.hasNext()) {
            sb.append(f5092F.get(it.next()).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb.toString();
    }

    public static void invalidateAllShaderPrograms(Application application) {
        Array<ShaderProgram> array;
        if (Gdx.gl20 == null || (array = f5092F.get(application)) == null) {
            return;
        }
        for (int i = 0; i < array.size; i++) {
            array.get(i).f5095B = true;
            array.get(i).m24006b();
        }
    }

    /* renamed from: a */
    public final void m24007a(Application application, ShaderProgram shaderProgram) {
        ObjectMap<Application, Array<ShaderProgram>> objectMap = f5092F;
        Array<ShaderProgram> array = objectMap.get(application);
        if (array == null) {
            array = new Array<>();
        }
        array.add(shaderProgram);
        objectMap.put(application, array);
    }

    /* renamed from: b */
    public final void m24006b() {
        if (this.f5095B) {
            m24005c(this.f5113z, this.f5094A);
            this.f5095B = false;
        }
    }

    public void bind() {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUseProgram(this.f5109v);
    }

    /* renamed from: d */
    public int m24004d() {
        int glCreateProgram = Gdx.gl20.glCreateProgram();
        if (glCreateProgram == 0) {
            return -1;
        }
        return glCreateProgram;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GL20 gl20 = Gdx.gl20;
        gl20.glUseProgram(0);
        gl20.glDeleteShader(this.f5110w);
        gl20.glDeleteShader(this.f5111x);
        gl20.glDeleteProgram(this.f5109v);
        ObjectMap<Application, Array<ShaderProgram>> objectMap = f5092F;
        if (objectMap.get(Gdx.app) != null) {
            objectMap.get(Gdx.app).removeValue(this, true);
        }
    }

    /* renamed from: e */
    public final int m24003e(String str) {
        GL20 gl20 = Gdx.gl20;
        int i = this.f5105r.get(str, -2);
        if (i == -2) {
            int glGetAttribLocation = gl20.glGetAttribLocation(this.f5109v, str);
            this.f5105r.put(str, glGetAttribLocation);
            return glGetAttribLocation;
        }
        return i;
    }

    /* renamed from: f */
    public final void m24002f() {
        this.f5097D.clear();
        Gdx.gl20.glGetProgramiv(this.f5109v, GL20.GL_ACTIVE_ATTRIBUTES, this.f5097D);
        int i = this.f5097D.get(0);
        this.f5108u = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.f5097D.clear();
            this.f5097D.put(0, 1);
            this.f5098E.clear();
            String glGetActiveAttrib = Gdx.gl20.glGetActiveAttrib(this.f5109v, i2, this.f5097D, this.f5098E);
            this.f5105r.put(glGetActiveAttrib, Gdx.gl20.glGetAttribLocation(this.f5109v, glGetActiveAttrib));
            this.f5106s.put(glGetActiveAttrib, this.f5098E.get(0));
            this.f5107t.put(glGetActiveAttrib, this.f5097D.get(0));
            this.f5108u[i2] = glGetActiveAttrib;
        }
    }

    public int fetchUniformLocation(String str, boolean z) {
        int i = this.f5101d.get(str, -2);
        if (i == -2) {
            i = Gdx.gl20.glGetUniformLocation(this.f5109v, str);
            if (i == -1 && z) {
                if (this.f5100b) {
                    throw new IllegalArgumentException("No uniform with name '" + str + "' in shader");
                }
                throw new IllegalStateException("An attempted fetch uniform from uncompiled shader \n" + getLog());
            }
            this.f5101d.put(str, i);
        }
        return i;
    }

    public String getLog() {
        if (this.f5100b) {
            String glGetProgramInfoLog = Gdx.gl20.glGetProgramInfoLog(this.f5109v);
            this.f5099a = glGetProgramInfoLog;
            return glGetProgramInfoLog;
        }
        return this.f5099a;
    }

    /* renamed from: h */
    public final void m24000h() {
        this.f5097D.clear();
        Gdx.gl20.glGetProgramiv(this.f5109v, GL20.GL_ACTIVE_UNIFORMS, this.f5097D);
        int i = this.f5097D.get(0);
        this.f5104q = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.f5097D.clear();
            this.f5097D.put(0, 1);
            this.f5098E.clear();
            String glGetActiveUniform = Gdx.gl20.glGetActiveUniform(this.f5109v, i2, this.f5097D, this.f5098E);
            this.f5101d.put(glGetActiveUniform, Gdx.gl20.glGetUniformLocation(this.f5109v, glGetActiveUniform));
            this.f5102k.put(glGetActiveUniform, this.f5098E.get(0));
            this.f5103p.put(glGetActiveUniform, this.f5097D.get(0));
            this.f5104q[i2] = glGetActiveUniform;
        }
    }

    /* renamed from: i */
    public final int m23999i(int i) {
        GL20 gl20 = Gdx.gl20;
        if (i == -1) {
            return -1;
        }
        gl20.glAttachShader(i, this.f5110w);
        gl20.glAttachShader(i, this.f5111x);
        gl20.glLinkProgram(i);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(4);
        allocateDirect.order(ByteOrder.nativeOrder());
        IntBuffer asIntBuffer = allocateDirect.asIntBuffer();
        gl20.glGetProgramiv(i, GL20.GL_LINK_STATUS, asIntBuffer);
        if (asIntBuffer.get(0) == 0) {
            this.f5099a = Gdx.gl20.glGetProgramInfoLog(i);
            return -1;
        }
        return i;
    }

    /* renamed from: j */
    public final int m23998j(int i, String str) {
        String str2;
        GL20 gl20 = Gdx.gl20;
        IntBuffer newIntBuffer = BufferUtils.newIntBuffer(1);
        int glCreateShader = gl20.glCreateShader(i);
        if (glCreateShader == 0) {
            return -1;
        }
        gl20.glShaderSource(glCreateShader, str);
        gl20.glCompileShader(glCreateShader);
        gl20.glGetShaderiv(glCreateShader, GL20.GL_COMPILE_STATUS, newIntBuffer);
        if (newIntBuffer.get(0) == 0) {
            String glGetShaderInfoLog = gl20.glGetShaderInfoLog(glCreateShader);
            StringBuilder sb = new StringBuilder();
            sb.append(this.f5099a);
            if (i == 35633) {
                str2 = "Vertex shader\n";
            } else {
                str2 = "Fragment shader:\n";
            }
            sb.append(str2);
            this.f5099a = sb.toString();
            this.f5099a += glGetShaderInfoLog;
            return -1;
        }
        return glCreateShader;
    }

    public void setAttributef(String str, float f, float f2, float f3, float f4) {
        Gdx.gl20.glVertexAttrib4f(m24003e(str), f, f2, f3, f4);
    }

    public void setUniformMatrix(String str, Matrix4 matrix4, boolean z) {
        setUniformMatrix(m24001g(str), matrix4, z);
    }

    public void setUniformMatrix3fv(String str, FloatBuffer floatBuffer, int i, boolean z) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        floatBuffer.position(0);
        gl20.glUniformMatrix3fv(m24001g(str), i, z, floatBuffer);
    }

    /* renamed from: c */
    public final void m24005c(String str, String str2) {
        this.f5110w = m23998j(GL20.GL_VERTEX_SHADER, str);
        int m23998j = m23998j(GL20.GL_FRAGMENT_SHADER, str2);
        this.f5111x = m23998j;
        if (this.f5110w != -1 && m23998j != -1) {
            int m23999i = m23999i(m24004d());
            this.f5109v = m23999i;
            if (m23999i == -1) {
                this.f5100b = false;
                return;
            } else {
                this.f5100b = true;
                return;
            }
        }
        this.f5100b = false;
    }

    public void setUniformMatrix(int i, Matrix4 matrix4) {
        setUniformMatrix(i, matrix4, false);
    }

    public void setUniformMatrix(int i, Matrix4 matrix4, boolean z) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniformMatrix4fv(i, 1, z, matrix4.val, 0);
    }

    public void disableVertexAttribute(int i) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glDisableVertexAttribArray(i);
    }

    public void enableVertexAttribute(int i) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glEnableVertexAttribArray(i);
    }

    public void setUniform1fv(int i, float[] fArr, int i2, int i3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform1fv(i, i3, fArr, i2);
    }

    public void setUniform2fv(int i, float[] fArr, int i2, int i3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform2fv(i, i3 / 2, fArr, i2);
    }

    public void setUniform3fv(int i, float[] fArr, int i2, int i3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform3fv(i, i3 / 3, fArr, i2);
    }

    public void setUniform4fv(int i, float[] fArr, int i2, int i3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform4fv(i, i3 / 4, fArr, i2);
    }

    public void setUniformf(int i, float f) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform1f(i, f);
    }

    public void setUniformi(int i, int i2) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform1i(i, i2);
    }

    public void setVertexAttribute(int i, int i2, int i3, boolean z, int i4, Buffer buffer) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glVertexAttribPointer(i, i2, i3, z, i4, buffer);
    }

    public void setUniformMatrix4fv(int i, float[] fArr, int i2, int i3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniformMatrix4fv(i, i3 / 16, false, fArr, i2);
    }

    public void setUniformMatrix(String str, Matrix3 matrix3) {
        setUniformMatrix(str, matrix3, false);
    }

    public void setUniformMatrix(String str, Matrix3 matrix3, boolean z) {
        setUniformMatrix(m24001g(str), matrix3, z);
    }

    public void setUniformf(String str, float f, float f2) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform2f(m24001g(str), f, f2);
    }

    public void setUniformi(String str, int i, int i2) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform2i(m24001g(str), i, i2);
    }

    public void setVertexAttribute(String str, int i, int i2, boolean z, int i3, int i4) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        int m24003e = m24003e(str);
        if (m24003e == -1) {
            return;
        }
        gl20.glVertexAttribPointer(m24003e, i, i2, z, i3, i4);
    }

    public void setUniformMatrix(int i, Matrix3 matrix3) {
        setUniformMatrix(i, matrix3, false);
    }

    public void setUniformMatrix4fv(String str, float[] fArr, int i, int i2) {
        setUniformMatrix4fv(m24001g(str), fArr, i, i2);
    }

    public void setUniformMatrix(int i, Matrix3 matrix3, boolean z) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniformMatrix3fv(i, 1, z, matrix3.val, 0);
    }

    public void setUniformf(int i, float f, float f2) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform2f(i, f, f2);
    }

    public void setUniformi(int i, int i2, int i3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform2i(i, i2, i3);
    }

    public void setVertexAttribute(int i, int i2, int i3, boolean z, int i4, int i5) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glVertexAttribPointer(i, i2, i3, z, i4, i5);
    }

    public void setUniformf(String str, float f, float f2, float f3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform3f(m24001g(str), f, f2, f3);
    }

    public void setUniformi(String str, int i, int i2, int i3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform3i(m24001g(str), i, i2, i3);
    }

    public void setUniformf(int i, float f, float f2, float f3) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform3f(i, f, f2, f3);
    }

    public void setUniformi(int i, int i2, int i3, int i4) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform3i(i, i2, i3, i4);
    }

    public void setUniformf(String str, float f, float f2, float f3, float f4) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform4f(m24001g(str), f, f2, f3, f4);
    }

    public void setUniformi(String str, int i, int i2, int i3, int i4) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform4i(m24001g(str), i, i2, i3, i4);
    }

    public ShaderProgram(FileHandle fileHandle, FileHandle fileHandle2) {
        this(fileHandle.readString(), fileHandle2.readString());
    }

    public void setUniformf(int i, float f, float f2, float f3, float f4) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform4f(i, f, f2, f3, f4);
    }

    public void setUniformi(int i, int i2, int i3, int i4, int i5) {
        GL20 gl20 = Gdx.gl20;
        m24006b();
        gl20.glUniform4i(i, i2, i3, i4, i5);
    }

    public void setUniformf(String str, Vector2 vector2) {
        setUniformf(str, vector2.f5527x, vector2.f5528y);
    }

    public void setUniformf(int i, Vector2 vector2) {
        setUniformf(i, vector2.f5527x, vector2.f5528y);
    }

    public void setUniformf(String str, Vector3 vector3) {
        setUniformf(str, vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    public void setUniformf(int i, Vector3 vector3) {
        setUniformf(i, vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    public void setUniformf(String str, Color color) {
        setUniformf(str, color.f3892r, color.f3891g, color.f3890b, color.f3889a);
    }

    public void setUniformf(int i, Color color) {
        setUniformf(i, color.f3892r, color.f3891g, color.f3890b, color.f3889a);
    }
}
