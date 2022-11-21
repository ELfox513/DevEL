package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class MapManager extends Manager.ManagerAdapter {
    public ParticleEffectPool coreHighlightParticlesPool;
    public ParticleEffectPool highlightParticlesPool;
    public ParticleEffectPool tileWarningParticlePool;

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<MapManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public MapManager read() {
            return Game.f8589i.mapManager;
        }
    }

    public MapManager() {
        if (Game.f8589i.assetManager != null) {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/highlight.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.highlightParticlesPool = new ParticleEffectPool(particleEffect, 1, 1024);
            ParticleEffect particleEffect2 = new ParticleEffect();
            particleEffect2.load(Gdx.files.internal("particles/core-highlight.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
            particleEffect2.setEmittersCleanUpBlendFunction(false);
            this.coreHighlightParticlesPool = new ParticleEffectPool(particleEffect2, 1, 16);
            ParticleEffect particleEffect3 = new ParticleEffect();
            particleEffect3.load(Gdx.files.internal("particles/tile-warning.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
            particleEffect3.setEmittersCleanUpBlendFunction(false);
            this.tileWarningParticlePool = new ParticleEffectPool(particleEffect3, 1, 16);
        }
    }
}
