package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureArrayData;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.Buffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class TextureArray extends GLTexture {

    /* renamed from: t */
    public static final Map<Application, Array<TextureArray>> f3953t = new HashMap();

    /* renamed from: s */
    public TextureArrayData f3954s;

    public TextureArray(String... strArr) {
        this(m24252d(strArr));
    }

    public static void clearAllTextureArrays(Application application) {
        f3953t.remove(application);
    }

    /* renamed from: d */
    public static FileHandle[] m24252d(String... strArr) {
        FileHandle[] fileHandleArr = new FileHandle[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            fileHandleArr[i] = Gdx.files.internal(strArr[i]);
        }
        return fileHandleArr;
    }

    public static int getNumManagedTextureArrays() {
        return f3953t.get(Gdx.app).size;
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getDepth() {
        return this.f3954s.getDepth();
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getHeight() {
        return this.f3954s.getHeight();
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getWidth() {
        return this.f3954s.getWidth();
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public boolean isManaged() {
        return this.f3954s.isManaged();
    }

    public TextureArray(FileHandle... fileHandleArr) {
        this(false, fileHandleArr);
    }

    /* renamed from: c */
    public static void m24253c(Application application, TextureArray textureArray) {
        Map<Application, Array<TextureArray>> map = f3953t;
        Array<TextureArray> array = map.get(application);
        if (array == null) {
            array = new Array<>();
        }
        array.add(textureArray);
        map.put(application, array);
    }

    public static String getManagedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Managed TextureArrays/app: { ");
        for (Application application : f3953t.keySet()) {
            sb.append(f3953t.get(application).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb.toString();
    }

    public static void invalidateAllTextureArrays(Application application) {
        Array<TextureArray> array = f3953t.get(application);
        if (array == null) {
            return;
        }
        for (int i = 0; i < array.size; i++) {
            array.get(i).m24250f();
        }
    }

    /* renamed from: e */
    public final void m24251e(TextureArrayData textureArrayData) {
        if (this.f3954s != null && textureArrayData.isManaged() != this.f3954s.isManaged()) {
            throw new GdxRuntimeException("New data must have the same managed status as the old data");
        }
        this.f3954s = textureArrayData;
        bind();
        Gdx.gl30.glTexImage3D(GL30.GL_TEXTURE_2D_ARRAY, 0, textureArrayData.getInternalFormat(), textureArrayData.getWidth(), textureArrayData.getHeight(), textureArrayData.getDepth(), 0, textureArrayData.getInternalFormat(), textureArrayData.getGLType(), (Buffer) null);
        if (!textureArrayData.isPrepared()) {
            textureArrayData.prepare();
        }
        textureArrayData.consumeTextureArrayData();
        setFilter(this.f3905b, this.f3906d);
        setWrap(this.f3907k, this.f3908p);
        Gdx.f3119gl.glBindTexture(this.glTarget, 0);
    }

    public TextureArray(boolean z, FileHandle... fileHandleArr) {
        this(z, Pixmap.Format.RGBA8888, fileHandleArr);
    }

    /* renamed from: f */
    public void m24250f() {
        if (isManaged()) {
            this.f3904a = Gdx.f3119gl.glGenTexture();
            m24251e(this.f3954s);
            return;
        }
        throw new GdxRuntimeException("Tried to reload an unmanaged TextureArray");
    }

    public TextureArray(boolean z, Pixmap.Format format, FileHandle... fileHandleArr) {
        this(TextureArrayData.Factory.loadFromFiles(format, z, fileHandleArr));
    }

    public TextureArray(TextureArrayData textureArrayData) {
        super(GL30.GL_TEXTURE_2D_ARRAY, Gdx.f3119gl.glGenTexture());
        if (Gdx.gl30 != null) {
            m24251e(textureArrayData);
            if (textureArrayData.isManaged()) {
                m24253c(Gdx.app, this);
                return;
            }
            return;
        }
        throw new GdxRuntimeException("TextureArray requires a device running with GLES 3.0 compatibilty");
    }
}
