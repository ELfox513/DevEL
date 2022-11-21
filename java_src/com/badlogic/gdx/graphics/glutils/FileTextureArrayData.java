package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureArrayData;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class FileTextureArrayData implements TextureArrayData {

    /* renamed from: a */
    public TextureData[] f4951a;

    /* renamed from: b */
    public boolean f4952b;

    /* renamed from: c */
    public Pixmap.Format f4953c;

    /* renamed from: d */
    public int f4954d;

    /* renamed from: e */
    public boolean f4955e;

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public int getDepth() {
        return this.f4954d;
    }

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public int getGLType() {
        return Pixmap.Format.toGlType(this.f4953c);
    }

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public int getHeight() {
        return this.f4951a[0].getHeight();
    }

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public int getInternalFormat() {
        return Pixmap.Format.toGlFormat(this.f4953c);
    }

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public int getWidth() {
        return this.f4951a[0].getWidth();
    }

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public boolean isPrepared() {
        return this.f4952b;
    }

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public void consumeTextureArrayData() {
        Pixmap pixmap;
        boolean z;
        int i = 0;
        boolean z2 = false;
        while (true) {
            TextureData[] textureDataArr = this.f4951a;
            if (i >= textureDataArr.length) {
                break;
            }
            if (textureDataArr[i].getType() == TextureData.TextureDataType.Custom) {
                this.f4951a[i].consumeCustomData(GL30.GL_TEXTURE_2D_ARRAY);
                z2 = true;
            } else {
                TextureData textureData = this.f4951a[i];
                Pixmap consumePixmap = textureData.consumePixmap();
                boolean disposePixmap = textureData.disposePixmap();
                if (textureData.getFormat() != consumePixmap.getFormat()) {
                    Pixmap pixmap2 = new Pixmap(consumePixmap.getWidth(), consumePixmap.getHeight(), textureData.getFormat());
                    pixmap2.setBlending(Pixmap.Blending.None);
                    pixmap2.drawPixmap(consumePixmap, 0, 0, 0, 0, consumePixmap.getWidth(), consumePixmap.getHeight());
                    if (textureData.disposePixmap()) {
                        consumePixmap.dispose();
                    }
                    pixmap = pixmap2;
                    z = true;
                } else {
                    pixmap = consumePixmap;
                    z = disposePixmap;
                }
                Gdx.gl30.glTexSubImage3D(GL30.GL_TEXTURE_2D_ARRAY, 0, 0, 0, i, pixmap.getWidth(), pixmap.getHeight(), 1, pixmap.getGLInternalFormat(), pixmap.getGLType(), pixmap.getPixels());
                if (z) {
                    pixmap.dispose();
                }
            }
            i++;
        }
        if (this.f4955e && !z2) {
            Gdx.gl20.glGenerateMipmap(GL30.GL_TEXTURE_2D_ARRAY);
        }
    }

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public boolean isManaged() {
        for (TextureData textureData : this.f4951a) {
            if (!textureData.isManaged()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.badlogic.gdx.graphics.TextureArrayData
    public void prepare() {
        TextureData[] textureDataArr;
        int i = -1;
        int i2 = -1;
        for (TextureData textureData : this.f4951a) {
            textureData.prepare();
            if (i == -1) {
                i = textureData.getWidth();
                i2 = textureData.getHeight();
            } else if (i != textureData.getWidth() || i2 != textureData.getHeight()) {
                throw new GdxRuntimeException("Error whilst preparing TextureArray: TextureArray Textures must have equal dimensions.");
            }
        }
        this.f4952b = true;
    }

    public FileTextureArrayData(Pixmap.Format format, boolean z, FileHandle[] fileHandleArr) {
        this.f4953c = format;
        this.f4955e = z;
        this.f4954d = fileHandleArr.length;
        this.f4951a = new TextureData[fileHandleArr.length];
        for (int i = 0; i < fileHandleArr.length; i++) {
            this.f4951a[i] = TextureData.Factory.loadFromFile(fileHandleArr[i], format, z);
        }
    }
}
