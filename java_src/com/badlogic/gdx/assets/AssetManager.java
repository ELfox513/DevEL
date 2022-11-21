package com.badlogic.gdx.assets;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.loaders.AssetLoader;
import com.badlogic.gdx.assets.loaders.BitmapFontLoader;
import com.badlogic.gdx.assets.loaders.CubemapLoader;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.I18NBundleLoader;
import com.badlogic.gdx.assets.loaders.MusicLoader;
import com.badlogic.gdx.assets.loaders.ParticleEffectLoader;
import com.badlogic.gdx.assets.loaders.PixmapLoader;
import com.badlogic.gdx.assets.loaders.ShaderProgramLoader;
import com.badlogic.gdx.assets.loaders.SkinLoader;
import com.badlogic.gdx.assets.loaders.SoundLoader;
import com.badlogic.gdx.assets.loaders.TextureAtlasLoader;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.assets.loaders.resolvers.InternalFileHandleResolver;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.graphics.Cubemap;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.PolygonRegion;
import com.badlogic.gdx.graphics.g2d.PolygonRegionLoader;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.loader.G3dModelLoader;
import com.badlogic.gdx.graphics.g3d.loader.ObjLoader;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.scenes.scene2d.p033ui.Skin;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.I18NBundle;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.Logger;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.ObjectIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.TimeUtils;
import com.badlogic.gdx.utils.UBJsonReader;
import com.badlogic.gdx.utils.async.AsyncExecutor;
import com.badlogic.gdx.utils.async.ThreadUtils;
import com.badlogic.gdx.utils.reflect.ClassReflection;
/* loaded from: classes.dex */
public class AssetManager implements Disposable {

    /* renamed from: a */
    public final ObjectMap<Class, ObjectMap<String, RefCountedContainer>> f3531a;

    /* renamed from: b */
    public final ObjectMap<String, Class> f3532b;

    /* renamed from: d */
    public final ObjectMap<String, Array<String>> f3533d;

    /* renamed from: k */
    public final ObjectSet<String> f3534k;

    /* renamed from: p */
    public final ObjectMap<Class, ObjectMap<String, AssetLoader>> f3535p;

    /* renamed from: q */
    public final Array<AssetDescriptor> f3536q;

    /* renamed from: r */
    public final AsyncExecutor f3537r;

    /* renamed from: s */
    public final Array<AssetLoadingTask> f3538s;

    /* renamed from: t */
    public AssetErrorListener f3539t;

    /* renamed from: u */
    public int f3540u;

    /* renamed from: v */
    public int f3541v;

    /* renamed from: w */
    public int f3542w;

    /* renamed from: x */
    public final FileHandleResolver f3543x;

    /* renamed from: y */
    public Logger f3544y;

    /* loaded from: classes.dex */
    public static class RefCountedContainer {

        /* renamed from: a */
        public Object f3545a;

        /* renamed from: b */
        public int f3546b = 1;
    }

    public AssetManager() {
        this(new InternalFileHandleResolver());
    }

    public void clear() {
        synchronized (this) {
            this.f3536q.clear();
        }
        finishLoading();
        synchronized (this) {
            ObjectIntMap objectIntMap = new ObjectIntMap();
            while (this.f3532b.size > 0) {
                objectIntMap.clear(51);
                Array<String> array = this.f3532b.keys().toArray();
                Array.ArrayIterator<String> it = array.iterator();
                while (it.hasNext()) {
                    Array<String> array2 = this.f3533d.get(it.next());
                    if (array2 != null) {
                        Array.ArrayIterator<String> it2 = array2.iterator();
                        while (it2.hasNext()) {
                            objectIntMap.getAndIncrement(it2.next(), 0, 1);
                        }
                    }
                }
                Array.ArrayIterator<String> it3 = array.iterator();
                while (it3.hasNext()) {
                    String next = it3.next();
                    if (objectIntMap.get(next, 0) == 0) {
                        unload(next);
                    }
                }
            }
            this.f3531a.clear(51);
            this.f3532b.clear(51);
            this.f3533d.clear(51);
            this.f3540u = 0;
            this.f3541v = 0;
            this.f3542w = 0;
            this.f3536q.clear();
            this.f3538s.clear();
        }
    }

