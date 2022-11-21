package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class GLOnlyTextureData implements TextureData {

    /* renamed from: a */
    public int f5001a;

    /* renamed from: b */
    public int f5002b;

    /* renamed from: c */
    public boolean f5003c = false;

    /* renamed from: d */
    public int f5004d;

    /* renamed from: e */
    public int f5005e;

    /* renamed from: f */
    public int f5006f;

    /* renamed from: g */
    public int f5007g;

    @Override // com.badlogic.gdx.graphics.TextureData
    public void consumeCustomData(int i) {
        Gdx.f3119gl.glTexImage2D(i, this.f5004d, this.f5005e, this.f5001a, this.f5002b, 0, this.f5006f, this.f5007g, null);
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public Pixmap consumePixmap() {
        throw new GdxRuntimeException("This TextureData implementation does not return a Pixmap");
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean disposePixmap() {
        throw new GdxRuntimeException("This TextureData implementation does not return a Pixmap");
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public Pixmap.Format getFormat() {
        return Pixmap.Format.RGBA8888;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getHeight() {
        return this.f5002b;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public TextureData.TextureDataType getType() {
        return TextureData.TextureDataType.Custom;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getWidth() {
        return this.f5001a;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isManaged() {
        return false;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isPrepared() {
        return this.f5003c;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean useMipMaps() {
        return false;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void prepare() {
        if (!this.f5003c) {
            this.f5003c = true;
            return;
        }
        throw new GdxRuntimeException("Already prepared");
    }

    public GLOnlyTextureData(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f5001a = i;
        this.f5002b = i2;
        this.f5004d = i3;
        this.f5005e = i4;
        this.f5006f = i5;
        this.f5007g = i6;
    }
}
