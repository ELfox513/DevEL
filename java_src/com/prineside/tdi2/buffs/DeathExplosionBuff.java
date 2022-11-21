package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.processors.DeathExplosionBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class DeathExplosionBuff extends Buff {
    public Explosion explosion;

    /* loaded from: classes2.dex */
    public static class ExplosionChargeBuffFactory extends Buff.Factory<DeathExplosionBuff> {

        /* renamed from: b */
        public TextureRegion f9116b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public DeathExplosionBuff mo21833a() {
            return new DeathExplosionBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<DeathExplosionBuff> createProcessor() {
            return new DeathExplosionBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return true;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9116b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9116b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-death-explosion");
        }
    }

    public DeathExplosionBuff() {
        super(BuffType.DEATH_EXPLOSION);
    }

    @Override // com.prineside.tdi2.Buff
    @Deprecated
    public void setup(float f, float f2) {
        throw new IllegalStateException("Use other constructor");
    }

    @Override // com.prineside.tdi2.Buff
    public DeathExplosionBuff cpy(float f) {
        Explosion cpy;
        Explosion explosion = this.explosion;
        if (explosion == null || (cpy = explosion.cpy()) == null) {
            return null;
        }
        DeathExplosionBuff obtain = Game.f8589i.buffManager.f9699F.DEATH_EXPLOSION.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        if (f2 > f3) {
            f2 = f3;
        }
        obtain.setup(f2, f3, cpy);
        return obtain;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        Explosion explosion = this.explosion;
        if (explosion != null) {
            Game.f8589i.explosionManager.getFactory(explosion.type).free(this.explosion);
            this.explosion = null;
        }
    }

    public void setup(float f, float f2, Explosion explosion) {
        super.setup(f, f2);
        this.explosion = explosion;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.explosion = (Explosion) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.explosion);
    }
}
