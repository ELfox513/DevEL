package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.CubemapData;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.glutils.ETC1;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.zip.GZIPInputStream;
/* loaded from: classes.dex */
public class KTXTextureData implements TextureData, CubemapData {

    /* renamed from: a */
    public FileHandle f5070a;

    /* renamed from: b */
    public int f5071b;

    /* renamed from: c */
    public int f5072c;

    /* renamed from: d */
    public int f5073d;

    /* renamed from: e */
    public int f5074e;

    /* renamed from: f */
    public int f5075f;

    /* renamed from: g */
    public int f5076g = -1;

    /* renamed from: h */
    public int f5077h = -1;

    /* renamed from: i */
    public int f5078i = -1;

    /* renamed from: j */
    public int f5079j;

    /* renamed from: k */
    public int f5080k;

    /* renamed from: l */
    public int f5081l;

    /* renamed from: m */
    public int f5082m;

    /* renamed from: n */
    public ByteBuffer f5083n;

    /* renamed from: o */
    public boolean f5084o;

    @Override // com.badlogic.gdx.graphics.CubemapData
    public void consumeCubemapData() {
        consumeCustomData(GL20.GL_TEXTURE_CUBE_MAP);
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
        throw new GdxRuntimeException("This TextureData implementation directly handles texture formats.");
    }

