package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.processors.BonusCoinsBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BonusCoinsBuff extends Buff {
    public float bonusCoinsMultiplier;
    public Tower issuer;

    /* loaded from: classes2.dex */
    public static class BonusCoinsBuffFactory extends Buff.Factory<BonusCoinsBuff> {

        /* renamed from: b */
        public TextureRegion f9112b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public BonusCoinsBuff mo21833a() {
            return new BonusCoinsBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<BonusCoinsBuff> createProcessor() {
            return new BonusCoinsBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return false;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9112b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9112b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-bonus-coins");
        }
    }

    public BonusCoinsBuff() {
        super(BuffType.BONUS_COINS);
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.issuer = null;
    }

    @Override // com.prineside.tdi2.Buff
    @Deprecated
    public void setup(float f, float f2) {
        throw new IllegalStateException("Use other constructor");
    }

    @Override // com.prineside.tdi2.Buff
    public BonusCoinsBuff cpy(float f) {
        BonusCoinsBuff obtain = Game.f8589i.buffManager.f9699F.BONUS_COINS.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        if (f2 > f3) {
            f2 = f3;
        }
        obtain.setup(f2, f3, this.bonusCoinsMultiplier, this.issuer);
        return obtain;
    }

    public void setup(float f, float f2, float f3, Tower tower) {
        super.setup(f, f2);
        this.bonusCoinsMultiplier = f3;
        this.issuer = tower;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.bonusCoinsMultiplier = input.readFloat();
        this.issuer = (Tower) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.bonusCoinsMultiplier);
        kryo.writeClassAndObject(output, this.issuer);
    }
}
