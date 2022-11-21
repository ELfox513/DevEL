package com.badlogic.gdx.graphics.g3d.particles.batches;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.graphics.g3d.particles.renderers.ModelInstanceControllerRenderData;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class ModelInstanceParticleBatch implements ParticleBatch<ModelInstanceControllerRenderData> {

    /* renamed from: a */
    public Array<ModelInstanceControllerRenderData> f4603a = new Array<>(false, 5);

    /* renamed from: b */
    public int f4604b;

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch
    public void end() {
    }

    public int getBufferedCount() {
        return this.f4604b;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch
    public void begin() {
        this.f4603a.clear();
        this.f4604b = 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch
    public void draw(ModelInstanceControllerRenderData modelInstanceControllerRenderData) {
        this.f4603a.add(modelInstanceControllerRenderData);
        this.f4604b += modelInstanceControllerRenderData.controller.particles.size;
    }

    @Override // com.badlogic.gdx.graphics.g3d.RenderableProvider
    public void getRenderables(Array<Renderable> array, Pool<Renderable> pool) {
        Array.ArrayIterator<ModelInstanceControllerRenderData> it = this.f4603a.iterator();
        while (it.hasNext()) {
            ModelInstanceControllerRenderData next = it.next();
            int i = next.controller.particles.size;
            for (int i2 = 0; i2 < i; i2++) {
                next.modelInstanceChannel.data[i2].getRenderables(array, pool);
            }
        }
    }
}
