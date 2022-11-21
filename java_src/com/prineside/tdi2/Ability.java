package com.prineside.tdi2;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Ability extends Registrable {

    /* renamed from: a */
    public float f8398a = 1.0f;
    public AbilityType type;

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Ability> {

        /* renamed from: a */
        public String f8399a;
        public final AbilityType abilityType;

        /* renamed from: b */
        public String f8400b;

        public void clearPool() {
        }

        public abstract T create();

        public abstract Color getColor();

        public abstract Color getDarkerColor();

        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.get(this.f8400b);
        }

        public abstract TextureRegionDrawable getIconDrawable();

        public int getPriceInGreenPapers(int i) {
            return 0;
        }

        public int getPriceInResources(ResourceType resourceType, int i) {
            return 0;
        }

        public CharSequence getTitle() {
            return Game.f8589i.localeManager.i18n.get(this.f8399a);
        }

        public abstract boolean requiresMapPointing();

        public void setupAssets() {
        }

        public void setup() {
            if (Game.f8589i.assetManager != null) {
                setupAssets();
            }
        }

        public Factory(AbilityType abilityType) {
            this.abilityType = abilityType;
            this.f8399a = "ability_name_" + abilityType.name();
            this.f8400b = "ability_description_" + abilityType.name();
        }
    }

    public abstract void draw(SpriteBatch spriteBatch, float f);

    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
    }

    public final float getKilledEnemiesCoinMultiplier() {
        return this.f8398a;
    }

    public abstract boolean isDone();

    public void onDone() {
    }

    public abstract void start(int i, int i2);

    public void startEffects() {
        m22215a(1.5f);
    }

    public abstract void update(float f);

    /* renamed from: a */
    public void m22215a(float f) {
        GameSystemProvider gameSystemProvider = this.f8844S;
        if (gameSystemProvider._graphics != null && !gameSystemProvider.gameState.isFastForwarding()) {
            Color cpy = Game.f8589i.abilityManager.getFactory(this.type).getColor().cpy();
            cpy.f3889a = 0.56f;
            this.f8844S._graphics.screenBorderGradient.flash(cpy, f);
        }
    }

    public Ability(AbilityType abilityType) {
        this.type = abilityType;
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.type = (AbilityType) kryo.readObjectOrNull(input, AbilityType.class);
        this.f8398a = input.readFloat();
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.type, AbilityType.class);
        output.writeFloat(this.f8398a);
    }
}
