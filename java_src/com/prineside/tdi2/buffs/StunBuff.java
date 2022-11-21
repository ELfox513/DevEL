package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.processors.StunBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class StunBuff extends Buff {
    public boolean copyDisabled;
    public int issuerId;

    /* loaded from: classes2.dex */
    public static class StunBuffFactory extends Buff.Factory<StunBuff> {

        /* renamed from: b */
        public TextureRegion f9121b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public StunBuff mo21833a() {
            return new StunBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<StunBuff> createProcessor() {
            return new StunBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return false;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9121b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9121b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-stun");
        }
    }

    public StunBuff() {
        super(BuffType.STUN);
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
    }

    public void setup(float f, float f2, int i) {
        super.setup(f, f2);
        this.issuerId = i;
        this.copyDisabled = false;
    }

    @Override // com.prineside.tdi2.Buff
    public StunBuff cpy(float f) {
        if (this.copyDisabled) {
            return null;
        }
        StunBuff obtain = Game.f8589i.buffManager.f9699F.STUN.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        if (f2 > f3) {
            f2 = f3;
        }
        obtain.setup(f2, f3, this.issuerId);
        return obtain;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.issuerId = input.readVarInt(true);
        this.copyDisabled = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.issuerId, true);
        output.writeBoolean(this.copyDisabled);
    }

    @Override // com.prineside.tdi2.Buff
    @Deprecated
    public void setup(float f, float f2) {
        throw new IllegalStateException("Use other constructor");
    }
}
