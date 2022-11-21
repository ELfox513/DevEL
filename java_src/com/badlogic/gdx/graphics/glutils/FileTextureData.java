package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class FileTextureData implements TextureData {

    /* renamed from: a */
    public final FileHandle f4956a;

    /* renamed from: b */
    public int f4957b;

    /* renamed from: c */
    public int f4958c;

    /* renamed from: d */
    public Pixmap.Format f4959d;

    /* renamed from: e */
    public Pixmap f4960e;

    /* renamed from: f */
    public boolean f4961f;

    /* renamed from: g */
    public boolean f4962g = false;

    @Override // com.badlogic.gdx.graphics.TextureData
    public void consumeCustomData(int i) {
        throw new GdxRuntimeException("This TextureData implementation does not upload data itself");
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean disposePixmap() {
        return true;
    }

    public FileHandle getFileHandle() {
        return this.f4956a;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public Pixmap.Format getFormat() {
        return this.f4959d;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getHeight() {
        return this.f4958c;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public TextureData.TextureDataType getType() {
        return TextureData.TextureDataType.Pixmap;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getWidth() {
        return this.f4957b;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isManaged() {
        return true;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isPrepared() {
        return this.f4962g;
    }

    public String toString() {
        return this.f4956a.toString();
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean useMipMaps() {
        return this.f4961f;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public Pixmap consumePixmap() {
        if (this.f4962g) {
            this.f4962g = false;
            Pixmap pixmap = this.f4960e;
            this.f4960e = null;
            return pixmap;
        }
        throw new GdxRuntimeException("Call prepare() before calling getPixmap()");
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void prepare() {
        if (!this.f4962g) {
            if (this.f4960e == null) {
                if (this.f4956a.extension().equals("cim")) {
                    this.f4960e = PixmapIO.readCIM(this.f4956a);
                } else {
                    this.f4960e = new Pixmap(this.f4956a);
                }
                this.f4957b = this.f4960e.getWidth();
                this.f4958c = this.f4960e.getHeight();
                if (this.f4959d == null) {
                    this.f4959d = this.f4960e.getFormat();
                }
            }
            this.f4962g = true;
            return;
        }
        throw new GdxRuntimeException("Already prepared");
    }

    public FileTextureData(FileHandle fileHandle, Pixmap pixmap, Pixmap.Format format, boolean z) {
        this.f4957b = 0;
        this.f4958c = 0;
        this.f4956a = fileHandle;
        this.f4960e = pixmap;
        this.f4959d = format;
        this.f4961f = z;
        if (pixmap != null) {
            this.f4957b = pixmap.getWidth();
            this.f4958c = this.f4960e.getHeight();
            if (format == null) {
                this.f4959d = this.f4960e.getFormat();
            }
        }
    }
}
