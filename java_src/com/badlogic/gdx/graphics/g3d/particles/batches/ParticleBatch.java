package com.badlogic.gdx.graphics.g3d.particles.batches;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.RenderableProvider;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderData;
/* loaded from: classes.dex */
public interface ParticleBatch<T extends ParticleControllerRenderData> extends RenderableProvider, ResourceData.Configurable {
    void begin();

    void draw(T t);

    void end();

    void load(AssetManager assetManager, ResourceData resourceData);

    void save(AssetManager assetManager, ResourceData resourceData);
}
