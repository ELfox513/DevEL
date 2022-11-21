package com.prineside.tdi2.buffs;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.processors.ArmorBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ArmorBuff extends Buff {

    /* loaded from: classes2.dex */
    public static class ArmorBuffFactory extends Buff.Factory<ArmorBuff> {

        /* renamed from: b */
        public TextureRegion f9110b;

        @Override // com.prineside.tdi2.Buff.Factory
        /* renamed from: b */
        public ArmorBuff mo21833a() {
            return new ArmorBuff();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public BuffProcessor<ArmorBuff> createProcessor() {
            return new ArmorBuffProcessor();
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public boolean effectIsCumulative() {
            return false;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public TextureRegion getHealthBarIcon() {
            return this.f9110b;
        }

        @Override // com.prineside.tdi2.Buff.Factory
        public void setupAssets() {
            this.f9110b = Game.f8589i.assetManager.getTextureRegion("buff-health-bar-icon-armor");
        }
    }

    public ArmorBuff() {
        super(BuffType.ARMOR);
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
    }

    @Override // com.prineside.tdi2.Buff
    public ArmorBuff cpy(float f) {
        ArmorBuff obtain = Game.f8589i.buffManager.f9699F.ARMOR.obtain();
        float f2 = this.duration * f;
        float f3 = this.maxDuration;
        if (f2 > f3) {
            f2 = f3;
        }
        obtain.setup(f2, f3);
        return obtain;
    }
}
