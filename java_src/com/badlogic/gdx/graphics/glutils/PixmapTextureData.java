package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class PixmapTextureData implements TextureData {

    /* renamed from: a */
    public final Pixmap f5087a;

    /* renamed from: b */
    public final Pixmap.Format f5088b;

    /* renamed from: c */
    public final boolean f5089c;

    /* renamed from: d */
    public final boolean f5090d;

    /* renamed from: e */
    public final boolean f5091e;

    public PixmapTextureData(Pixmap pixmap, Pixmap.Format format, boolean z, boolean z2) {
        this(pixmap, format, z, z2, false);
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void consumeCustomData(int i) {
        throw new GdxRuntimeException("This TextureData implementation does not upload data itself");
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public Pixmap consumePixmap() {
        return this.f5087a;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean disposePixmap() {
        return this.f5090d;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public Pixmap.Format getFormat() {
        return this.f5088b;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getHeight() {
        return this.f5087a.getHeight();
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public TextureData.TextureDataType getType() {
        return TextureData.TextureDataType.Pixmap;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getWidth() {
        return this.f5087a.getWidth();
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isManaged() {
        return this.f5091e;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isPrepared() {
        return true;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void prepare() {
        throw new GdxRuntimeException("prepare() must not be called on a PixmapTextureData instance as it is already prepared.");
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean useMipMaps() {
        return this.f5089c;
    }

    public PixmapTextureData(Pixmap pixmap, Pixmap.Format format, boolean z, boolean z2, boolean z3) {
        this.f5087a = pixmap;
        this.f5088b = format == null ? pixmap.getFormat() : format;
        this.f5089c = z;
        this.f5090d = z2;
        this.f5091e = z3;
    }
}
