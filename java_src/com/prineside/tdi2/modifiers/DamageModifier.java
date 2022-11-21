package com.prineside.tdi2.modifiers;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class DamageModifier extends Modifier {

    /* loaded from: classes2.dex */
    public static class DamageModifierFactory extends Modifier.Factory<DamageModifier> {

        /* renamed from: c */
        public TextureRegion f10368c;

        public DamageModifierFactory() {
            super(ModifierType.DAMAGE, MaterialColor.RED.P500, "icon-damage");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public TextureRegion getBaseTexture() {
            return this.f10368c;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider, int i) {
            return m21923a((int) (((float) StrictMath.pow(1.5d, i)) * 100.0f));
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public void setupAssets() {
            this.f10368c = Game.f8589i.assetManager.getTextureRegion("modifier-base-damage");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public DamageModifier create() {
            return new DamageModifier();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.format("modifier_description_DAMAGE", Float.valueOf(MathUtils.round((float) (gameValueProvider.getPercentValueAsMultiplier(GameValueType.MODIFIER_DAMAGE_VALUE) * 1000.0d)) * 0.1f));
        }
    }

    public DamageModifier() {
        super(ModifierType.DAMAGE);
    }
}
