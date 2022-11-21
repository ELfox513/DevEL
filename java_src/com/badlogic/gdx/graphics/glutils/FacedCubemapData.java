package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Cubemap;
import com.badlogic.gdx.graphics.CubemapData;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class FacedCubemapData implements CubemapData {

    /* renamed from: a */
    public final TextureData[] f4950a;

    public FacedCubemapData() {
        this((TextureData) null, (TextureData) null, (TextureData) null, (TextureData) null, (TextureData) null, (TextureData) null);
    }

    public TextureData getTextureData(Cubemap.CubemapSide cubemapSide) {
        return this.f4950a[cubemapSide.index];
    }

    public boolean isComplete() {
        int i = 0;
        while (true) {
            TextureData[] textureDataArr = this.f4950a;
            if (i < textureDataArr.length) {
                if (textureDataArr[i] == null) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.CubemapData
    public boolean isPrepared() {
        return false;
    }

    public void load(Cubemap.CubemapSide cubemapSide, FileHandle fileHandle) {
        this.f4950a[cubemapSide.index] = TextureData.Factory.loadFromFile(fileHandle, false);
    }

    public FacedCubemapData(FileHandle fileHandle, FileHandle fileHandle2, FileHandle fileHandle3, FileHandle fileHandle4, FileHandle fileHandle5, FileHandle fileHandle6) {
        this(TextureData.Factory.loadFromFile(fileHandle, false), TextureData.Factory.loadFromFile(fileHandle2, false), TextureData.Factory.loadFromFile(fileHandle3, false), TextureData.Factory.loadFromFile(fileHandle4, false), TextureData.Factory.loadFromFile(fileHandle5, false), TextureData.Factory.loadFromFile(fileHandle6, false));
    }

    @Override // com.badlogic.gdx.graphics.CubemapData
    public void consumeCubemapData() {
        int i = 0;
        while (true) {
            TextureData[] textureDataArr = this.f4950a;
            if (i < textureDataArr.length) {
                if (textureDataArr[i].getType() == TextureData.TextureDataType.Custom) {
                    this.f4950a[i].consumeCustomData(GL20.GL_TEXTURE_CUBE_MAP_POSITIVE_X + i);
                } else {
                    Pixmap consumePixmap = this.f4950a[i].consumePixmap();
                    boolean disposePixmap = this.f4950a[i].disposePixmap();
                    if (this.f4950a[i].getFormat() != consumePixmap.getFormat()) {
                        Pixmap pixmap = new Pixmap(consumePixmap.getWidth(), consumePixmap.getHeight(), this.f4950a[i].getFormat());
                        pixmap.setBlending(Pixmap.Blending.None);
                        pixmap.drawPixmap(consumePixmap, 0, 0, 0, 0, consumePixmap.getWidth(), consumePixmap.getHeight());
                        if (this.f4950a[i].disposePixmap()) {
                            consumePixmap.dispose();
                        }
                        consumePixmap = pixmap;
                        disposePixmap = true;
                    }
                    Gdx.f3119gl.glPixelStorei(GL20.GL_UNPACK_ALIGNMENT, 1);
                    Gdx.f3119gl.glTexImage2D(i + GL20.GL_TEXTURE_CUBE_MAP_POSITIVE_X, 0, consumePixmap.getGLInternalFormat(), consumePixmap.getWidth(), consumePixmap.getHeight(), 0, consumePixmap.getGLFormat(), consumePixmap.getGLType(), consumePixmap.getPixels());
                    if (disposePixmap) {
                        consumePixmap.dispose();
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.CubemapData
    public int getHeight() {
        int height;
        int height2;
        int height3;
        TextureData textureData = this.f4950a[Cubemap.CubemapSide.PositiveZ.index];
        int i = (textureData == null || (i = textureData.getHeight()) <= 0) ? 0 : 0;
        TextureData textureData2 = this.f4950a[Cubemap.CubemapSide.NegativeZ.index];
        if (textureData2 != null && (height3 = textureData2.getHeight()) > i) {
            i = height3;
        }
        TextureData textureData3 = this.f4950a[Cubemap.CubemapSide.PositiveX.index];
        if (textureData3 != null && (height2 = textureData3.getHeight()) > i) {
            i = height2;
        }
        TextureData textureData4 = this.f4950a[Cubemap.CubemapSide.NegativeX.index];
        if (textureData4 != null && (height = textureData4.getHeight()) > i) {
            return height;
        }
        return i;
    }

    @Override // com.badlogic.gdx.graphics.CubemapData
    public int getWidth() {
        int width;
        int width2;
        int width3;
        TextureData textureData = this.f4950a[Cubemap.CubemapSide.PositiveZ.index];
        int i = (textureData == null || (i = textureData.getWidth()) <= 0) ? 0 : 0;
        TextureData textureData2 = this.f4950a[Cubemap.CubemapSide.NegativeZ.index];
        if (textureData2 != null && (width3 = textureData2.getWidth()) > i) {
            i = width3;
        }
        TextureData textureData3 = this.f4950a[Cubemap.CubemapSide.PositiveY.index];
        if (textureData3 != null && (width2 = textureData3.getWidth()) > i) {
            i = width2;
        }
        TextureData textureData4 = this.f4950a[Cubemap.CubemapSide.NegativeY.index];
        if (textureData4 != null && (width = textureData4.getWidth()) > i) {
            return width;
        }
        return i;
    }

    @Override // com.badlogic.gdx.graphics.CubemapData
    public boolean isManaged() {
        for (TextureData textureData : this.f4950a) {
            if (!textureData.isManaged()) {
                return false;
            }
        }
        return true;
    }

    public void load(Cubemap.CubemapSide cubemapSide, Pixmap pixmap) {
        this.f4950a[cubemapSide.index] = pixmap != null ? new PixmapTextureData(pixmap, null, false, false) : null;
    }

    @Override // com.badlogic.gdx.graphics.CubemapData
    public void prepare() {
        if (isComplete()) {
            int i = 0;
            while (true) {
                TextureData[] textureDataArr = this.f4950a;
                if (i < textureDataArr.length) {
                    if (!textureDataArr[i].isPrepared()) {
                        this.f4950a[i].prepare();
                    }
                    i++;
                } else {
                    return;
                }
            }
        } else {
            throw new GdxRuntimeException("You need to complete your cubemap data before using it");
        }
    }

    public FacedCubemapData(FileHandle fileHandle, FileHandle fileHandle2, FileHandle fileHandle3, FileHandle fileHandle4, FileHandle fileHandle5, FileHandle fileHandle6, boolean z) {
        this(TextureData.Factory.loadFromFile(fileHandle, z), TextureData.Factory.loadFromFile(fileHandle2, z), TextureData.Factory.loadFromFile(fileHandle3, z), TextureData.Factory.loadFromFile(fileHandle4, z), TextureData.Factory.loadFromFile(fileHandle5, z), TextureData.Factory.loadFromFile(fileHandle6, z));
    }

    public FacedCubemapData(Pixmap pixmap, Pixmap pixmap2, Pixmap pixmap3, Pixmap pixmap4, Pixmap pixmap5, Pixmap pixmap6) {
        this(pixmap, pixmap2, pixmap3, pixmap4, pixmap5, pixmap6, false);
    }

    public FacedCubemapData(Pixmap pixmap, Pixmap pixmap2, Pixmap pixmap3, Pixmap pixmap4, Pixmap pixmap5, Pixmap pixmap6, boolean z) {
        this(pixmap == null ? null : new PixmapTextureData(pixmap, null, z, false), pixmap2 == null ? null : new PixmapTextureData(pixmap2, null, z, false), pixmap3 == null ? null : new PixmapTextureData(pixmap3, null, z, false), pixmap4 == null ? null : new PixmapTextureData(pixmap4, null, z, false), pixmap5 == null ? null : new PixmapTextureData(pixmap5, null, z, false), pixmap6 == null ? null : new PixmapTextureData(pixmap6, null, z, false));
    }

    public FacedCubemapData(int i, int i2, int i3, Pixmap.Format format) {
        this(new PixmapTextureData(new Pixmap(i3, i2, format), null, false, true), new PixmapTextureData(new Pixmap(i3, i2, format), null, false, true), new PixmapTextureData(new Pixmap(i, i3, format), null, false, true), new PixmapTextureData(new Pixmap(i, i3, format), null, false, true), new PixmapTextureData(new Pixmap(i, i2, format), null, false, true), new PixmapTextureData(new Pixmap(i, i2, format), null, false, true));
    }

    public FacedCubemapData(TextureData textureData, TextureData textureData2, TextureData textureData3, TextureData textureData4, TextureData textureData5, TextureData textureData6) {
        this.f4950a = r0;
        TextureData[] textureDataArr = {textureData, textureData2, textureData3, textureData4, textureData5, textureData6};
    }
}
