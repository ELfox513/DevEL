package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.processors.FreezingBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class FreezingBuff extends Buff {
    public boolean copyDisabled;
    public float lightningLengthBonus;
    public float maxPercent;
    public float poisonDurationBonus;
    public float speed;
    public Tower tower;

    /* loaded from: classes2.dex */
    public static class FreezingBuffFactory extends Buff.Factory<FreezingBuff> {

        /* renamed from: b */
        public TextureRegion f9117b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public FreezingBuff mo21833a() {
            return new FreezingBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<FreezingBuff> createProcessor() {
            return new FreezingBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9117b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9117b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-freezing");
        }
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.tower = null;
    }

    @Override // com.prineside.tdi2.Buff
    @Deprecated
    public void setup(float f, float f2) {
        throw new IllegalStateException("Use other constructor");
    }

    public FreezingBuff() {
        super(BuffType.FREEZING);
    }

    @Override // com.prineside.tdi2.Buff
    public FreezingBuff cpy(float f) {
        if (this.copyDisabled) {
            return null;
        }
        FreezingBuff obtain = Game.f8589i.buffManager.f9699F.FREEZING.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        obtain.setup(this.tower, this.speed, this.maxPercent, f2 > f3 ? f3 : f2, f3, this.poisonDurationBonus, this.lightningLengthBonus);
        return obtain;
    }

    public void setup(Tower tower, float f, float f2, float f3, float f4, float f5, float f6) {
        super.setup(f3, f4);
        this.tower = tower;
        this.speed = f;
        this.maxPercent = f2;
        this.poisonDurationBonus = f5;
        this.lightningLengthBonus = f6;
        this.copyDisabled = false;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.speed = input.readFloat();
        this.maxPercent = input.readFloat();
        this.poisonDurationBonus = input.readFloat();
        this.lightningLengthBonus = input.readFloat();
        this.tower = (Tower) kryo.readClassAndObject(input);
        this.copyDisabled = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.speed);
        output.writeFloat(this.maxPercent);
        output.writeFloat(this.poisonDurationBonus);
        output.writeFloat(this.lightningLengthBonus);
        kryo.writeClassAndObject(output, this.tower);
        output.writeBoolean(this.copyDisabled);
    }
}