    public int getGlInternalFormat() {
        return this.f5074e;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getHeight() {
        return this.f5077h;
    }

    public int getNumberOfFaces() {
        return this.f5080k;
    }

    public int getNumberOfMipMapLevels() {
        return this.f5081l;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public TextureData.TextureDataType getType() {
        return TextureData.TextureDataType.Custom;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public int getWidth() {
        return this.f5076g;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isManaged() {
        return true;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean isPrepared() {
        return this.f5083n != null;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public boolean useMipMaps() {
        return this.f5084o;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void consumeCustomData(int i) {
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z2;
        if (this.f5083n != null) {
            IntBuffer newIntBuffer = BufferUtils.newIntBuffer(16);
            int i6 = this.f5071b;
            int i7 = 1;
            if (i6 != 0 && this.f5073d != 0) {
                z = false;
            } else if (i6 + this.f5073d == 0) {
                z = true;
            } else {
                throw new GdxRuntimeException("either both or none of glType, glFormat must be zero");
            }
            if (this.f5077h > 0) {
                i2 = 2;
                i3 = GL20.GL_TEXTURE_2D;
            } else {
                i2 = 1;
                i3 = 4660;
            }
            if (this.f5078i > 0) {
                i2 = 3;
                i3 = 4660;
            }
            int i8 = this.f5080k;
            if (i8 == 6) {
                if (i2 == 2) {
                    i3 = GL20.GL_TEXTURE_CUBE_MAP;
                } else {
                    throw new GdxRuntimeException("cube map needs 2D faces");
                }
            } else if (i8 != 1) {
                throw new GdxRuntimeException("numberOfFaces must be either 1 or 6");
            }
            if (this.f5079j > 0) {
                if (i3 == 4660 || i3 == 3553) {
                    i2++;
                    i3 = 4660;
                } else {
                    throw new GdxRuntimeException("No API for 3D and cube arrays yet");
                }
            }
            if (i3 != 4660) {
                int i9 = GL20.GL_TEXTURE_CUBE_MAP_POSITIVE_X;
                if (i8 == 6 && i != 34067) {
                    if (34069 <= i && i <= 34074) {
                        i4 = i - GL20.GL_TEXTURE_CUBE_MAP_POSITIVE_X;
                    } else {
                        throw new GdxRuntimeException("You must specify either GL_TEXTURE_CUBE_MAP to bind all 6 faces of the cube or the requested face GL_TEXTURE_CUBE_MAP_POSITIVE_X and followings.");
                    }
                } else {
                    if (i8 != 6 || i != 34067) {
                        if (i != i3 && (34069 > i || i > 34074 || i != 3553)) {
                            throw new GdxRuntimeException("Invalid target requested : 0x" + Integer.toHexString(i) + ", expecting : 0x" + Integer.toHexString(i3));
                        }
                        i9 = i;
                    }
                    i4 = -1;
                }
                Gdx.f3119gl.glGetIntegerv(GL20.GL_UNPACK_ALIGNMENT, newIntBuffer);
                int i10 = newIntBuffer.get(0);
                int i11 = 4;
                if (i10 != 4) {
                    Gdx.f3119gl.glPixelStorei(GL20.GL_UNPACK_ALIGNMENT, 4);
                }
                int i12 = this.f5074e;
                int i13 = this.f5073d;
                int i14 = this.f5082m;
                int i15 = 0;
                while (i15 < this.f5081l) {
                    int max = Math.max(i7, this.f5076g >> i15);
                    int max2 = Math.max(i7, this.f5077h >> i15);
                    Math.max(i7, this.f5078i >> i15);
                    this.f5083n.position(i14);
                    int i16 = this.f5083n.getInt();
                    int i17 = (i16 + 3) & (-4);
                    i14 += i11;
                    int i18 = 0;
                    while (i18 < this.f5080k) {
                        this.f5083n.position(i14);
                        i14 += i17;
                        if (i4 != -1 && i4 != i18) {
                            i5 = i4;
                        } else {
                            ByteBuffer slice = this.f5083n.slice();
                            slice.limit(i17);
                            i5 = i4;
                            if (i2 != 1 && i2 == 2) {
                                int i19 = this.f5079j;
                                if (i19 > 0) {
                                    max2 = i19;
                                }
                                if (z) {
                                    if (i12 == ETC1.ETC1_RGB8_OES) {
                                        z2 = z;
                                        if (!Gdx.graphics.supportsExtension("GL_OES_compressed_ETC1_RGB8_texture")) {
                                            Pixmap decodeImage = ETC1.decodeImage(new ETC1.ETC1Data(max, max2, slice, 0), Pixmap.Format.RGB888);
                                            Gdx.f3119gl.glTexImage2D(i9 + i18, i15, decodeImage.getGLInternalFormat(), decodeImage.getWidth(), decodeImage.getHeight(), 0, decodeImage.getGLFormat(), decodeImage.getGLType(), decodeImage.getPixels());
                                            decodeImage.dispose();
                                        } else {
                                            Gdx.f3119gl.glCompressedTexImage2D(i9 + i18, i15, i12, max, max2, 0, i16, slice);
                                        }
                                    } else {
                                        z2 = z;
                                        Gdx.f3119gl.glCompressedTexImage2D(i9 + i18, i15, i12, max, max2, 0, i16, slice);
                                    }
                                } else {
                                    z2 = z;
                                    Gdx.f3119gl.glTexImage2D(i9 + i18, i15, i12, max, max2, 0, i13, this.f5071b, slice);
                                }
                                i18++;
                                i4 = i5;
                                z = z2;
                            }
                        }
                        z2 = z;
                        i18++;
                        i4 = i5;
                        z = z2;
                    }
                    i15++;
                    i4 = i4;
                    z = z;
                    i7 = 1;
                    i11 = 4;
                }
                if (i10 != 4) {
                    Gdx.f3119gl.glPixelStorei(GL20.GL_UNPACK_ALIGNMENT, i10);
                }
                if (useMipMaps()) {
                    Gdx.f3119gl.glGenerateMipmap(i9);
                }
                disposePreparedData();
                return;
            }
            throw new GdxRuntimeException("Unsupported texture format (only 2D texture are supported in LibGdx for the time being)");
        }
        throw new GdxRuntimeException("Call prepare() before calling consumeCompressedData()");
    }

    public void disposePreparedData() {
        ByteBuffer byteBuffer = this.f5083n;
        if (byteBuffer != null) {
            BufferUtils.disposeUnsafeByteBuffer(byteBuffer);
        }
        this.f5083n = null;
    }

    public ByteBuffer getData(int i, int i2) {
        int i3 = this.f5082m;
        for (int i4 = 0; i4 < this.f5081l; i4++) {
            int i5 = (this.f5083n.getInt(i3) + 3) & (-4);
            i3 += 4;
            if (i4 == i) {
                for (int i6 = 0; i6 < this.f5080k; i6++) {
                    if (i6 == i2) {
                        this.f5083n.position(i3);
                        ByteBuffer slice = this.f5083n.slice();
                        slice.limit(i5);
                        return slice;
                    }
                    i3 += i5;
                }
                continue;
            } else {
                i3 += i5 * this.f5080k;
            }
        }
        return null;
    }

    @Override // com.badlogic.gdx.graphics.TextureData
    public void prepare() {
        DataInputStream dataInputStream;
        if (this.f5083n == null) {
            FileHandle fileHandle = this.f5070a;
            if (fileHandle != null) {
                if (fileHandle.name().endsWith(".zktx")) {
                    byte[] bArr = new byte[GL20.GL_TEXTURE_MAG_FILTER];
                    DataInputStream dataInputStream2 = null;
                    try {
                        try {
                            dataInputStream = new DataInputStream(new BufferedInputStream(new GZIPInputStream(this.f5070a.read())));
                        } catch (Exception e) {
                            e = e;
                        }
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        this.f5083n = BufferUtils.newUnsafeByteBuffer(dataInputStream.readInt());
                        while (true) {
                            int read = dataInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            this.f5083n.put(bArr, 0, read);
                        }
                        this.f5083n.position(0);
                        ByteBuffer byteBuffer = this.f5083n;
                        byteBuffer.limit(byteBuffer.capacity());
                        StreamUtils.closeQuietly(dataInputStream);
                    } catch (Exception e2) {
                        e = e2;
                        dataInputStream2 = dataInputStream;
                        throw new GdxRuntimeException("Couldn't load zktx file '" + this.f5070a + "'", e);
                    } catch (Throwable th2) {
                        th = th2;
                        dataInputStream2 = dataInputStream;
                        StreamUtils.closeQuietly(dataInputStream2);
                        throw th;
                    }
                } else {
                    this.f5083n = ByteBuffer.wrap(this.f5070a.readBytes());
                }
                if (this.f5083n.get() == -85) {
                    if (this.f5083n.get() == 75) {
                        if (this.f5083n.get() == 84) {
                            if (this.f5083n.get() == 88) {
                                if (this.f5083n.get() == 32) {
                                    if (this.f5083n.get() == 49) {
                                        if (this.f5083n.get() == 49) {
                                            if (this.f5083n.get() == -69) {
                                                if (this.f5083n.get() == 13) {
                                                    if (this.f5083n.get() == 10) {
                                                        if (this.f5083n.get() == 26) {
                                                            if (this.f5083n.get() == 10) {
                                                                int i = this.f5083n.getInt();
                                                                if (i != 67305985 && i != 16909060) {
                                                                    throw new GdxRuntimeException("Invalid KTX Header");
                                                                }
                                                                if (i != 67305985) {
                                                                    ByteBuffer byteBuffer2 = this.f5083n;
                                                                    ByteOrder order = byteBuffer2.order();
                                                                    ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                                                                    if (order == byteOrder) {
                                                                        byteOrder = ByteOrder.LITTLE_ENDIAN;
                                                                    }
                                                                    byteBuffer2.order(byteOrder);
                                                                }
                                                                this.f5071b = this.f5083n.getInt();
                                                                this.f5072c = this.f5083n.getInt();
                                                                this.f5073d = this.f5083n.getInt();
                                                                this.f5074e = this.f5083n.getInt();
                                                                this.f5075f = this.f5083n.getInt();
                                                                this.f5076g = this.f5083n.getInt();
                                                                this.f5077h = this.f5083n.getInt();
                                                                this.f5078i = this.f5083n.getInt();
                                                                this.f5079j = this.f5083n.getInt();
                                                                this.f5080k = this.f5083n.getInt();
                                                                int i2 = this.f5083n.getInt();
                                                                this.f5081l = i2;
                                                                if (i2 == 0) {
                                                                    this.f5081l = 1;
                                                                    this.f5084o = true;
                                                                }
                                                                this.f5082m = this.f5083n.position() + this.f5083n.getInt();
                                                                if (!this.f5083n.isDirect()) {
                                                                    int i3 = this.f5082m;
                                                                    for (int i4 = 0; i4 < this.f5081l; i4++) {
                                                                        i3 += (((this.f5083n.getInt(i3) + 3) & (-4)) * this.f5080k) + 4;
                                                                    }
                                                                    this.f5083n.limit(i3);
                                                                    this.f5083n.position(0);
                                                                    ByteBuffer newUnsafeByteBuffer = BufferUtils.newUnsafeByteBuffer(i3);
                                                                    newUnsafeByteBuffer.order(this.f5083n.order());
                                                                    newUnsafeByteBuffer.put(this.f5083n);
                                                                    this.f5083n = newUnsafeByteBuffer;
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            throw new GdxRuntimeException("Invalid KTX Header");
                                                        }
                                                        throw new GdxRuntimeException("Invalid KTX Header");
                                                    }
                                                    throw new GdxRuntimeException("Invalid KTX Header");
                                                }
                                                throw new GdxRuntimeException("Invalid KTX Header");
                                            }
                                            throw new GdxRuntimeException("Invalid KTX Header");
                                        }
                                        throw new GdxRuntimeException("Invalid KTX Header");
                                    }
                                    throw new GdxRuntimeException("Invalid KTX Header");
                                }
                                throw new GdxRuntimeException("Invalid KTX Header");
                            }
                            throw new GdxRuntimeException("Invalid KTX Header");
                        }
                        throw new GdxRuntimeException("Invalid KTX Header");
                    }
                    throw new GdxRuntimeException("Invalid KTX Header");
                }
                throw new GdxRuntimeException("Invalid KTX Header");
            }
            throw new GdxRuntimeException("Need a file to load from");
        }
        throw new GdxRuntimeException("Already prepared");
    }

    public KTXTextureData(FileHandle fileHandle, boolean z) {
        this.f5070a = fileHandle;
        this.f5084o = z;
    }
}
