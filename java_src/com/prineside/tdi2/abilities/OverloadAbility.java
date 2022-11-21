package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueConfig;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.p036ui.actors.ParticlesCanvas;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
@REGS
/* loaded from: classes2.dex */
public class OverloadAbility extends Ability {

    /* renamed from: w */
    public static final int[] f9026w = {150, 250, 350, 500, 750, 1200, 1600, 2200, 3400, 5000, 10000};

    /* renamed from: x */
    public static final int[][] f9027x = {new int[]{15, 40, 100, 0, 0, 0, 0, 0, 0, 0, HttpStatus.SC_OK}, new int[]{0, 0, 20, 50, 120, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 30, 80, 150, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 20, 60, 130, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 40, 110, HttpStatus.SC_OK}};

    /* renamed from: y */
    public static final StringBuilder f9028y = new StringBuilder();

    /* renamed from: b */
    public float f9029b;

    /* renamed from: d */
    public int f9030d;
    public GameValueConfig enemiesSpeedGV;
    @NAGS

    /* renamed from: k */
    public ParticlesCanvas.ParticleConfig f9031k;
    @NAGS

    /* renamed from: p */
    public Group f9032p;
    @NAGS

    /* renamed from: q */
    public Label f9033q;
    @NAGS

    /* renamed from: r */
    public Label f9034r;

    /* renamed from: s */
    public GameValueConfig f9035s;

    /* renamed from: t */
    public GameValueConfig f9036t;

    /* renamed from: u */
    public GameValueConfig f9037u;

    /* renamed from: v */
    public boolean f9038v;

    /* loaded from: classes2.dex */
    public static class OverloadAbilityFactory extends Ability.Factory<OverloadAbility> {

        /* renamed from: c */
        public ParticleEffectPool f9039c;

