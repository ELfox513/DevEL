package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.explosions.AirFallExplosion;
import com.prineside.tdi2.explosions.CannonExplosion;
import com.prineside.tdi2.explosions.FireballExplosion;
import com.prineside.tdi2.explosions.GenericExplosion;
import com.prineside.tdi2.explosions.MissileExplosion;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ExplosionManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f9791F;

    /* renamed from: a */
    public final Explosion.Factory[] f9792a;
    public ParticleEffectPool particleEffectPool;

    /* loaded from: classes2.dex */
    public static class Factories {
        public AirFallExplosion.AirFallExplosionFactory AIR_FALL;
        public CannonExplosion.CannonExplosionFactory CANNON;
        public FireballExplosion.FireballExplosionFactory FIREBALL;
        public GenericExplosion.GenericExplosionFactory GENERIC;
        public MissileExplosion.MissileExplosionFactory MISSILE;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ExplosionManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ExplosionManager read() {
            return Game.f8589i.explosionManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public Explosion.Factory<? extends Explosion> getFactory(ExplosionType explosionType) {
        return this.f9792a[explosionType.ordinal()];
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void clearPools() {
        for (Explosion.Factory factory : this.f9792a) {
            factory.clearPool();
        }
        ParticleEffectPool particleEffectPool = this.particleEffectPool;
        if (particleEffectPool != null) {
            particleEffectPool.clear();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        for (Explosion.Factory factory : this.f9792a) {
            factory.setup();
        }
        if (Game.f8589i.assetManager != null) {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/explosion.prt"), Game.f8589i.assetManager.getTextureRegion("particle-shockwave").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.particleEffectPool = new ParticleEffectPool(particleEffect, 8, 1024);
        }
    }

    public ExplosionManager() {
        Factories factories = new Factories();
        this.f9791F = factories;
        ExplosionType[] explosionTypeArr = ExplosionType.values;
        Explosion.Factory[] factoryArr = new Explosion.Factory[explosionTypeArr.length];
        this.f9792a = factoryArr;
        int ordinal = ExplosionType.CANNON.ordinal();
        CannonExplosion.CannonExplosionFactory cannonExplosionFactory = new CannonExplosion.CannonExplosionFactory();
        factories.CANNON = cannonExplosionFactory;
        factoryArr[ordinal] = cannonExplosionFactory;
        int ordinal2 = ExplosionType.MISSILE.ordinal();
        MissileExplosion.MissileExplosionFactory missileExplosionFactory = new MissileExplosion.MissileExplosionFactory();
        factories.MISSILE = missileExplosionFactory;
        factoryArr[ordinal2] = missileExplosionFactory;
        int ordinal3 = ExplosionType.FIREBALL.ordinal();
        FireballExplosion.FireballExplosionFactory fireballExplosionFactory = new FireballExplosion.FireballExplosionFactory();
        factories.FIREBALL = fireballExplosionFactory;
        factoryArr[ordinal3] = fireballExplosionFactory;
        int ordinal4 = ExplosionType.AIR_FALL.ordinal();
        AirFallExplosion.AirFallExplosionFactory airFallExplosionFactory = new AirFallExplosion.AirFallExplosionFactory();
        factories.AIR_FALL = airFallExplosionFactory;
        factoryArr[ordinal4] = airFallExplosionFactory;
        int ordinal5 = ExplosionType.GENERIC.ordinal();
        GenericExplosion.GenericExplosionFactory genericExplosionFactory = new GenericExplosion.GenericExplosionFactory();
        factories.GENERIC = genericExplosionFactory;
        factoryArr[ordinal5] = genericExplosionFactory;
        for (ExplosionType explosionType : explosionTypeArr) {
            if (this.f9792a[explosionType.ordinal()] == null) {
                throw new RuntimeException("Not all explosion factories were created");
            }
        }
    }
}
