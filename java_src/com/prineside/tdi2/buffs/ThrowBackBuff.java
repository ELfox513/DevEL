package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.processors.ThrowBackBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ThrowBackBuff extends Buff {
    public float damageMultiplier;
    public float force;
    public int ownerId;

    /* loaded from: classes2.dex */
    public static class BlastThrowBackBuffFactory extends Buff.Factory<ThrowBackBuff> {

        /* renamed from: b */
        public TextureRegion f9122b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public ThrowBackBuff mo21833a() {
            return new ThrowBackBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<ThrowBackBuff> createProcessor() {
            return new ThrowBackBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return false;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9122b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9122b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-blast-throw-back");
        }
    }

    public ThrowBackBuff() {
        super(BuffType.THROW_BACK);
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.ownerId = 0;
        this.force = 0.0f;
        this.damageMultiplier = 0.0f;
    }

    public void setup(int i, float f, float f2, float f3, float f4) {
        super.setup(f2, f3);
        this.ownerId = i;
        this.force = f;
        this.damageMultiplier = f4;
    }

    @Override // com.prineside.tdi2.Buff
    public ThrowBackBuff cpy(float f) {
        ThrowBackBuff obtain = Game.f8589i.buffManager.f9699F.THROW_BACK.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        obtain.setup(this.ownerId, this.force, f2 > f3 ? f3 : f2, f3, this.damageMultiplier);
        return obtain;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.ownerId = input.readVarInt(false);
        this.force = input.readFloat();
        this.damageMultiplier = input.readFloat();
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.ownerId, false);
        output.writeFloat(this.force);
        output.writeFloat(this.damageMultiplier);
    }

    @Override // com.prineside.tdi2.Buff
    @Deprecated
    public void setup(float f, float f2) {
        throw new IllegalStateException("Use other constructor");
    }
}
