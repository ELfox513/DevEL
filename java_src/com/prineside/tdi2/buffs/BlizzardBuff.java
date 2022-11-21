package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.processors.BlizzardBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BlizzardBuff extends Buff {
    public float damageMultiplier;
    public float timePassed;

    /* loaded from: classes2.dex */
    public static class BlizzardBuffFactory extends Buff.Factory<BlizzardBuff> {

        /* renamed from: b */
        public TextureRegion f9111b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public BlizzardBuff mo21833a() {
            return new BlizzardBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<BlizzardBuff> createProcessor() {
            return new BlizzardBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9111b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9111b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-blizzard");
        }
    }

    public BlizzardBuff() {
        super(BuffType.BLIZZARD);
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.timePassed = 0.0f;
    }

    @Override // com.prineside.tdi2.Buff
    @Deprecated
    public void setup(float f, float f2) {
        throw new IllegalStateException("Use other constructor");
    }

    @Override // com.prineside.tdi2.Buff
    public BlizzardBuff cpy(float f) {
        BlizzardBuff obtain = Game.f8589i.buffManager.f9699F.BLIZZARD.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        if (f2 > f3) {
            f2 = f3;
        }
        obtain.setup(f2, f3, this.damageMultiplier);
        return obtain;
    }

    public void setup(float f, float f2, float f3) {
        super.setup(f, f2);
        this.damageMultiplier = f3;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.timePassed = input.readFloat();
        this.damageMultiplier = input.readFloat();
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.timePassed);
        output.writeFloat(this.damageMultiplier);
    }
}
