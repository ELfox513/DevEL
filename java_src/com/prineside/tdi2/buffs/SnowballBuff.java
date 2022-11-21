package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.processors.SnowballBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class SnowballBuff extends Buff {
    public float timePassed;

    /* loaded from: classes2.dex */
    public static class SnowballBuffFactory extends Buff.Factory<SnowballBuff> {

        /* renamed from: b */
        public TextureRegion f9120b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public SnowballBuff mo21833a() {
            return new SnowballBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<SnowballBuff> createProcessor() {
            return new SnowballBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return false;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9120b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9120b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-snowball");
        }
    }

    public SnowballBuff() {
        super(BuffType.SNOWBALL);
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.timePassed = 0.0f;
    }

    @Override // com.prineside.tdi2.Buff
    public SnowballBuff cpy(float f) {
        SnowballBuff obtain = Game.f8589i.buffManager.f9699F.SNOWBALL.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        if (f2 > f3) {
            f2 = f3;
        }
        obtain.setup(f2, f3);
        return obtain;
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.timePassed = input.readFloat();
    }

    @Override // com.prineside.tdi2.Buff, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.timePassed);
    }
}
