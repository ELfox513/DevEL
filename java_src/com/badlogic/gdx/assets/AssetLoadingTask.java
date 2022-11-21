package com.badlogic.gdx.assets;

import com.badlogic.gdx.assets.loaders.AssetLoader;
import com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader;
import com.badlogic.gdx.assets.loaders.SynchronousAssetLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.TimeUtils;
import com.badlogic.gdx.utils.async.AsyncExecutor;
import com.badlogic.gdx.utils.async.AsyncResult;
import com.badlogic.gdx.utils.async.AsyncTask;
import java.lang.reflect.GenericDeclaration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AssetLoadingTask implements AsyncTask<Void> {

    /* renamed from: a */
    public AssetManager f3519a;

    /* renamed from: b */
    public final AssetDescriptor f3520b;

    /* renamed from: c */
    public final AssetLoader f3521c;

    /* renamed from: d */
    public final AsyncExecutor f3522d;

    /* renamed from: e */
    public final long f3523e;

    /* renamed from: f */
    public volatile boolean f3524f;

    /* renamed from: g */
    public volatile boolean f3525g;

    /* renamed from: h */
    public volatile Array<AssetDescriptor> f3526h;

    /* renamed from: i */
    public volatile AsyncResult<Void> f3527i;

    /* renamed from: j */
    public volatile AsyncResult<Void> f3528j;

    /* renamed from: k */
    public volatile Object f3529k;

    /* renamed from: l */
    public volatile boolean f3530l;

    /* renamed from: a */
    public final void m24364a() {
        AsynchronousAssetLoader asynchronousAssetLoader = (AsynchronousAssetLoader) this.f3521c;
        if (!this.f3525g) {
            if (this.f3527i == null) {
                this.f3527i = this.f3522d.submit(this);
            } else if (this.f3527i.isDone()) {
                try {
                    this.f3527i.get();
                    this.f3525g = true;
                    if (this.f3524f) {
                        AssetManager assetManager = this.f3519a;
                        AssetDescriptor assetDescriptor = this.f3520b;
                        this.f3529k = asynchronousAssetLoader.loadSync(assetManager, assetDescriptor.fileName, m24361d(this.f3521c, assetDescriptor), this.f3520b.params);
                    }
                } catch (Exception e) {
                    throw new GdxRuntimeException("Couldn't load dependencies of asset: " + this.f3520b.fileName, e);
                }
            }
        } else if (this.f3528j == null && !this.f3524f) {
            this.f3528j = this.f3522d.submit(this);
        } else if (this.f3524f) {
            AssetManager assetManager2 = this.f3519a;
            AssetDescriptor assetDescriptor2 = this.f3520b;
            this.f3529k = asynchronousAssetLoader.loadSync(assetManager2, assetDescriptor2.fileName, m24361d(this.f3521c, assetDescriptor2), this.f3520b.params);
        } else if (this.f3528j.isDone()) {
            try {
                this.f3528j.get();
                AssetManager assetManager3 = this.f3519a;
                AssetDescriptor assetDescriptor3 = this.f3520b;
                this.f3529k = asynchronousAssetLoader.loadSync(assetManager3, assetDescriptor3.fileName, m24361d(this.f3521c, assetDescriptor3), this.f3520b.params);
            } catch (Exception e2) {
                throw new GdxRuntimeException("Couldn't load asset: " + this.f3520b.fileName, e2);
            }
        }
    }

    /* renamed from: b */
    public final void m24363b() {
        SynchronousAssetLoader synchronousAssetLoader = (SynchronousAssetLoader) this.f3521c;
        if (!this.f3525g) {
            this.f3525g = true;
            AssetDescriptor assetDescriptor = this.f3520b;
            this.f3526h = synchronousAssetLoader.getDependencies(assetDescriptor.fileName, m24361d(this.f3521c, assetDescriptor), this.f3520b.params);
            if (this.f3526h == null) {
                AssetManager assetManager = this.f3519a;
                AssetDescriptor assetDescriptor2 = this.f3520b;
                this.f3529k = synchronousAssetLoader.load(assetManager, assetDescriptor2.fileName, m24361d(this.f3521c, assetDescriptor2), this.f3520b.params);
                return;
            }
            m24362c(this.f3526h);
            this.f3519a.m24356e(this.f3520b.fileName, this.f3526h);
            return;
        }
        AssetManager assetManager2 = this.f3519a;
        AssetDescriptor assetDescriptor3 = this.f3520b;
        this.f3529k = synchronousAssetLoader.load(assetManager2, assetDescriptor3.fileName, m24361d(this.f3521c, assetDescriptor3), this.f3520b.params);
    }

    /* renamed from: c */
    public final void m24362c(Array<AssetDescriptor> array) {
        boolean z = array.ordered;
        array.ordered = true;
        for (int i = 0; i < array.size; i++) {
            String str = array.get(i).fileName;
            GenericDeclaration genericDeclaration = array.get(i).type;
            for (int i2 = array.size - 1; i2 > i; i2--) {
                if (genericDeclaration == array.get(i2).type && str.equals(array.get(i2).fileName)) {
                    array.removeIndex(i2);
                }
            }
        }
        array.ordered = z;
    }

    @Override // com.badlogic.gdx.utils.async.AsyncTask
    public Void call() {
        if (this.f3530l) {
            return null;
        }
        AsynchronousAssetLoader asynchronousAssetLoader = (AsynchronousAssetLoader) this.f3521c;
        if (!this.f3525g) {
            AssetDescriptor assetDescriptor = this.f3520b;
            this.f3526h = asynchronousAssetLoader.getDependencies(assetDescriptor.fileName, m24361d(this.f3521c, assetDescriptor), this.f3520b.params);
            if (this.f3526h != null) {
                m24362c(this.f3526h);
                this.f3519a.m24356e(this.f3520b.fileName, this.f3526h);
            } else {
                AssetManager assetManager = this.f3519a;
                AssetDescriptor assetDescriptor2 = this.f3520b;
                asynchronousAssetLoader.loadAsync(assetManager, assetDescriptor2.fileName, m24361d(this.f3521c, assetDescriptor2), this.f3520b.params);
                this.f3524f = true;
            }
        } else {
            AssetManager assetManager2 = this.f3519a;
            AssetDescriptor assetDescriptor3 = this.f3520b;
            asynchronousAssetLoader.loadAsync(assetManager2, assetDescriptor3.fileName, m24361d(this.f3521c, assetDescriptor3), this.f3520b.params);
            this.f3524f = true;
        }
        return null;
    }

    /* renamed from: d */
    public final FileHandle m24361d(AssetLoader assetLoader, AssetDescriptor assetDescriptor) {
        if (assetDescriptor.file == null) {
            assetDescriptor.file = assetLoader.resolve(assetDescriptor.fileName);
        }
        return assetDescriptor.file;
    }

    public void unload() {
        AssetLoader assetLoader = this.f3521c;
        if (assetLoader instanceof AsynchronousAssetLoader) {
            AssetManager assetManager = this.f3519a;
            AssetDescriptor assetDescriptor = this.f3520b;
            ((AsynchronousAssetLoader) assetLoader).unloadAsync(assetManager, assetDescriptor.fileName, m24361d(assetLoader, assetDescriptor), this.f3520b.params);
        }
    }

    public boolean update() {
        if (this.f3521c instanceof SynchronousAssetLoader) {
            m24363b();
        } else {
            m24364a();
        }
        if (this.f3529k != null) {
            return true;
        }
        return false;
    }

    public AssetLoadingTask(AssetManager assetManager, AssetDescriptor assetDescriptor, AssetLoader assetLoader, AsyncExecutor asyncExecutor) {
        long j;
        this.f3519a = assetManager;
        this.f3520b = assetDescriptor;
        this.f3521c = assetLoader;
        this.f3522d = asyncExecutor;
        if (assetManager.f3544y.getLevel() == 3) {
            j = TimeUtils.nanoTime();
        } else {
            j = 0;
        }
        this.f3523e = j;
    }
}
