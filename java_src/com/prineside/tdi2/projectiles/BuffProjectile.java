package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyFollowingProjectile;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BuffProjectile extends EnemyFollowingProjectile {

    /* renamed from: x */
    public Array<Buff> f10409x;
    @NAGS

    /* renamed from: y */
    public ParticleEffectPool.PooledEffect f10410y;

    /* loaded from: classes2.dex */
    public static class BuffProjectileFactory extends Projectile.Factory<BuffProjectile> {

        /* renamed from: b */
        public TextureRegion f10411b;

        /* renamed from: d */
        public ParticleEffectPool f10412d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public BuffProjectile mo21367a() {
            return new BuffProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10411b = Game.f8589i.assetManager.getTextureRegion("projectile-buff");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/buff-projectile.prt"), Game.f8589i.assetManager.getTextureRegion("small-circle").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f10412d = new ParticleEffectPool(particleEffect, 8, 1024);
        }
    }

    public void setup(Enemy enemy, Array<Buff> array, Vector2 vector2, float f) {
        this.f8833a = 0.0f;
        this.f10409x.addAll(array);
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S._particle.willParticleBeSkipped()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.projectileManager.f9990F.BUFF.f10412d.obtain();
            this.f10410y = obtain;
            obtain.setPosition(vector2.f5527x, vector2.f5528y);
            this.f8844S._particle.addParticle(this.f10410y, true);
        }
        super.setup(vector2, enemy, f);
    }

    public BuffProjectile() {
        super(ProjectileType.BUFF);
        this.f10409x = new Array<>(Buff.class);
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.BUFF.f10411b;
        Vector2 vector2 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector2.f5527x - 9.0f, vector2.f5528y - 9.0f, 18.0f, 18.0f);
        ParticleEffectPool.PooledEffect pooledEffect = this.f10410y;
        if (pooledEffect != null) {
            Vector2 vector22 = this.drawPosition;
            pooledEffect.setPosition(vector22.f5527x, vector22.f5528y);
        }
    }

    @Override // com.prineside.tdi2.Projectile
    public void hit() {
        super.hit();
        Enemy target = getTarget();
        if (target != null) {
            int i = 0;
            while (true) {
                Array<Buff> array = this.f10409x;
                if (i >= array.size) {
                    break;
                }
                Buff buff = array.items[i];
                this.f8844S.buff.getProcessor(buff.getType()).addBuff(target, buff);
                i++;
            }
        }
        this.f10409x.clear();
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10409x = (Array) kryo.readObject(input, Array.class);
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10409x.clear();
        ParticleEffectPool.PooledEffect pooledEffect = this.f10410y;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f10410y = null;
        }
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f10409x);
    }
}
