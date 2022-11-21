package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.glutils.GLVersion;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.FloatBuffer;
/* loaded from: classes.dex */
public class FloatTextureData implements TextureData {

    /* renamed from: a */
    public int f4963a;

    /* renamed from: b */
    public int f4964b;

    /* renamed from: c */
    public int f4965c;

    /* renamed from: d */
    public int f4966d;

    /* renamed from: e */
    public int f4967e;

    /* renamed from: f */
    public boolean f4968f;

    /* renamed from: g */
    public boolean f4969g = false;

    /* renamed from: h */
    public FloatBuffer f4970h;

    @Override // com.badlogic.gdx.graphics.TextureData
    public Pixmap consumePixmap() {
        throw new GdxRuntimeException("This TextureData implementation does not return a Pixmap");
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean disposePixmap() {
        throw new GdxRuntimeException("This TextureData implementation does not return a Pixmap");
    }

    public FloatBuffer getBuffer() {
        return this.f4970h;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public Pixmap.Format getFormat() {
        return Pixmap.Format.RGBA8888;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getHeight() {
        return this.f4964b;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public TextureData.TextureDataType getType() {
        return TextureData.TextureDataType.Custom;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getWidth() {
        return this.f4963a;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isManaged() {
        return true;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isPrepared() {
        return this.f4969g;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean useMipMaps() {
        return false;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void consumeCustomData(int i) {
        if (Gdx.app.getType() != Application.ApplicationType.Android && Gdx.app.getType() != Application.ApplicationType.iOS && Gdx.app.getType() != Application.ApplicationType.WebGL) {
            if (!Gdx.graphics.isGL30Available() && !Gdx.graphics.supportsExtension("GL_ARB_texture_float")) {
                throw new GdxRuntimeException("Extension GL_ARB_texture_float not supported!");
            }
            Gdx.f3119gl.glTexImage2D(i, 0, this.f4965c, this.f4963a, this.f4964b, 0, this.f4966d, GL20.GL_FLOAT, this.f4970h);
        } else if (Gdx.graphics.supportsExtension("OES_texture_float")) {
            Gdx.f3119gl.glTexImage2D(i, 0, GL20.GL_RGBA, this.f4963a, this.f4964b, 0, GL20.GL_RGBA, GL20.GL_FLOAT, this.f4970h);
        } else {
            throw new GdxRuntimeException("Extension OES_texture_float not supported!");
        }
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void prepare() {
        if (!this.f4969g) {
            if (!this.f4968f) {
                int i = 4;
                if (Gdx.graphics.getGLVersion().getType().equals(GLVersion.Type.OpenGL)) {
                    int i2 = this.f4965c;
                    if (i2 != 34842) {
                    }
                    i = (i2 == 34843 || i2 == 34837) ? 3 : 3;
                    i = (i2 == 33327 || i2 == 33328) ? 2 : 2;
                    if (i2 == 33325 || i2 == 33326) {
                        i = 1;
                    }
                }
                this.f4970h = BufferUtils.newFloatBuffer(this.f4963a * this.f4964b * i);
            }
            this.f4969g = true;
            return;
        }
        throw new GdxRuntimeException("Already prepared");
    }

    public FloatTextureData(int i, int i2, int i3, int i4, int i5, boolean z) {
        this.f4963a = i;
        this.f4964b = i2;
        this.f4965c = i3;
        this.f4966d = i4;
        this.f4967e = i5;
        this.f4968f = z;
    }
}
