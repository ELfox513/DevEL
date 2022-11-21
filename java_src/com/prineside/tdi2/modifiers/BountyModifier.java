package com.prineside.tdi2.modifiers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ModifierProcessor;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.modifiers.processors.BountyModifierProcessor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BountyModifier extends Modifier {
    public static final float BOUNTY_AMOUNT = 0.02f;

    /* renamed from: p */
    public static final StringBuilder f10366p = new StringBuilder();
    public int coinsGained;

    /* loaded from: classes2.dex */
    public static class BountyModifierFactory extends Modifier.Factory<BountyModifier> {

        /* renamed from: c */
        public TextureRegion f10367c;

        public BountyModifierFactory() {
            super(ModifierType.BOUNTY, MaterialColor.AMBER.P500, "icon-coin");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public boolean canBePlacedNear(ModifierType modifierType) {
            return modifierType != ModifierType.BOUNTY;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public ModifierProcessor createProcessor() {
            return new BountyModifierProcessor();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public TextureRegion getBaseTexture() {
            return this.f10367c;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public void setupAssets() {
            this.f10367c = Game.f8589i.assetManager.getTextureRegion("modifier-base-bounty");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public BountyModifier create() {
            return new BountyModifier();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider, int i) {
            int i2 = gameSystemProvider.gameState.averageDifficulty;
            float f = 1.0f;
            if (i2 > 100) {
                f = 1.0f + ((i2 - 100) * 0.01f * 0.5f);
            }
            return m21923a((int) (((float) StrictMath.pow(1.600000023841858d, i * 1.15f)) * 180.0f * f));
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.format("modifier_description_BOUNTY", Float.valueOf(MathUtils.round(20.0f) * 0.1f), Integer.valueOf(gameValueProvider.getIntValue(GameValueType.MODIFIER_BOUNTY_VALUE)));
        }
    }

    public BountyModifier() {
        super(ModifierType.BOUNTY);
    }

    @Override // com.prineside.tdi2.Modifier
    public void fillModifierMenu(Group group, ObjectMap<String, Object> objectMap) {
        int scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        if (objectMap.size == 0 || !objectMap.get("state", -1).equals(1)) {
            Logger.log("BountyModifier", "recreate custom menu");
            group.clear();
            Group group2 = new Group();
            group2.setTransform(false);
            float f = scaledViewportHeight + 606.0f;
            group2.setPosition(0.0f, f);
            group2.setSize(600.0f, 48.0f);
            group.addActor(group2);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setSize(600.0f, 48.0f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            group2.addActor(image);
            String str = Game.f8589i.localeManager.i18n.get("statistics_CG_PG");
            ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
            Color color = Color.WHITE;
            Label label = new Label(str, new Label.LabelStyle(font, color));
            label.setSize(100.0f, 48.0f);
            label.setPosition(40.0f, 0.0f);
            group2.addActor(label);
            Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color));
            label2.setSize(100.0f, 48.0f);
            label2.setPosition(460.0f, 0.0f);
            label2.setAlignment(16);
            group2.addActor(label2);
            Group group3 = new Group();
            group3.setTransform(false);
            group3.setPosition(0.0f, (f - 48.0f) - 4.0f);
            group3.setSize(600.0f, 48.0f);
            group.addActor(group3);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image2.setSize(600.0f, 48.0f);
            image2.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            group3.addActor(image2);
            Label label3 = new Label(Game.f8589i.localeManager.i18n.get("efficiency"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
            label3.setSize(100.0f, 48.0f);
            label3.setPosition(40.0f, 0.0f);
            group3.addActor(label3);
            Label label4 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color));
            label4.setSize(100.0f, 48.0f);
            label4.setPosition(460.0f, 0.0f);
            label4.setAlignment(16);
            group3.addActor(label4);
            objectMap.put("bonusCoinsLabel", label2);
            objectMap.put("efficiencyLabel", label4);
            objectMap.put("state", 1);
        }
        Label label5 = (Label) objectMap.get("efficiencyLabel");
        ((Label) objectMap.get("bonusCoinsLabel")).setText(this.coinsGained);
        int ceil = MathUtils.ceil(this.f8844S.gameValue.getIntValue(GameValueType.MODIFIER_BOUNTY_VALUE) / 0.02f);
        int money = this.f8844S.gameState.getMoney();
        int floor = MathUtils.floor((money / ceil) * 100.0f);
        if (money >= ceil) {
            floor = 100;
        }
        StringBuilder stringBuilder = f10366p;
        stringBuilder.setLength(0);
        stringBuilder.append(money).append(" / ").append(ceil).append(" = ").append(floor).append("%");
        label5.setText(stringBuilder);
    }

    @Override // com.prineside.tdi2.Modifier, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.coinsGained = input.readVarInt(true);
    }

    @Override // com.prineside.tdi2.Modifier, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.coinsGained, true);
    }
}
