package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.glutils.ETC1;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class ETC1TextureData implements TextureData {

    /* renamed from: a */
    public FileHandle f4944a;

    /* renamed from: b */
    public ETC1.ETC1Data f4945b;

    /* renamed from: c */
    public boolean f4946c;

    /* renamed from: d */
    public int f4947d;

    /* renamed from: e */
    public int f4948e;

    /* renamed from: f */
    public boolean f4949f;

    public ETC1TextureData(FileHandle fileHandle) {
        this(fileHandle, false);
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
        return Pixmap.Format.RGB565;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getHeight() {
        return this.f4948e;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public TextureData.TextureDataType getType() {
        return TextureData.TextureDataType.Custom;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getWidth() {
        return this.f4947d;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isManaged() {
        return true;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isPrepared() {
        return this.f4949f;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean useMipMaps() {
        return this.f4946c;
    }

    public ETC1TextureData(FileHandle fileHandle, boolean z) {
        this.f4947d = 0;
        this.f4948e = 0;
        this.f4949f = false;
        this.f4944a = fileHandle;
        this.f4946c = z;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void consumeCustomData(int i) {
        if (this.f4949f) {
            if (!Gdx.graphics.supportsExtension("GL_OES_compressed_ETC1_RGB8_texture")) {
                Pixmap decodeImage = ETC1.decodeImage(this.f4945b, Pixmap.Format.RGB565);
                Gdx.f3119gl.glTexImage2D(i, 0, decodeImage.getGLInternalFormat(), decodeImage.getWidth(), decodeImage.getHeight(), 0, decodeImage.getGLFormat(), decodeImage.getGLType(), decodeImage.getPixels());
                if (this.f4946c) {
                    MipMapGenerator.generateMipMap(i, decodeImage, decodeImage.getWidth(), decodeImage.getHeight());
                }
                decodeImage.dispose();
                this.f4946c = false;
            } else {
                GL20 gl20 = Gdx.f3119gl;
                int i2 = ETC1.ETC1_RGB8_OES;
                int i3 = this.f4947d;
                int i4 = this.f4948e;
                int capacity = this.f4945b.compressedData.capacity();
                ETC1.ETC1Data eTC1Data = this.f4945b;
                gl20.glCompressedTexImage2D(i, 0, i2, i3, i4, 0, capacity - eTC1Data.dataOffset, eTC1Data.compressedData);
                if (useMipMaps()) {
                    Gdx.gl20.glGenerateMipmap(GL20.GL_TEXTURE_2D);
                }
            }
            this.f4945b.dispose();
            this.f4945b = null;
            this.f4949f = false;
            return;
        }
        throw new GdxRuntimeException("Call prepare() before calling consumeCompressedData()");
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void prepare() {
        if (!this.f4949f) {
            FileHandle fileHandle = this.f4944a;
            if (fileHandle == null && this.f4945b == null) {
                throw new GdxRuntimeException("Can only load once from ETC1Data");
            }
            if (fileHandle != null) {
                this.f4945b = new ETC1.ETC1Data(fileHandle);
            }
            ETC1.ETC1Data eTC1Data = this.f4945b;
            this.f4947d = eTC1Data.width;
            this.f4948e = eTC1Data.height;
            this.f4949f = true;
            return;
        }
        throw new GdxRuntimeException("Already prepared");
    }

    public ETC1TextureData(ETC1.ETC1Data eTC1Data, boolean z) {
        this.f4947d = 0;
        this.f4948e = 0;
        this.f4949f = false;
        this.f4945b = eTC1Data;
        this.f4946c = z;
    }
}