        public OverloadAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.DEEP_ORANGE.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.DEEP_ORANGE.P800;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-overload");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return OverloadAbility.f9026w[StrictMath.min(i, OverloadAbility.f9026w.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return OverloadAbility.f9027x[resourceType.ordinal()][StrictMath.min(i, OverloadAbility.f9027x[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public OverloadAbility create() {
            return new OverloadAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            float floatValue = gameValueProvider.getFloatValue(GameValueType.ABILITY_OVERLOAD_BONUS);
            float floatValue2 = gameValueProvider.getFloatValue(GameValueType.ABILITY_OVERLOAD_DIFFICULTY);
            float floatValue3 = gameValueProvider.getFloatValue(GameValueType.ABILITY_OVERLOAD_DURATION);
            float percentValueAsMultiplier = (float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_OVERLOAD_MINING_SPEED);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_OVERLOAD", StringFormatter.compactNumber(floatValue2, 1, true).toString(), StringFormatter.compactNumber(floatValue3, 1, true).toString(), StringFormatter.compactNumber(floatValue, 1, true).toString());
            String format2 = Game.f8589i.localeManager.i18n.format("ability_mining_speed_bonus", StringFormatter.compactNumber((percentValueAsMultiplier - 1.0f) * 100.0f, 1, true).toString());
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/fire-2.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9039c = new ParticleEffectPool(particleEffect, 1, 16);
        }
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f9038v || this.f9029b <= 0.0f;
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        this.f9029b -= f;
    }

    public OverloadAbility() {
        super(AbilityType.OVERLOAD);
        this.f9035s = new GameValueConfig(GameValueType.ENEMIES_VULNERABILITY, 0.0d, false, true);
        this.enemiesSpeedGV = new GameValueConfig(GameValueType.ENEMIES_SPEED, 0.0d, false, true);
        this.f9036t = new GameValueConfig(GameValueType.MINERS_SPEED, 0.0d, false, true);
        this.f9037u = new GameValueConfig(GameValueType.SCORE, 0.0d, false, true);
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
        if (this.f9033q == null) {
            m21854f();
        }
        StringBuilder stringBuilder = f9028y;
        stringBuilder.setLength(0);
        stringBuilder.append(MathUtils.ceil(this.f9029b)).append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
        this.f9033q.setText(stringBuilder.toString());
    }

    /* renamed from: e */
    public final void m21855e() {
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_OVERLOAD_BONUS);
        float floatValue2 = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_OVERLOAD_DIFFICULTY);
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_OVERLOAD_MINING_SPEED);
        int i = this.f9030d;
        if (i > 1) {
            floatValue = (((float) StrictMath.pow((floatValue * 0.01f) + 1.0f, i)) - 1.0f) * 100.0f;
            floatValue2 = (((float) StrictMath.pow((floatValue2 * 0.01f) + 1.0f, this.f9030d)) - 1.0f) * 100.0f;
            percentValueAsMultiplier = (float) StrictMath.pow(percentValueAsMultiplier, this.f9030d);
        }
        this.f9036t.value = (percentValueAsMultiplier - 1.0f) * 100.0f;
        this.f9037u.value = floatValue;
        this.enemiesSpeedGV.value = floatValue2;
        this.f9035s.value = ((100.0f / (floatValue2 + 100.0f)) - 1.0f) * 100.0f;
        this.f8844S.gameValue.recalculate();
        m21854f();
    }

    /* renamed from: f */
    public final void m21854f() {
        if (this.f8844S._graphics == null) {
            return;
        }
        if (this.f9031k == null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            m21856d();
        }
        ParticlesCanvas.ParticleConfig particleConfig = this.f9031k;
        if (particleConfig != null) {
            Array.ArrayIterator<ParticleEmitter> it = particleConfig.effect.getEmitters().iterator();
            while (it.hasNext()) {
                ParticleEmitter next = it.next();
                ParticleEmitter.ScaledNumericValue emission = next.getEmission();
                int i = this.f9030d;
                emission.setHigh(i * 18.0f, i * 25.0f);
                ParticleEmitter.ScaledNumericValue life = next.getLife();
                int i2 = this.f9030d;
                life.setHigh((i2 * 100.0f) + 500.0f, (i2 * 300.0f) + 3000.0f);
            }
        }
        if (this.f9032p == null) {
            Group group = new Group();
            this.f9032p = group;
            group.setTransform(false);
            this.f9032p.setSize(128.0f, 64.0f);
            this.f9032p.setPosition((Game.f8589i.uiManager.viewport.getWorldWidth() * 0.5f) - 64.0f, 40.0f);
            this.f8844S._graphics.mainUi.customElementsContainer.addActor(this.f9032p);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-overload"));
            image.setSize(64.0f, 64.0f);
            image.setPosition(8.0f, 0.0f);
            Color color = MaterialColor.DEEP_ORANGE.P500;
            image.setColor(color);
            this.f9032p.addActor(image);
            Label label = new Label("asd", Game.f8589i.assetManager.getLabelStyle(21));
            this.f9033q = label;
            label.setSize(50.0f, 16.0f);
            this.f9033q.setPosition(82.0f, 5.0f);
            this.f9033q.setColor(color);
            this.f9032p.addActor(this.f9033q);
            Label label2 = new Label("x" + this.f9030d, Game.f8589i.assetManager.getLabelStyle(24));
            this.f9034r = label2;
            label2.setSize(50.0f, 22.0f);
            this.f9034r.setPosition(82.0f, 31.0f);
            this.f9034r.setColor(color);
            this.f9032p.addActor(this.f9034r);
        }
        Label label3 = this.f9034r;
        label3.setText("x" + this.f9030d);
    }

    @Override // com.prineside.tdi2.Ability
    public void onDone() {
        Logger.log("OverloadAbility", "onDone");
        this.f8844S.gameValue.removeCustomGameValue(this.f9035s);
        this.f8844S.gameValue.removeCustomGameValue(this.enemiesSpeedGV);
        this.f8844S.gameValue.removeCustomGameValue(this.f9036t);
        this.f8844S.gameValue.removeCustomGameValue(this.f9037u);
        this.f8844S.gameValue.recalculate();
        if (this.f9031k != null) {
            Logger.log("OverloadAbility", "onDone - remove particles");
            this.f9031k.effect.allowCompletion();
            this.f9031k = null;
        }
        Group group = this.f9032p;
        if (group != null) {
            group.remove();
            this.f9032p = null;
        }
        this.f9033q = null;
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9029b = input.readFloat();
        this.f9030d = input.readVarInt(true);
        this.f9035s = (GameValueConfig) kryo.readObject(input, GameValueConfig.class);
        this.enemiesSpeedGV = (GameValueConfig) kryo.readObject(input, GameValueConfig.class);
        this.f9036t = (GameValueConfig) kryo.readObject(input, GameValueConfig.class);
        this.f9037u = (GameValueConfig) kryo.readObject(input, GameValueConfig.class);
        this.f9038v = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_OVERLOAD_DURATION);
        int i3 = 0;
        while (true) {
            GameSystemProvider gameSystemProvider = this.f8844S;
            DelayedRemovalArray<Ability> delayedRemovalArray = gameSystemProvider.ability.activeAbilities;
            if (i3 < delayedRemovalArray.size) {
                Ability ability = delayedRemovalArray.items[i3];
                if (ability.type == AbilityType.OVERLOAD) {
                    OverloadAbility overloadAbility = (OverloadAbility) ability;
                    overloadAbility.f9029b += floatValue;
                    overloadAbility.f9030d++;
                    overloadAbility.m21855e();
                    this.f9038v = true;
                    return;
                }
                i3++;
            } else {
                this.f9029b = floatValue;
                this.f9030d = 1;
                gameSystemProvider.gameValue.addCustomGameValue(this.f9035s);
                this.f8844S.gameValue.addCustomGameValue(this.enemiesSpeedGV);
                this.f8844S.gameValue.addCustomGameValue(this.f9036t);
                this.f8844S.gameValue.addCustomGameValue(this.f9037u);
                m21855e();
                m21854f();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void startEffects() {
        m22215a(1.5f);
        if (this.f8844S._graphics != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            m21856d();
        }
    }

    /* renamed from: d */
    public final void m21856d() {
        if (!isDone() && this.f9031k == null) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.abilityManager.f9538F.OVERLOAD.f9039c.obtain();
            Array.ArrayIterator<ParticleEmitter> it = obtain.getEmitters().iterator();
            while (it.hasNext()) {
                ParticleEmitter.ScaledNumericValue emission = it.next().getEmission();
                int i = this.f9030d;
                emission.setHigh(i * 18.0f, i * 25.0f);
            }
            obtain.scaleEffect(0.75f);
            this.f9031k = this.f8844S._graphics.mainUi.particlesCanvas.addParticle(obtain, Game.f8589i.uiManager.viewport.getWorldWidth() * 0.5f, -64.0f);
            Logger.log("OverloadAbility", "initSparks");
        }
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f9029b);
        output.writeVarInt(this.f9030d, true);
        kryo.writeObject(output, this.f9035s);
        kryo.writeObject(output, this.enemiesSpeedGV);
        kryo.writeObject(output, this.f9036t);
        kryo.writeObject(output, this.f9037u);
        output.writeBoolean(this.f9038v);
    }
}
