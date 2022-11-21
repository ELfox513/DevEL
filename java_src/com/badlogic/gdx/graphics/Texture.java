package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.glutils.FileTextureData;
import com.badlogic.gdx.graphics.glutils.PixmapTextureData;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class Texture extends GLTexture {

    /* renamed from: t */
    public static AssetManager f3945t;

    /* renamed from: u */
    public static final Map<Application, Array<Texture>> f3946u = new HashMap();

    /* renamed from: s */
    public TextureData f3947s;

    public Texture(String str) {
        this(Gdx.files.internal(str));
    }

    public static void clearAllTextures(Application application) {
        f3946u.remove(application);
    }

    public static int getNumManagedTextures() {
        return f3946u.get(Gdx.app).size;
    }

    public static void setAssetManager(AssetManager assetManager) {
        f3945t = assetManager;
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getDepth() {
        return 0;
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getHeight() {
        return this.f3947s.getHeight();
    }

    public TextureData getTextureData() {
        return this.f3947s;
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getWidth() {
        return this.f3947s.getWidth();
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public boolean isManaged() {
        return this.f3947s.isManaged();
    }

    /* loaded from: classes.dex */
    public enum TextureFilter {
        Nearest(GL20.GL_NEAREST),
        Linear(GL20.GL_LINEAR),
        MipMap(GL20.GL_LINEAR_MIPMAP_LINEAR),
        MipMapNearestNearest(GL20.GL_NEAREST_MIPMAP_NEAREST),
        MipMapLinearNearest(GL20.GL_LINEAR_MIPMAP_NEAREST),
        MipMapNearestLinear(GL20.GL_NEAREST_MIPMAP_LINEAR),
        MipMapLinearLinear(GL20.GL_LINEAR_MIPMAP_LINEAR);
        

        /* renamed from: a */
        public final int f3950a;

        public int getGLEnum() {
            return this.f3950a;
        }

        public boolean isMipMap() {
            int i = this.f3950a;
            return (i == 9728 || i == 9729) ? false : true;
        }

        TextureFilter(int i) {
            this.f3950a = i;
        }
    }

    /* loaded from: classes.dex */
    public enum TextureWrap {
        MirroredRepeat(GL20.GL_MIRRORED_REPEAT),
        ClampToEdge(GL20.GL_CLAMP_TO_EDGE),
        Repeat(GL20.GL_REPEAT);
        

        /* renamed from: a */
        public final int f3952a;

        public int getGLEnum() {
            return this.f3952a;
        }

        TextureWrap(int i) {
            this.f3952a = i;
        }
    }

    public Texture(FileHandle fileHandle) {
        this(fileHandle, (Pixmap.Format) null, false);
    }

    /* renamed from: c */
    public static void m24255c(Application application, Texture texture) {
        Map<Application, Array<Texture>> map = f3946u;
        Array<Texture> array = map.get(application);
        if (array == null) {
            array = new Array<>();
        }
        array.add(texture);
        map.put(application, array);
    }

    public static String getManagedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Managed textures/app: { ");
        for (Application application : f3946u.keySet()) {
            sb.append(f3946u.get(application).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb.toString();
    }

    public static void invalidateAllTextures(Application application) {
        Array<Texture> array = f3946u.get(application);
        if (array == null) {
            return;
        }
        AssetManager assetManager = f3945t;
        if (assetManager == null) {
            for (int i = 0; i < array.size; i++) {
                array.get(i).m24254d();
            }
            return;
        }
        assetManager.finishLoading();
        Array<? extends Texture> array2 = new Array<>(array);
        Array.ArrayIterator<? extends Texture> it = array2.iterator();
        while (it.hasNext()) {
            Texture next = it.next();
            String assetFileName = f3945t.getAssetFileName(next);
            if (assetFileName == null) {
                next.m24254d();
            } else {
                final int referenceCount = f3945t.getReferenceCount(assetFileName);
                f3945t.setReferenceCount(assetFileName, 0);
                next.f3904a = 0;
                TextureLoader.TextureParameter textureParameter = new TextureLoader.TextureParameter();
                textureParameter.textureData = next.getTextureData();
                textureParameter.minFilter = next.getMinFilter();
                textureParameter.magFilter = next.getMagFilter();
                textureParameter.wrapU = next.getUWrap();
                textureParameter.wrapV = next.getVWrap();
                textureParameter.genMipMaps = next.f3947s.useMipMaps();
                textureParameter.texture = next;
                textureParameter.loadedCallback = new AssetLoaderParameters.LoadedCallback() { // from class: com.badlogic.gdx.graphics.Texture.1
                    @Override // com.badlogic.gdx.assets.AssetLoaderParameters.LoadedCallback
                    public void finishedLoading(AssetManager assetManager2, String str, Class cls) {
                        assetManager2.setReferenceCount(str, referenceCount);
                    }
                };
                f3945t.unload(assetFileName);
                next.f3904a = Gdx.f3119gl.glGenTexture();
                f3945t.load(assetFileName, Texture.class, textureParameter);
            }
        }
        array.clear();
        array.addAll(array2);
    }

    @Override // com.badlogic.gdx.graphics.GLTexture, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (this.f3904a == 0) {
            return;
        }
        m24260a();
        if (this.f3947s.isManaged()) {
            Map<Application, Array<Texture>> map = f3946u;
            if (map.get(Gdx.app) != null) {
                map.get(Gdx.app).removeValue(this, true);
            }
        }
    }

    public void draw(Pixmap pixmap, int i, int i2) {
        if (!this.f3947s.isManaged()) {
            bind();
            Gdx.f3119gl.glTexSubImage2D(this.glTarget, 0, i, i2, pixmap.getWidth(), pixmap.getHeight(), pixmap.getGLFormat(), pixmap.getGLType(), pixmap.getPixels());
            return;
        }
        throw new GdxRuntimeException("can't draw to a managed texture");
    }

    public void load(TextureData textureData) {
        if (this.f3947s != null && textureData.isManaged() != this.f3947s.isManaged()) {
            throw new GdxRuntimeException("New data must have the same managed status as the old data");
        }
        this.f3947s = textureData;
        if (!textureData.isPrepared()) {
            textureData.prepare();
        }
        bind();
        GLTexture.m24259b(GL20.GL_TEXTURE_2D, textureData);
        unsafeSetFilter(this.f3905b, this.f3906d, true);
        unsafeSetWrap(this.f3907k, this.f3908p, true);
        unsafeSetAnisotropicFilter(this.f3909q, true);
        Gdx.f3119gl.glBindTexture(this.glTarget, 0);
    }

    public String toString() {
        TextureData textureData = this.f3947s;
        if (textureData instanceof FileTextureData) {
            return textureData.toString();
        }
        return super.toString();
    }

    public Texture(FileHandle fileHandle, boolean z) {
        this(fileHandle, (Pixmap.Format) null, z);
    }

    /* renamed from: d */
    public void m24254d() {
        if (isManaged()) {
            this.f3904a = Gdx.f3119gl.glGenTexture();
            load(this.f3947s);
            return;
        }
        throw new GdxRuntimeException("Tried to reload unmanaged Texture");
    }

    public Texture(FileHandle fileHandle, Pixmap.Format format, boolean z) {
        this(TextureData.Factory.loadFromFile(fileHandle, format, z));
    }

    public Texture(Pixmap pixmap) {
        this(new PixmapTextureData(pixmap, null, false, false));
    }

    public Texture(Pixmap pixmap, boolean z) {
        this(new PixmapTextureData(pixmap, null, z, false));
    }

    public Texture(Pixmap pixmap, Pixmap.Format format, boolean z) {
        this(new PixmapTextureData(pixmap, format, z, false));
    }

    public Texture(int i, int i2, Pixmap.Format format) {
        this(new PixmapTextureData(new Pixmap(i, i2, format), null, false, true));
    }

    public Texture(TextureData textureData) {
        this((int) GL20.GL_TEXTURE_2D, Gdx.f3119gl.glGenTexture(), textureData);
    }

    public Texture(int i, int i2, TextureData textureData) {
        super(i, i2);
        load(textureData);
        if (textureData.isManaged()) {
            m24255c(Gdx.app, this);
        }
    }
}
