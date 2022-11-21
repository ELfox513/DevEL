package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.g3d.utils.DefaultRenderableSorter;
import com.badlogic.gdx.graphics.g3d.utils.DefaultShaderProvider;
import com.badlogic.gdx.graphics.g3d.utils.DefaultTextureBinder;
import com.badlogic.gdx.graphics.g3d.utils.RenderContext;
import com.badlogic.gdx.graphics.g3d.utils.RenderableSorter;
import com.badlogic.gdx.graphics.g3d.utils.ShaderProvider;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.FlushablePool;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class ModelBatch implements Disposable {

    /* renamed from: a */
    public Camera f4370a;

    /* renamed from: b */
    public final RenderablePool f4371b;

    /* renamed from: d */
    public final Array<Renderable> f4372d;

    /* renamed from: k */
    public final RenderContext f4373k;

    /* renamed from: p */
    public final boolean f4374p;

    /* renamed from: q */
    public final ShaderProvider f4375q;

    /* renamed from: r */
    public final RenderableSorter f4376r;

    /* loaded from: classes.dex */
    public static class RenderablePool extends FlushablePool<Renderable> {
        @Override // com.badlogic.gdx.utils.Pool
        public Renderable newObject() {
            return new Renderable();
        }

        @Override // com.badlogic.gdx.utils.FlushablePool, com.badlogic.gdx.utils.Pool
        public Renderable obtain() {
            Renderable renderable = (Renderable) super.obtain();
            renderable.environment = null;
            renderable.material = null;
            renderable.meshPart.set("", null, 0, 0, 0);
            renderable.shader = null;
            renderable.userData = null;
            return renderable;
        }
    }

    public ModelBatch(RenderContext renderContext, ShaderProvider shaderProvider, RenderableSorter renderableSorter) {
        this.f4371b = new RenderablePool();
        this.f4372d = new Array<>();
        this.f4376r = renderableSorter == null ? new DefaultRenderableSorter() : renderableSorter;
        this.f4374p = renderContext == null;
        this.f4373k = renderContext == null ? new RenderContext(new DefaultTextureBinder(1, 1)) : renderContext;
        this.f4375q = shaderProvider == null ? new DefaultShaderProvider() : shaderProvider;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f4375q.dispose();
    }

    public Camera getCamera() {
        return this.f4370a;
    }

    public RenderContext getRenderContext() {
        return this.f4373k;
    }

    public RenderableSorter getRenderableSorter() {
        return this.f4376r;
    }

    public ShaderProvider getShaderProvider() {
        return this.f4375q;
    }

    public boolean ownsRenderContext() {
        return this.f4374p;
    }

    public void render(Renderable renderable) {
        renderable.shader = this.f4375q.getShader(renderable);
        this.f4372d.add(renderable);
    }

    public void begin(Camera camera) {
        if (this.f4370a == null) {
            this.f4370a = camera;
            if (this.f4374p) {
                this.f4373k.begin();
                return;
            }
            return;
        }
        throw new GdxRuntimeException("Call end() first.");
    }

    public void flush() {
        this.f4376r.sort(this.f4370a, this.f4372d);
        Shader shader = null;
        int i = 0;
        while (true) {
            Array<Renderable> array = this.f4372d;
            if (i >= array.size) {
                break;
            }
            Renderable renderable = array.get(i);
            if (shader != renderable.shader) {
                if (shader != null) {
                    shader.end();
                }
                shader = renderable.shader;
                shader.begin(this.f4370a, this.f4373k);
            }
            shader.render(renderable);
            i++;
        }
        if (shader != null) {
            shader.end();
        }
        this.f4371b.flush();
        this.f4372d.clear();
    }

    public void setCamera(Camera camera) {
        if (this.f4370a != null) {
            if (this.f4372d.size > 0) {
                flush();
            }
            this.f4370a = camera;
            return;
        }
        throw new GdxRuntimeException("Call begin() first.");
    }

    public void end() {
        flush();
        if (this.f4374p) {
            this.f4373k.end();
        }
        this.f4370a = null;
    }

    public void render(RenderableProvider renderableProvider) {
        Array<Renderable> array = this.f4372d;
        int i = array.size;
        renderableProvider.getRenderables(array, this.f4371b);
        while (true) {
            Array<Renderable> array2 = this.f4372d;
            if (i >= array2.size) {
                return;
            }
            Renderable renderable = array2.get(i);
            renderable.shader = this.f4375q.getShader(renderable);
            i++;
        }
    }

    public ModelBatch(RenderContext renderContext, ShaderProvider shaderProvider) {
        this(renderContext, shaderProvider, null);
    }

    public <T extends RenderableProvider> void render(Iterable<T> iterable) {
        for (T t : iterable) {
            render(t);
        }
    }

    public ModelBatch(RenderContext renderContext, RenderableSorter renderableSorter) {
        this(renderContext, null, renderableSorter);
    }

    public ModelBatch(RenderContext renderContext) {
        this(renderContext, null, null);
    }

    public void render(RenderableProvider renderableProvider, Environment environment) {
        Array<Renderable> array = this.f4372d;
        int i = array.size;
        renderableProvider.getRenderables(array, this.f4371b);
        while (true) {
            Array<Renderable> array2 = this.f4372d;
            if (i >= array2.size) {
                return;
            }
            Renderable renderable = array2.get(i);
            renderable.environment = environment;
            renderable.shader = this.f4375q.getShader(renderable);
            i++;
        }
    }

    public ModelBatch(ShaderProvider shaderProvider, RenderableSorter renderableSorter) {
        this(null, shaderProvider, renderableSorter);
    }

    public ModelBatch(RenderableSorter renderableSorter) {
        this(null, null, renderableSorter);
    }

    public ModelBatch(ShaderProvider shaderProvider) {
        this(null, shaderProvider, null);
    }

    public ModelBatch(FileHandle fileHandle, FileHandle fileHandle2) {
        this(null, new DefaultShaderProvider(fileHandle, fileHandle2), null);
    }

    public ModelBatch(String str, String str2) {
        this(null, new DefaultShaderProvider(str, str2), null);
    }

    public ModelBatch() {
        this(null, null, null);
    }

    public <T extends RenderableProvider> void render(Iterable<T> iterable, Environment environment) {
        for (T t : iterable) {
            render(t, environment);
        }
    }

    public void render(RenderableProvider renderableProvider, Shader shader) {
        Array<Renderable> array = this.f4372d;
        int i = array.size;
        renderableProvider.getRenderables(array, this.f4371b);
        while (true) {
            Array<Renderable> array2 = this.f4372d;
            if (i >= array2.size) {
                return;
            }
            Renderable renderable = array2.get(i);
            renderable.shader = shader;
            renderable.shader = this.f4375q.getShader(renderable);
            i++;
        }
    }

    public <T extends RenderableProvider> void render(Iterable<T> iterable, Shader shader) {
        for (T t : iterable) {
            render(t, shader);
        }
    }

    public void render(RenderableProvider renderableProvider, Environment environment, Shader shader) {
        Array<Renderable> array = this.f4372d;
        int i = array.size;
        renderableProvider.getRenderables(array, this.f4371b);
        while (true) {
            Array<Renderable> array2 = this.f4372d;
            if (i >= array2.size) {
                return;
            }
            Renderable renderable = array2.get(i);
            renderable.environment = environment;
            renderable.shader = shader;
            renderable.shader = this.f4375q.getShader(renderable);
            i++;
        }
    }

    public <T extends RenderableProvider> void render(Iterable<T> iterable, Environment environment, Shader shader) {
        for (T t : iterable) {
            render(t, environment, shader);
        }
    }
}
