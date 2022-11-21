package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.CubemapLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.glutils.FacedCubemapData;
import com.badlogic.gdx.graphics.glutils.PixmapTextureData;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class Cubemap extends GLTexture {

    /* renamed from: t */
    public static AssetManager f3894t;

    /* renamed from: u */
    public static final Map<Application, Array<Cubemap>> f3895u = new HashMap();

    /* renamed from: s */
    public CubemapData f3896s;

    public Cubemap(CubemapData cubemapData) {
        super(GL20.GL_TEXTURE_CUBE_MAP);
        this.f3896s = cubemapData;
        load(cubemapData);
        if (cubemapData.isManaged()) {
            m24262c(Gdx.app, this);
        }
    }

    public static void clearAllCubemaps(Application application) {
        f3895u.remove(application);
    }

    public static int getNumManagedCubemaps() {
        return f3895u.get(Gdx.app).size;
    }

    public static void setAssetManager(AssetManager assetManager) {
        f3894t = assetManager;
    }

    public CubemapData getCubemapData() {
        return this.f3896s;
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getDepth() {
        return 0;
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getHeight() {
        return this.f3896s.getHeight();
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public int getWidth() {
        return this.f3896s.getWidth();
    }

    @Override // com.badlogic.gdx.graphics.GLTexture
    public boolean isManaged() {
        return this.f3896s.isManaged();
    }

    /* loaded from: classes.dex */
    public enum CubemapSide {
        PositiveX(0, GL20.GL_TEXTURE_CUBE_MAP_POSITIVE_X, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 0.0f),
        NegativeX(1, GL20.GL_TEXTURE_CUBE_MAP_NEGATIVE_X, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, 0.0f),
        PositiveY(2, GL20.GL_TEXTURE_CUBE_MAP_POSITIVE_Y, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f),
        NegativeY(3, GL20.GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, 0.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f),
        PositiveZ(4, GL20.GL_TEXTURE_CUBE_MAP_POSITIVE_Z, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f),
        NegativeZ(5, GL20.GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, -1.0f);
        
        public final Vector3 direction;
        public final int glEnum;
        public final int index;

        /* renamed from: up */
        public final Vector3 f3899up;

        public Vector3 getDirection(Vector3 vector3) {
            return vector3.set(this.direction);
        }

        public int getGLEnum() {
            return this.glEnum;
        }

        public Vector3 getUp(Vector3 vector3) {
            return vector3.set(this.f3899up);
        }

        CubemapSide(int i, int i2, float f, float f2, float f3, float f4, float f5, float f6) {
            this.index = i;
            this.glEnum = i2;
            this.f3899up = new Vector3(f, f2, f3);
            this.direction = new Vector3(f4, f5, f6);
        }
    }

    /* renamed from: c */
    public static void m24262c(Application application, Cubemap cubemap) {
        Map<Application, Array<Cubemap>> map = f3895u;
        Array<Cubemap> array = map.get(application);
        if (array == null) {
            array = new Array<>();
        }
        array.add(cubemap);
        map.put(application, array);
    }

    public static String getManagedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Managed cubemap/app: { ");
        for (Application application : f3895u.keySet()) {
            sb.append(f3895u.get(application).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb.toString();
    }

    public static void invalidateAllCubemaps(Application application) {
        Array<Cubemap> array = f3895u.get(application);
        if (array == null) {
            return;
        }
        AssetManager assetManager = f3894t;
        if (assetManager == null) {
            for (int i = 0; i < array.size; i++) {
                array.get(i).m24261d();
            }
            return;
        }
        assetManager.finishLoading();
        Array<? extends Cubemap> array2 = new Array<>(array);
        Array.ArrayIterator<? extends Cubemap> it = array2.iterator();
        while (it.hasNext()) {
            Cubemap next = it.next();
            String assetFileName = f3894t.getAssetFileName(next);
            if (assetFileName == null) {
                next.m24261d();
            } else {
                final int referenceCount = f3894t.getReferenceCount(assetFileName);
                f3894t.setReferenceCount(assetFileName, 0);
                next.f3904a = 0;
                CubemapLoader.CubemapParameter cubemapParameter = new CubemapLoader.CubemapParameter();
                cubemapParameter.cubemapData = next.getCubemapData();
                cubemapParameter.minFilter = next.getMinFilter();
                cubemapParameter.magFilter = next.getMagFilter();
                cubemapParameter.wrapU = next.getUWrap();
                cubemapParameter.wrapV = next.getVWrap();
                cubemapParameter.cubemap = next;
                cubemapParameter.loadedCallback = new AssetLoaderParameters.LoadedCallback() { // from class: com.badlogic.gdx.graphics.Cubemap.1
                    @Override // com.badlogic.gdx.assets.AssetLoaderParameters.LoadedCallback
                    public void finishedLoading(AssetManager assetManager2, String str, Class cls) {
                        assetManager2.setReferenceCount(str, referenceCount);
                    }
                };
                f3894t.unload(assetFileName);
                next.f3904a = Gdx.f3119gl.glGenTexture();
                f3894t.load(assetFileName, Cubemap.class, cubemapParameter);
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
        if (this.f3896s.isManaged()) {
            Map<Application, Array<Cubemap>> map = f3895u;
            if (map.get(Gdx.app) != null) {
                map.get(Gdx.app).removeValue(this, true);
            }
        }
    }

    /* renamed from: d */
    public void m24261d() {
        if (isManaged()) {
            this.f3904a = Gdx.f3119gl.glGenTexture();
            load(this.f3896s);
            return;
        }
        throw new GdxRuntimeException("Tried to reload an unmanaged Cubemap");
    }

    public void load(CubemapData cubemapData) {
        if (!cubemapData.isPrepared()) {
            cubemapData.prepare();
        }
        bind();
        unsafeSetFilter(this.f3905b, this.f3906d, true);
        unsafeSetWrap(this.f3907k, this.f3908p, true);
        unsafeSetAnisotropicFilter(this.f3909q, true);
        cubemapData.consumeCubemapData();
        Gdx.f3119gl.glBindTexture(this.glTarget, 0);
    }

    public Cubemap(FileHandle fileHandle, FileHandle fileHandle2, FileHandle fileHandle3, FileHandle fileHandle4, FileHandle fileHandle5, FileHandle fileHandle6) {
        this(fileHandle, fileHandle2, fileHandle3, fileHandle4, fileHandle5, fileHandle6, false);
    }

    public Cubemap(FileHandle fileHandle, FileHandle fileHandle2, FileHandle fileHandle3, FileHandle fileHandle4, FileHandle fileHandle5, FileHandle fileHandle6, boolean z) {
        this(TextureData.Factory.loadFromFile(fileHandle, z), TextureData.Factory.loadFromFile(fileHandle2, z), TextureData.Factory.loadFromFile(fileHandle3, z), TextureData.Factory.loadFromFile(fileHandle4, z), TextureData.Factory.loadFromFile(fileHandle5, z), TextureData.Factory.loadFromFile(fileHandle6, z));
    }

    public Cubemap(Pixmap pixmap, Pixmap pixmap2, Pixmap pixmap3, Pixmap pixmap4, Pixmap pixmap5, Pixmap pixmap6) {
        this(pixmap, pixmap2, pixmap3, pixmap4, pixmap5, pixmap6, false);
    }

    public Cubemap(Pixmap pixmap, Pixmap pixmap2, Pixmap pixmap3, Pixmap pixmap4, Pixmap pixmap5, Pixmap pixmap6, boolean z) {
        this(pixmap == null ? null : new PixmapTextureData(pixmap, null, z, false), pixmap2 == null ? null : new PixmapTextureData(pixmap2, null, z, false), pixmap3 == null ? null : new PixmapTextureData(pixmap3, null, z, false), pixmap4 == null ? null : new PixmapTextureData(pixmap4, null, z, false), pixmap5 == null ? null : new PixmapTextureData(pixmap5, null, z, false), pixmap6 == null ? null : new PixmapTextureData(pixmap6, null, z, false));
    }

    public Cubemap(int i, int i2, int i3, Pixmap.Format format) {
        this(new PixmapTextureData(new Pixmap(i3, i2, format), null, false, true), new PixmapTextureData(new Pixmap(i3, i2, format), null, false, true), new PixmapTextureData(new Pixmap(i, i3, format), null, false, true), new PixmapTextureData(new Pixmap(i, i3, format), null, false, true), new PixmapTextureData(new Pixmap(i, i2, format), null, false, true), new PixmapTextureData(new Pixmap(i, i2, format), null, false, true));
    }

    public Cubemap(TextureData textureData, TextureData textureData2, TextureData textureData3, TextureData textureData4, TextureData textureData5, TextureData textureData6) {
        this(new FacedCubemapData(textureData, textureData2, textureData3, textureData4, textureData5, textureData6));
    }
}
