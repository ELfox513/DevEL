package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.processors.ChainReactionBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ChainReactionBuff extends Buff {
    public float chance;
    public float durationMultiplier;
    public float rangeInTiles;

    /* loaded from: classes2.dex */
    public static class ChainReactionBuffFactory extends Buff.Factory<ChainReactionBuff> {

        /* renamed from: b */
        public TextureRegion f9115b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public ChainReactionBuff mo21833a() {
            return new ChainReactionBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<ChainReactionBuff> createProcessor() {
            return new ChainReactionBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return false;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9115b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9115b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-chain-reaction");
        }
    }

    public ChainReactionBuff() {
        super(BuffType.CHAIN_REACTION);
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
    }

    @Override // com.prineside.tdi2.Buff
    @Deprecated
    public void setup(float f, float f2) {
        throw new IllegalStateException("Use other constructor");
    }

    @Override // com.prineside.tdi2.Buff
    public ChainReactionBuff cpy(float f) {
        ChainReactionBuff obtain = Game.f8589i.buffManager.f9699F.CHAIN_REACTION.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        obtain.setup(f2 > f3 ? f3 : f2, f3, this.chance, this.rangeInTiles, f);
        return obtain;
    }

    public void setup(float f, float f2, float f3, float f4, float f5) {
        super.setup(f, f2);
        this.chance = f3;
        this.rangeInTiles = f4;
        this.durationMultiplier = f5;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.rangeInTiles = input.readFloat();
        this.chance = input.readFloat();
        this.durationMultiplier = input.readFloat();
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.rangeInTiles);
        output.writeFloat(this.chance);
        output.writeFloat(this.durationMultiplier);
    }
}
