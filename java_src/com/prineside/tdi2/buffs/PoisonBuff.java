package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.processors.PoisonBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class PoisonBuff extends Buff {
    public Ability fromAbility;
    public float hitDamage;
    public float poisonDamage;
    public Tower tower;

    /* loaded from: classes2.dex */
    public static class PoisonBuffFactory extends Buff.Factory<PoisonBuff> {

        /* renamed from: b */
        public TextureRegion f9118b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public PoisonBuff mo21833a() {
            return new PoisonBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<PoisonBuff> createProcessor() {
            return new PoisonBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9118b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9118b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-poison");
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

    public PoisonBuff() {
        super(BuffType.POISON);
    }

    @Override // com.prineside.tdi2.Buff
    public PoisonBuff cpy(float f) {
        PoisonBuff obtain = Game.f8589i.buffManager.f9699F.POISON.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        obtain.setup(this.tower, f2 > f3 ? f3 : f2, f3, this.hitDamage, this.poisonDamage, this.fromAbility);
        return obtain;
    }

    public void setup(Tower tower, float f, float f2, float f3, float f4, Ability ability) {
        super.setup(f, f2);
        this.tower = tower;
        this.hitDamage = f3;
        this.poisonDamage = f4;
        this.fromAbility = ability;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.tower = (Tower) kryo.readClassAndObject(input);
        this.hitDamage = input.readFloat();
        this.poisonDamage = input.readFloat();
        this.fromAbility = (Ability) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.tower);
        output.writeFloat(this.hitDamage);
        output.writeFloat(this.poisonDamage);
        kryo.writeClassAndObject(output, this.fromAbility);
    }
}
