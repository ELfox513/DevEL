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
public class AttackSpeedModifier extends Modifier {

    /* loaded from: classes2.dex */
    public static class AttackSpeedModifierFactory extends Modifier.Factory<AttackSpeedModifier> {

        /* renamed from: c */
        public TextureRegion f10354c;

        public AttackSpeedModifierFactory() {
            super(ModifierType.ATTACK_SPEED, MaterialColor.AMBER.P500, "icon-attack-speed");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public TextureRegion getBaseTexture() {
            return this.f10354c;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider, int i) {
            return m21923a((int) (((float) StrictMath.pow(1.5d, i)) * 100.0f));
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public void setupAssets() {
            this.f10354c = Game.f8589i.assetManager.getTextureRegion("modifier-base-attack-speed");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public AttackSpeedModifier create() {
            return new AttackSpeedModifier();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.format("modifier_description_ATTACK_SPEED", Float.valueOf(MathUtils.round((float) (gameValueProvider.getPercentValueAsMultiplier(GameValueType.MODIFIER_ATTACK_SPEED_VALUE) * 1000.0d)) * 0.1f));
        }
    }

    public AttackSpeedModifier() {
        super(ModifierType.ATTACK_SPEED);
    }
}
