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
import com.prineside.tdi2.buffs.processors.BurnBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BurnBuff extends Buff {
    public float fireDamage;
    public Ability fromAbility;
    public Tower tower;

    /* loaded from: classes2.dex */
    public static class BurnBuffFactory extends Buff.Factory<BurnBuff> {

        /* renamed from: b */
        public TextureRegion f9114b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public BurnBuff mo21833a() {
            return new BurnBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<BurnBuff> createProcessor() {
            return new BurnBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return false;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9114b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9114b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-burn");
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

    public BurnBuff() {
        super(BuffType.BURN);
    }

    @Override // com.prineside.tdi2.Buff
    public BurnBuff cpy(float f) {
        BurnBuff obtain = Game.f8589i.buffManager.f9699F.BURN.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        obtain.setup(this.tower, f2 > f3 ? f3 : f2, f3, this.fireDamage, this.fromAbility);
        return obtain;
    }

    public void setup(Tower tower, float f, float f2, float f3, Ability ability) {
        super.setup(f, f2);
        this.tower = tower;
        this.fireDamage = f3;
        this.fromAbility = ability;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.tower = (Tower) kryo.readClassAndObject(input);
        this.fireDamage = input.readFloat();
        this.fromAbility = (Ability) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.tower);
        output.writeFloat(this.fireDamage);
        kryo.writeClassAndObject(output, this.fromAbility);
    }
}
