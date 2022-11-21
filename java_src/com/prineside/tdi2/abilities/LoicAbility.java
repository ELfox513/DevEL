package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.managers.ShapeManager;
import com.prineside.tdi2.shapes.MultiLine;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class LoicAbility extends Ability {

    /* renamed from: u */
    public static final int[] f8996u = {100, 125, 170, 250, 350, 475, 600, 725, 850, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 1200};

    /* renamed from: v */
    public static final int[][] f8997v = {new int[]{7, 15, 35, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 7, 15, 35, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 12, 25, 45, 0, 0, 0, HttpStatus.SC_OK}, new int[]{0, 0, 0, 0, 0, 0, 15, 45, 60, 0, 150}, new int[]{0, 0, 0, 0, 0, 0, 0, 15, 30, 80, 0}};

    /* renamed from: w */
    public static final Color f8998w = new Color();

    /* renamed from: b */
    public float f8999b;

    /* renamed from: d */
    public float f9000d;

    /* renamed from: k */
    public int f9001k;
    @NAGS

    /* renamed from: p */
    public float f9002p;

    /* renamed from: q */
    public float f9003q;

    /* renamed from: r */
    public Rectangle f9004r;
    @NAGS

    /* renamed from: s */
    public MultiLine f9005s;
    @NAGS

    /* renamed from: t */
    public ParticleEffectPool.PooledEffect f9006t;

    /* loaded from: classes2.dex */
    public static class LoicAbilityFactory extends Ability.Factory<LoicAbility> {

        /* renamed from: c */
        public TextureRegion f9007c;

        /* renamed from: d */
        public ParticleEffectPool f9008d;

        public LoicAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.CYAN.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.CYAN.P800;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-loic");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return LoicAbility.f8996u[StrictMath.min(i, LoicAbility.f8996u.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return LoicAbility.f8997v[resourceType.ordinal()][StrictMath.min(i, LoicAbility.f8997v[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public LoicAbility create() {
            return new LoicAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            float floatValue = gameValueProvider.getFloatValue(GameValueType.ABILITY_LOIC_DURATION);
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_LOIC_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_LOIC", Float.valueOf(MathUtils.round(((float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_LOIC_DAMAGE)) * 1000.0f) / 10.0f), Float.valueOf(floatValue));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_coins_for_killed_enemies", Integer.valueOf(round));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            this.f9007c = Game.f8589i.assetManager.getTextureRegion("laser-wide");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/loic.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9008d = new ParticleEffectPool(particleEffect, 1, 16);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f9008d;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f9003q >= this.f9000d;
    }

    public LoicAbility() {
        super(AbilityType.LOIC);
        this.f9002p = -1.0f;
        this.f9003q = 0.0f;
        this.f9004r = new Rectangle();
    }

    /* renamed from: d */
    public final void m21869d() {
        float f;
        float f2;
        float f3 = this.f9003q;
        if (f3 < 0.3f) {
            f2 = f3 / 0.3f;
        } else {
            float f4 = this.f9000d;
            if (f4 - f3 < 0.3f) {
                f2 = (f4 - f3) / 0.3f;
                ParticleEffectPool.PooledEffect pooledEffect = this.f9006t;
                if (pooledEffect != null) {
                    pooledEffect.allowCompletion();
                    this.f9006t = null;
                }
            } else {
                double sin = PMath.sin(((this.f9003q - 0.3f) / ((f4 - 0.6f) / MathUtils.floor(f / 0.5f))) * 3.1415927f) * 0.1f * 0.5f;
                Double.isNaN(sin);
                f2 = (float) (sin + 0.9499999992549419d);
            }
        }
        float f5 = 128.0f * f2;
        if (f5 == this.f9002p) {
            return;
        }
        this.f9002p = f5;
        Color color = f8998w;
        color.set(MaterialColor.CYAN.P200);
        this.f9005s.reset();
        this.f9005s.setTextureRegion(Game.f8589i.abilityManager.f9538F.LOIC.f9007c, false, false);
        int ceil = MathUtils.ceil((this.f8844S.map.getMap().heightPixels / Game.f8589i.abilityManager.f9538F.LOIC.f9007c.getRegionWidth()) + 2.0f);
        color.f3889a = 0.0f;
        float regionWidth = this.f8844S.map.getMap().heightPixels + Game.f8589i.abilityManager.f9538F.LOIC.f9007c.getRegionWidth();
        this.f9005s.appendNode(this.f9001k, regionWidth, f5, color.toFloatBits(), false);
        for (int i = 0; i < ceil; i++) {
            Color color2 = f8998w;
            color2.f3889a = f2;
            if (i == ceil - 1) {
                color2.f3889a = 0.0f;
            }
            regionWidth -= Game.f8589i.abilityManager.f9538F.LOIC.f9007c.getRegionWidth();
            this.f9005s.appendNode(this.f9001k, regionWidth, f5, color2.toFloatBits(), false);
        }
        this.f9005s.updateAllNodes();
    }

    @Override // com.prineside.tdi2.Ability
    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        if (this.f9005s == null) {
            return;
        }
        m21869d();
        this.f9005s.draw(spriteBatch);
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_LOIC_COINS);
        this.f9003q = 0.0f;
        this.f9001k = i;
        this.f8999b = (float) (this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_LOIC_DAMAGE) * this.f8844S.enemy.getTowersMaxDps());
        this.f9000d = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_LOIC_DURATION);
        float f = i;
        this.f9004r.set(f - 64.0f, 0.0f, 128.0f, this.f8844S.map.getMap().heightPixels);
        ShapeManager shapeManager = Game.f8589i.shapeManager;
        if (shapeManager != null) {
            this.f9005s = (MultiLine) shapeManager.getFactory(ShapeType.MULTI_LINE).obtain();
            if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                ParticleEffectPool.PooledEffect obtain = Game.f8589i.abilityManager.f9538F.LOIC.f9008d.obtain();
                this.f9006t = obtain;
                obtain.setPosition(f, this.f8844S.map.getMap().heightPixels * 0.5f);
                float f2 = this.f8844S.map.getMap().heightPixels / 128.0f;
                Array<ParticleEmitter> emitters = this.f9006t.getEmitters();
                for (int i3 = 0; i3 < emitters.size; i3++) {
                    ParticleEmitter particleEmitter = emitters.get(i3);
                    particleEmitter.getSpawnHeight().setHigh(f2 * 128.0f);
                    particleEmitter.getYOffsetValue().setLow((-64.0f) * f2);
                    particleEmitter.getEmission().setHigh(10.0f * f2);
                }
                this.f8844S._particle.addParticle(this.f9006t, false);
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        this.f9003q += f;
        float f2 = this.f8999b * f;
        this.f8844S.map.spawnedEnemies.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
            if (i < delayedRemovalArray.size) {
                Enemy enemy = delayedRemovalArray.items[i].enemy;
                if (enemy != null && this.f9004r.contains(enemy.getPosition())) {
                    this.f8844S.enemy.giveDamage(enemy, null, f2 * enemy.getAbilityVulnerability(AbilityType.LOIC), DamageType.LASER, this, false, null);
                }
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8999b = input.readFloat();
        this.f9000d = input.readFloat();
        this.f9001k = input.readInt();
        this.f9003q = input.readFloat();
        this.f9004r = (Rectangle) kryo.readObject(input, Rectangle.class);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        super.setUnregistered();
        ParticleEffectPool.PooledEffect pooledEffect = this.f9006t;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f9006t = null;
        }
        this.f9005s = null;
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f8999b);
        output.writeFloat(this.f9000d);
        output.writeInt(this.f9001k);
        output.writeFloat(this.f9003q);
        kryo.writeObject(output, this.f9004r);
    }
}
