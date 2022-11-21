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
public class SearchModifier extends Modifier {

    /* loaded from: classes2.dex */
    public static class SearchModifierFactory extends Modifier.Factory<SearchModifier> {

        /* renamed from: c */
        public TextureRegion f10381c;

        public SearchModifierFactory() {
            super(ModifierType.SEARCH, MaterialColor.BLUE.P500, "icon-eye");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public TextureRegion getBaseTexture() {
            return this.f10381c;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider, int i) {
            return m21923a((int) (((float) StrictMath.pow(1.399999976158142d, i)) * 50.0f));
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public void setupAssets() {
            this.f10381c = Game.f8589i.assetManager.getTextureRegion("modifier-base-search");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public SearchModifier create() {
            return new SearchModifier();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.format("modifier_description_SEARCH", Float.valueOf(MathUtils.round((float) (gameValueProvider.getPercentValueAsMultiplier(GameValueType.MODIFIER_SEARCH_RANGE_VALUE) * 1000.0d)) * 0.1f));
        }
    }

    public SearchModifier() {
        super(ModifierType.SEARCH);
    }
}
