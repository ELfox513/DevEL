package com.prineside.tdi2.modifiers;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import java.util.Comparator;
@REGS
/* loaded from: classes2.dex */
public class PowerModifier extends Modifier {

    /* renamed from: q */
    public static final Comparator<Tower> f10377q = new Comparator<Tower>() { // from class: com.prineside.tdi2.modifiers.PowerModifier.1
        @Override // java.util.Comparator
        public int compare(Tower tower, Tower tower2) {
            return Float.compare(tower2.experience, tower.experience);
        }
    };

    /* renamed from: p */
    public float f10378p;

    /* loaded from: classes2.dex */
    public static class PowerModifierFactory extends Modifier.Factory<PowerModifier> {

        /* renamed from: c */
        public TextureRegion f10379c;

        /* renamed from: d */
        public TextureRegion f10380d;

        public PowerModifierFactory() {
            super(ModifierType.POWER, MaterialColor.PINK.P500, "icon-power");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public TextureRegion getBaseTexture() {
            return this.f10379c;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider, int i) {
            return m21923a((int) (((float) StrictMath.pow(1.5d, i)) * 100.0f));
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public PowerModifier create() {
            return new PowerModifier();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.format("modifier_description_POWER", Float.valueOf(MathUtils.round((float) (gameValueProvider.getPercentValueAsMultiplier(GameValueType.MODIFIER_POWER_VALUE) * 1000.0d)) * 0.1f));
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public void setupAssets() {
            this.f10379c = Game.f8589i.assetManager.getTextureRegion("modifier-base-power");
            this.f10380d = Game.f8589i.assetManager.getTextureRegion("xp-orb");
        }
    }

    public PowerModifier() {
        super(ModifierType.POWER);
    }

    @Override // com.prineside.tdi2.Modifier, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10378p = input.readFloat();
    }

    @Override // com.prineside.tdi2.Modifier
    public void update(float f) {
        super.update(f);
        float f2 = this.f10378p + f;
        this.f10378p = f2;
        if (f2 >= 1.0f) {
            this.f10378p = f2 - 1.0f;
            DelayedRemovalArray<Tower> delayedRemovalArray = this.f8771b;
            float f3 = delayedRemovalArray.size;
            delayedRemovalArray.sort(f10377q);
            int i = 0;
            while (true) {
                DelayedRemovalArray<Tower> delayedRemovalArray2 = this.f8771b;
                if (i < delayedRemovalArray2.size) {
                    Tower tower = delayedRemovalArray2.get(i);
                    float min = StrictMath.min(f3, tower.currentLevelExperience);
                    if (min != 0.0f) {
                        f3 -= min;
                        this.f8844S.tower.removeExperienceRaw(tower, min);
                        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                            for (int i2 = 0; i2 < min; i2++) {
                                this.f8844S._particle.addOrbParticle(Game.f8589i.modifierManager.f9900F.POWER.f10380d, 12.0f, tower.getTile().getX(), tower.getTile().getY(), getTile().getX(), getTile().getY());
                            }
                        }
                        if (f3 == 0.0f) {
                            return;
                        }
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Modifier, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f10378p);
    }
}