    public synchronized boolean contains(String str) {
        Array<AssetLoadingTask> array = this.f3538s;
        if (array.size > 0 && array.first().f3520b.fileName.equals(str)) {
            return true;
        }
        int i = 0;
        while (true) {
            Array<AssetDescriptor> array2 = this.f3536q;
            if (i < array2.size) {
                if (array2.get(i).fileName.equals(str)) {
                    return true;
                }
                i++;
            } else {
                return isLoaded(str);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0020 A[Catch: all -> 0x0035, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x0012, B:9:0x001a, B:11:0x0020, B:13:0x002a), top: B:25:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized <T> boolean containsAsset(T r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.badlogic.gdx.utils.ObjectMap<java.lang.Class, com.badlogic.gdx.utils.ObjectMap<java.lang.String, com.badlogic.gdx.assets.AssetManager$RefCountedContainer>> r0 = r3.f3531a     // Catch: java.lang.Throwable -> L35
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L35
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L35
            com.badlogic.gdx.utils.ObjectMap r0 = (com.badlogic.gdx.utils.ObjectMap) r0     // Catch: java.lang.Throwable -> L35
            r1 = 0
            if (r0 != 0) goto L12
            monitor-exit(r3)
            return r1
        L12:
            com.badlogic.gdx.utils.ObjectMap$Values r0 = r0.values()     // Catch: java.lang.Throwable -> L35
            com.badlogic.gdx.utils.ObjectMap$Values r0 = r0.iterator()     // Catch: java.lang.Throwable -> L35
        L1a:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r2 == 0) goto L33
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Throwable -> L35
            com.badlogic.gdx.assets.AssetManager$RefCountedContainer r2 = (com.badlogic.gdx.assets.AssetManager.RefCountedContainer) r2     // Catch: java.lang.Throwable -> L35
            java.lang.Object r2 = r2.f3545a     // Catch: java.lang.Throwable -> L35
            if (r2 == r4) goto L30
            boolean r2 = r4.equals(r2)     // Catch: java.lang.Throwable -> L35
            if (r2 == 0) goto L1a
        L30:
            r4 = 1
            monitor-exit(r3)
            return r4
        L33:
            monitor-exit(r3)
            return r1
        L35:
            r4 = move-exception
            monitor-exit(r3)
            goto L39
        L38:
            throw r4
        L39:
            goto L38
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.assets.AssetManager.containsAsset(java.lang.Object):boolean");
    }

    /* renamed from: e */
    public synchronized void m24356e(String str, Array<AssetDescriptor> array) {
        ObjectSet<String> objectSet = this.f3534k;
        Array.ArrayIterator<AssetDescriptor> it = array.iterator();
        while (it.hasNext()) {
            AssetDescriptor next = it.next();
            if (!objectSet.contains(next.fileName)) {
                objectSet.add(next.fileName);
                m24355f(str, next);
            }
        }
        objectSet.clear(32);
    }

    /* renamed from: f */
    public final synchronized void m24355f(String str, AssetDescriptor assetDescriptor) {
        Array<String> array = this.f3533d.get(str);
        if (array == null) {
            array = new Array<>();
            this.f3533d.put(str, array);
        }
        array.add(assetDescriptor.fileName);
        if (isLoaded(assetDescriptor.fileName)) {
            Logger logger = this.f3544y;
            logger.debug("Dependency already loaded: " + assetDescriptor);
            RefCountedContainer refCountedContainer = this.f3531a.get(this.f3532b.get(assetDescriptor.fileName)).get(assetDescriptor.fileName);
            refCountedContainer.f3546b = refCountedContainer.f3546b + 1;
            m24357d(assetDescriptor.fileName);
        } else {
            Logger logger2 = this.f3544y;
            logger2.info("Loading dependency: " + assetDescriptor);
            m24359b(assetDescriptor);
        }
    }

    public <T> T finishLoadingAsset(AssetDescriptor assetDescriptor) {
        return (T) finishLoadingAsset(assetDescriptor.fileName);
    }

    public synchronized <T> T get(String str) {
        return (T) get(str, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized <T> Array<T> getAll(Class<T> cls, Array<T> array) {
        ObjectMap<String, RefCountedContainer> objectMap = this.f3531a.get(cls);
        if (objectMap != null) {
            ObjectMap.Values<RefCountedContainer> it = objectMap.values().iterator();
            while (it.hasNext()) {
                array.add(it.next().f3545a);
            }
        }
        return array;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0029 A[Catch: all -> 0x0046, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x000b, B:6:0x0011, B:7:0x0023, B:9:0x0029, B:11:0x0037, B:13:0x003d), top: B:24:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized <T> java.lang.String getAssetFileName(T r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            com.badlogic.gdx.utils.ObjectMap<java.lang.Class, com.badlogic.gdx.utils.ObjectMap<java.lang.String, com.badlogic.gdx.assets.AssetManager$RefCountedContainer>> r0 = r4.f3531a     // Catch: java.lang.Throwable -> L46
            com.badlogic.gdx.utils.ObjectMap$Keys r0 = r0.keys()     // Catch: java.lang.Throwable -> L46
            com.badlogic.gdx.utils.ObjectMap$Keys r0 = r0.iterator()     // Catch: java.lang.Throwable -> L46
        Lb:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L46
            if (r1 == 0) goto L43
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L46
            java.lang.Class r1 = (java.lang.Class) r1     // Catch: java.lang.Throwable -> L46
            com.badlogic.gdx.utils.ObjectMap<java.lang.Class, com.badlogic.gdx.utils.ObjectMap<java.lang.String, com.badlogic.gdx.assets.AssetManager$RefCountedContainer>> r2 = r4.f3531a     // Catch: java.lang.Throwable -> L46
            java.lang.Object r1 = r2.get(r1)     // Catch: java.lang.Throwable -> L46
            com.badlogic.gdx.utils.ObjectMap r1 = (com.badlogic.gdx.utils.ObjectMap) r1     // Catch: java.lang.Throwable -> L46
            com.badlogic.gdx.utils.ObjectMap$Entries r1 = r1.iterator()     // Catch: java.lang.Throwable -> L46
        L23:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L46
            if (r2 == 0) goto Lb
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L46
            com.badlogic.gdx.utils.ObjectMap$Entry r2 = (com.badlogic.gdx.utils.ObjectMap.Entry) r2     // Catch: java.lang.Throwable -> L46
            V r3 = r2.value     // Catch: java.lang.Throwable -> L46
            com.badlogic.gdx.assets.AssetManager$RefCountedContainer r3 = (com.badlogic.gdx.assets.AssetManager.RefCountedContainer) r3     // Catch: java.lang.Throwable -> L46
            java.lang.Object r3 = r3.f3545a     // Catch: java.lang.Throwable -> L46
            if (r3 == r5) goto L3d
            boolean r3 = r5.equals(r3)     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L23
        L3d:
            K r5 = r2.key     // Catch: java.lang.Throwable -> L46
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L46
            monitor-exit(r4)
            return r5
        L43:
            r5 = 0
            monitor-exit(r4)
            return r5
        L46:
            r5 = move-exception
            monitor-exit(r4)
            goto L4a
        L49:
            throw r5
        L4a:
            goto L49
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.assets.AssetManager.getAssetFileName(java.lang.Object):java.lang.String");
    }

    public synchronized Array<String> getAssetNames() {
        return this.f3532b.keys().toArray();
    }

    public synchronized Class getAssetType(String str) {
        return this.f3532b.get(str);
    }

    public synchronized Array<String> getDependencies(String str) {
        return this.f3533d.get(str);
    }

    public synchronized String getDiagnostics() {
        StringBuilder sb;
        sb = new StringBuilder(256);
        ObjectMap.Entries<String, Class> it = this.f3532b.iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            String str = (String) next.key;
            Class cls = (Class) next.value;
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(str);
            sb.append(", ");
            sb.append(ClassReflection.getSimpleName(cls));
            sb.append(", refs: ");
            sb.append(this.f3531a.get(cls).get(str).f3546b);
            Array<String> array = this.f3533d.get(str);
            if (array != null) {
                sb.append(", deps: [");
                Array.ArrayIterator<String> it2 = array.iterator();
                while (it2.hasNext()) {
                    sb.append(it2.next());
                    sb.append(',');
                }
                sb.append(']');
            }
        }
        return sb.toString();
    }

    public FileHandleResolver getFileHandleResolver() {
        return this.f3543x;
    }

    public synchronized int getLoadedAssets() {
        return this.f3532b.size;
    }

    public <T> AssetLoader getLoader(Class<T> cls) {
        return getLoader(cls, null);
    }

    public Logger getLogger() {
        return this.f3544y;
    }

    public synchronized float getProgress() {
        int i = this.f3541v;
        if (i == 0) {
            return 1.0f;
        }
        float f = this.f3540u;
        int i2 = this.f3542w;
        if (i2 > 0) {
            f += (i2 - this.f3538s.size) / i2;
        }
        return Math.min(1.0f, f / i);
    }

    public synchronized int getQueuedAssets() {
        return this.f3536q.size + this.f3538s.size;
    }

    public synchronized int getReferenceCount(String str) {
        Class cls;
        cls = this.f3532b.get(str);
        if (cls != null) {
        } else {
            throw new GdxRuntimeException("Asset not loaded: " + str);
        }
        return this.f3531a.get(cls).get(str).f3546b;
    }

    /* renamed from: h */
    public void m24353h(AssetDescriptor assetDescriptor, RuntimeException runtimeException) {
        throw runtimeException;
    }

    public synchronized boolean isFinished() {
        boolean z;
        if (this.f3536q.size == 0) {
            z = this.f3538s.size == 0;
        }
        return z;
    }

    public synchronized boolean isLoaded(AssetDescriptor assetDescriptor) {
        return isLoaded(assetDescriptor.fileName);
    }

    public synchronized <T> void load(String str, Class<T> cls) {
        load(str, cls, null);
    }

    public synchronized void setErrorListener(AssetErrorListener assetErrorListener) {
        this.f3539t = assetErrorListener;
    }

    public synchronized <T, P extends AssetLoaderParameters<T>> void setLoader(Class<T> cls, AssetLoader<T, P> assetLoader) {
        setLoader(cls, null, assetLoader);
    }

    public void setLogger(Logger logger) {
        this.f3544y = logger;
    }

    public synchronized void setReferenceCount(String str, int i) {
        Class cls = this.f3532b.get(str);
        if (cls != null) {
            this.f3531a.get(cls).get(str).f3546b = i;
        } else {
            throw new GdxRuntimeException("Asset not loaded: " + str);
        }
    }

    public synchronized void unload(String str) {
        AssetLoaderParameters assetLoaderParameters;
        AssetLoaderParameters.LoadedCallback loadedCallback;
        Array<AssetLoadingTask> array = this.f3538s;
        if (array.size > 0) {
            AssetLoadingTask first = array.first();
            if (first.f3520b.fileName.equals(str)) {
                this.f3544y.info("Unload (from tasks): " + str);
                first.f3530l = true;
                first.unload();
                return;
            }
        }
        Class cls = this.f3532b.get(str);
        int i = 0;
        while (true) {
            Array<AssetDescriptor> array2 = this.f3536q;
            if (i < array2.size) {
                if (array2.get(i).fileName.equals(str)) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i != -1) {
            this.f3541v--;
            AssetDescriptor removeIndex = this.f3536q.removeIndex(i);
            this.f3544y.info("Unload (from queue): " + str);
            if (cls != null && (assetLoaderParameters = removeIndex.params) != null && (loadedCallback = assetLoaderParameters.loadedCallback) != null) {
                loadedCallback.finishedLoading(this, removeIndex.fileName, removeIndex.type);
            }
        } else if (cls != null) {
            RefCountedContainer refCountedContainer = this.f3531a.get(cls).get(str);
            int i2 = refCountedContainer.f3546b - 1;
            refCountedContainer.f3546b = i2;
            if (i2 <= 0) {
                this.f3544y.info("Unload (dispose): " + str);
                Object obj = refCountedContainer.f3545a;
                if (obj instanceof Disposable) {
                    ((Disposable) obj).dispose();
                }
                this.f3532b.remove(str);
                this.f3531a.get(cls).remove(str);
            } else {
                this.f3544y.info("Unload (decrement): " + str);
            }
            Array<String> array3 = this.f3533d.get(str);
            if (array3 != null) {
                Array.ArrayIterator<String> it = array3.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (isLoaded(next)) {
                        unload(next);
                    }
                }
            }
            if (refCountedContainer.f3546b <= 0) {
                this.f3533d.remove(str);
            }
        } else {
            throw new GdxRuntimeException("Asset not loaded: " + str);
        }
    }

    public synchronized boolean update() {
        boolean z = false;
        try {
            if (this.f3538s.size == 0) {
                while (this.f3536q.size != 0 && this.f3538s.size == 0) {
                    m24354g();
                }
                if (this.f3538s.size == 0) {
                    return true;
                }
            }
            if (m24352i() && this.f3536q.size == 0) {
                if (this.f3538s.size == 0) {
                    z = true;
                }
            }
            return z;
        } catch (Throwable th) {
            m24358c(th);
            return this.f3536q.size == 0;
        }
    }

    public AssetManager(FileHandleResolver fileHandleResolver) {
        this(fileHandleResolver, true);
    }

    /* renamed from: a */
    public <T> void m24360a(String str, Class<T> cls, T t) {
        this.f3532b.put(str, cls);
        ObjectMap<String, RefCountedContainer> objectMap = this.f3531a.get(cls);
        if (objectMap == null) {
            objectMap = new ObjectMap<>();
            this.f3531a.put(cls, objectMap);
        }
        RefCountedContainer refCountedContainer = new RefCountedContainer();
        refCountedContainer.f3545a = t;
        objectMap.put(str, refCountedContainer);
    }

    /* renamed from: b */
    public final void m24359b(AssetDescriptor assetDescriptor) {
        AssetLoader loader = getLoader(assetDescriptor.type, assetDescriptor.fileName);
        if (loader != null) {
            this.f3538s.add(new AssetLoadingTask(this, assetDescriptor, loader, this.f3537r));
            this.f3542w++;
            return;
        }
        throw new GdxRuntimeException("No loader for type: " + ClassReflection.getSimpleName(assetDescriptor.type));
    }

    /* renamed from: c */
    public final void m24358c(Throwable th) {
        this.f3544y.error("Error loading asset.", th);
        if (!this.f3538s.isEmpty()) {
            AssetLoadingTask pop = this.f3538s.pop();
            AssetDescriptor assetDescriptor = pop.f3520b;
            if (pop.f3525g && pop.f3526h != null) {
                Array.ArrayIterator<AssetDescriptor> it = pop.f3526h.iterator();
                while (it.hasNext()) {
                    unload(it.next().fileName);
                }
            }
            this.f3538s.clear();
            AssetErrorListener assetErrorListener = this.f3539t;
            if (assetErrorListener != null) {
                assetErrorListener.error(assetDescriptor, th);
                return;
            }
            throw new GdxRuntimeException(th);
        }
        throw new GdxRuntimeException(th);
    }

    /* renamed from: d */
    public final void m24357d(String str) {
        Array<String> array = this.f3533d.get(str);
        if (array == null) {
            return;
        }
        Array.ArrayIterator<String> it = array.iterator();
        while (it.hasNext()) {
            String next = it.next();
            this.f3531a.get(this.f3532b.get(next)).get(next).f3546b++;
            m24357d(next);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f3544y.debug("Disposing.");
        clear();
        this.f3537r.dispose();
    }

    public void finishLoading() {
        this.f3544y.debug("Waiting for loading to complete...");
        while (!update()) {
            ThreadUtils.yield();
        }
        this.f3544y.debug("Loading complete.");
    }

    public <T> T finishLoadingAsset(String str) {
        ObjectMap<String, RefCountedContainer> objectMap;
        RefCountedContainer refCountedContainer;
        Logger logger = this.f3544y;
        logger.debug("Waiting for asset to be loaded: " + str);
        while (true) {
            synchronized (this) {
                Class cls = this.f3532b.get(str);
                if (cls != null && (objectMap = this.f3531a.get(cls)) != null && (refCountedContainer = objectMap.get(str)) != null) {
                    Logger logger2 = this.f3544y;
                    logger2.debug("Asset loaded: " + str);
                    return (T) refCountedContainer.f3545a;
                }
                update();
            }
            ThreadUtils.yield();
        }
    }

    /* renamed from: g */
    public final void m24354g() {
        AssetLoaderParameters.LoadedCallback loadedCallback;
        AssetDescriptor removeIndex = this.f3536q.removeIndex(0);
        if (isLoaded(removeIndex.fileName)) {
            this.f3544y.debug("Already loaded: " + removeIndex);
            RefCountedContainer refCountedContainer = this.f3531a.get(this.f3532b.get(removeIndex.fileName)).get(removeIndex.fileName);
            refCountedContainer.f3546b = refCountedContainer.f3546b + 1;
            m24357d(removeIndex.fileName);
            AssetLoaderParameters assetLoaderParameters = removeIndex.params;
            if (assetLoaderParameters != null && (loadedCallback = assetLoaderParameters.loadedCallback) != null) {
                loadedCallback.finishedLoading(this, removeIndex.fileName, removeIndex.type);
            }
            this.f3540u++;
            return;
        }
        this.f3544y.info("Loading: " + removeIndex);
        m24359b(removeIndex);
    }

    public synchronized <T> T get(String str, Class<T> cls) {
        return (T) get(str, cls, true);
    }

    public <T> AssetLoader getLoader(Class<T> cls, String str) {
        ObjectMap<String, AssetLoader> objectMap = this.f3535p.get(cls);
        AssetLoader assetLoader = null;
        if (objectMap != null && objectMap.size >= 1) {
            if (str == null) {
                return objectMap.get("");
            }
            int i = -1;
            ObjectMap.Entries<String, AssetLoader> it = objectMap.entries().iterator();
            while (it.hasNext()) {
                ObjectMap.Entry next = it.next();
                if (((String) next.key).length() > i && str.endsWith((String) next.key)) {
                    assetLoader = (AssetLoader) next.value;
                    i = ((String) next.key).length();
                }
            }
        }
        return assetLoader;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080 A[RETURN] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m24352i() {
        /*
            r8 = this;
            com.badlogic.gdx.utils.Array<com.badlogic.gdx.assets.AssetLoadingTask> r0 = r8.f3538s
            java.lang.Object r0 = r0.peek()
            com.badlogic.gdx.assets.AssetLoadingTask r0 = (com.badlogic.gdx.assets.AssetLoadingTask) r0
            r1 = 0
            r2 = 1
            boolean r3 = r0.f3530l     // Catch: java.lang.RuntimeException -> L17
            if (r3 != 0) goto L1f
            boolean r3 = r0.update()     // Catch: java.lang.RuntimeException -> L17
            if (r3 == 0) goto L15
            goto L1f
        L15:
            r3 = 0
            goto L20
        L17:
            r3 = move-exception
            r0.f3530l = r2
            com.badlogic.gdx.assets.AssetDescriptor r4 = r0.f3520b
            r8.m24353h(r4, r3)
        L1f:
            r3 = 1
        L20:
            if (r3 == 0) goto L80
            com.badlogic.gdx.utils.Array<com.badlogic.gdx.assets.AssetLoadingTask> r3 = r8.f3538s
            int r4 = r3.size
            if (r4 != r2) goto L2f
            int r4 = r8.f3540u
            int r4 = r4 + r2
            r8.f3540u = r4
            r8.f3542w = r1
        L2f:
            r3.pop()
            boolean r1 = r0.f3530l
            if (r1 == 0) goto L37
            return r2
        L37:
            com.badlogic.gdx.assets.AssetDescriptor r1 = r0.f3520b
            java.lang.String r3 = r1.fileName
            java.lang.Class<T> r1 = r1.type
            java.lang.Object r4 = r0.f3529k
            r8.m24360a(r3, r1, r4)
            com.badlogic.gdx.assets.AssetDescriptor r1 = r0.f3520b
            com.badlogic.gdx.assets.AssetLoaderParameters r3 = r1.params
            if (r3 == 0) goto L53
            com.badlogic.gdx.assets.AssetLoaderParameters$LoadedCallback r3 = r3.loadedCallback
            if (r3 == 0) goto L53
            java.lang.String r4 = r1.fileName
            java.lang.Class<T> r1 = r1.type
            r3.finishedLoading(r8, r4, r1)
        L53:
            long r3 = com.badlogic.gdx.utils.TimeUtils.nanoTime()
            com.badlogic.gdx.utils.Logger r1 = r8.f3544y
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Loaded: "
            r5.append(r6)
            long r6 = r0.f3523e
            long r3 = r3 - r6
            float r3 = (float) r3
            r4 = 1232348160(0x49742400, float:1000000.0)
            float r3 = r3 / r4
            r5.append(r3)
            java.lang.String r3 = "ms "
            r5.append(r3)
            com.badlogic.gdx.assets.AssetDescriptor r0 = r0.f3520b
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            r1.debug(r0)
            return r2
        L80:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.assets.AssetManager.m24352i():boolean");
    }

    public synchronized boolean isLoaded(String str) {
        if (str == null) {
            return false;
        }
        return this.f3532b.containsKey(str);
    }

    public AssetManager(FileHandleResolver fileHandleResolver, boolean z) {
        this.f3531a = new ObjectMap<>();
        this.f3532b = new ObjectMap<>();
        this.f3533d = new ObjectMap<>();
        this.f3534k = new ObjectSet<>();
        this.f3535p = new ObjectMap<>();
        this.f3536q = new Array<>();
        this.f3538s = new Array<>();
        this.f3544y = new Logger("AssetManager", 0);
        this.f3543x = fileHandleResolver;
        if (z) {
            setLoader(BitmapFont.class, new BitmapFontLoader(fileHandleResolver));
            setLoader(Music.class, new MusicLoader(fileHandleResolver));
            setLoader(Pixmap.class, new PixmapLoader(fileHandleResolver));
            setLoader(Sound.class, new SoundLoader(fileHandleResolver));
            setLoader(TextureAtlas.class, new TextureAtlasLoader(fileHandleResolver));
            setLoader(Texture.class, new TextureLoader(fileHandleResolver));
            setLoader(Skin.class, new SkinLoader(fileHandleResolver));
            setLoader(ParticleEffect.class, new ParticleEffectLoader(fileHandleResolver));
            setLoader(com.badlogic.gdx.graphics.g3d.particles.ParticleEffect.class, new com.badlogic.gdx.graphics.g3d.particles.ParticleEffectLoader(fileHandleResolver));
            setLoader(PolygonRegion.class, new PolygonRegionLoader(fileHandleResolver));
            setLoader(I18NBundle.class, new I18NBundleLoader(fileHandleResolver));
            setLoader(Model.class, ".g3dj", new G3dModelLoader(new JsonReader(), fileHandleResolver));
            setLoader(Model.class, ".g3db", new G3dModelLoader(new UBJsonReader(), fileHandleResolver));
            setLoader(Model.class, ".obj", new ObjLoader(fileHandleResolver));
            setLoader(ShaderProgram.class, new ShaderProgramLoader(fileHandleResolver));
            setLoader(Cubemap.class, new CubemapLoader(fileHandleResolver));
        }
        this.f3537r = new AsyncExecutor(1, "AssetManager");
    }

    @Null
    public synchronized <T> T get(String str, boolean z) {
        ObjectMap<String, RefCountedContainer> objectMap;
        RefCountedContainer refCountedContainer;
        Class cls = this.f3532b.get(str);
        if (cls == null || (objectMap = this.f3531a.get(cls)) == null || (refCountedContainer = objectMap.get(str)) == null) {
            if (z) {
                throw new GdxRuntimeException("Asset not loaded: " + str);
            }
            return null;
        }
        return (T) refCountedContainer.f3545a;
    }

    public synchronized <T> void load(String str, Class<T> cls, AssetLoaderParameters<T> assetLoaderParameters) {
        if (getLoader(cls, str) != null) {
            int i = 0;
            if (this.f3536q.size == 0) {
                this.f3540u = 0;
                this.f3541v = 0;
                this.f3542w = 0;
            }
            int i2 = 0;
            while (true) {
                Array<AssetDescriptor> array = this.f3536q;
                if (i2 < array.size) {
                    AssetDescriptor assetDescriptor = array.get(i2);
                    if (assetDescriptor.fileName.equals(str) && !assetDescriptor.type.equals(cls)) {
                        throw new GdxRuntimeException("Asset with name '" + str + "' already in preload queue, but has different type (expected: " + ClassReflection.getSimpleName(cls) + ", found: " + ClassReflection.getSimpleName(assetDescriptor.type) + ")");
                    }
                    i2++;
                } else {
                    while (true) {
                        Array<AssetLoadingTask> array2 = this.f3538s;
                        if (i < array2.size) {
                            AssetDescriptor assetDescriptor2 = array2.get(i).f3520b;
                            if (assetDescriptor2.fileName.equals(str) && !assetDescriptor2.type.equals(cls)) {
                                throw new GdxRuntimeException("Asset with name '" + str + "' already in task list, but has different type (expected: " + ClassReflection.getSimpleName(cls) + ", found: " + ClassReflection.getSimpleName(assetDescriptor2.type) + ")");
                            }
                            i++;
                        } else {
                            Class cls2 = this.f3532b.get(str);
                            if (cls2 != null && !cls2.equals(cls)) {
                                throw new GdxRuntimeException("Asset with name '" + str + "' already loaded, but has different type (expected: " + ClassReflection.getSimpleName(cls) + ", found: " + ClassReflection.getSimpleName(cls2) + ")");
                            }
                            this.f3541v++;
                            AssetDescriptor assetDescriptor3 = new AssetDescriptor(str, cls, assetLoaderParameters);
                            this.f3536q.add(assetDescriptor3);
                            this.f3544y.debug("Queued: " + assetDescriptor3);
                        }
                    }
                }
            }
        } else {
            throw new GdxRuntimeException("No loader for type: " + ClassReflection.getSimpleName(cls));
        }
    }

    public synchronized <T, P extends AssetLoaderParameters<T>> void setLoader(Class<T> cls, String str, AssetLoader<T, P> assetLoader) {
        if (cls == null) {
            throw new IllegalArgumentException("type cannot be null.");
        }
        if (assetLoader != null) {
            Logger logger = this.f3544y;
            logger.debug("Loader set: " + ClassReflection.getSimpleName(cls) + " -> " + ClassReflection.getSimpleName(assetLoader.getClass()));
            ObjectMap<String, AssetLoader> objectMap = this.f3535p.get(cls);
            if (objectMap == null) {
                ObjectMap<Class, ObjectMap<String, AssetLoader>> objectMap2 = this.f3535p;
                ObjectMap<String, AssetLoader> objectMap3 = new ObjectMap<>();
                objectMap2.put(cls, objectMap3);
                objectMap = objectMap3;
            }
            if (str == null) {
                str = "";
            }
            objectMap.put(str, assetLoader);
        } else {
            throw new IllegalArgumentException("loader cannot be null.");
        }
    }

    public synchronized boolean isLoaded(String str, Class cls) {
        ObjectMap<String, RefCountedContainer> objectMap = this.f3531a.get(cls);
        if (objectMap == null) {
            return false;
        }
        return objectMap.get(str) != null;
    }

    public synchronized boolean contains(String str, Class cls) {
        Array<AssetLoadingTask> array = this.f3538s;
        if (array.size > 0) {
            AssetDescriptor assetDescriptor = array.first().f3520b;
            if (assetDescriptor.type == cls && assetDescriptor.fileName.equals(str)) {
                return true;
            }
        }
        int i = 0;
        while (true) {
            Array<AssetDescriptor> array2 = this.f3536q;
            if (i < array2.size) {
                AssetDescriptor assetDescriptor2 = array2.get(i);
                if (assetDescriptor2.type == cls && assetDescriptor2.fileName.equals(str)) {
                    return true;
                }
                i++;
            } else {
                return isLoaded(str, cls);
            }
        }
    }

    public boolean update(int i) {
        boolean update;
        if (Gdx.app.getType() == Application.ApplicationType.WebGL) {
            return update();
        }
        long millis = TimeUtils.millis() + i;
        while (true) {
            update = update();
            if (update || TimeUtils.millis() > millis) {
                break;
            }
            ThreadUtils.yield();
        }
        return update;
    }

    @Null
    public synchronized <T> T get(String str, Class<T> cls, boolean z) {
        RefCountedContainer refCountedContainer;
        ObjectMap<String, RefCountedContainer> objectMap = this.f3531a.get(cls);
        if (objectMap == null || (refCountedContainer = objectMap.get(str)) == null) {
            if (z) {
                throw new GdxRuntimeException("Asset not loaded: " + str);
            }
            return null;
        }
        return (T) refCountedContainer.f3545a;
    }

    public synchronized <T> T get(AssetDescriptor<T> assetDescriptor) {
        return (T) get(assetDescriptor.fileName, assetDescriptor.type, true);
    }

    public synchronized void load(AssetDescriptor assetDescriptor) {
        load(assetDescriptor.fileName, assetDescriptor.type, assetDescriptor.params);
    }
}
