package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.processors.RegenerationBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class RegenerationBuff extends Buff {
    public float hpPerSecond;
    public Enemy.EnemyReference issuer;

    /* loaded from: classes2.dex */
    public static class RegenerationBuffFactory extends Buff.Factory<RegenerationBuff> {

        /* renamed from: b */
        public TextureRegion f9119b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public RegenerationBuff mo21833a() {
            return new RegenerationBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<RegenerationBuff> createProcessor() {
            return new RegenerationBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return false;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9119b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9119b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-regeneration");
        }
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
    }

    @Override // com.prineside.tdi2.Buff
    @Deprecated
    public void setup(float f, float f2) {
        throw new IllegalStateException("Use other constructor");
    }

    public RegenerationBuff() {
        super(BuffType.REGENERATION);
        this.issuer = Enemy.EnemyReference.NULL;
    }

    @Override // com.prineside.tdi2.Buff
    public RegenerationBuff cpy(float f) {
        RegenerationBuff obtain = Game.f8589i.buffManager.f9699F.REGENERATION.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        if (f2 > f3) {
            f2 = f3;
        }
        obtain.setup(f2, f3, this.hpPerSecond, this.issuer);
        return obtain;
    }

    public void setup(float f, float f2, float f3, Enemy.EnemyReference enemyReference) {
        super.setup(f, f2);
        this.hpPerSecond = f3;
        this.issuer = enemyReference;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.issuer = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.hpPerSecond = input.readFloat();
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.issuer);
        output.writeFloat(this.hpPerSecond);
    }
}
