package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.managers.ShapeManager;
import com.prineside.tdi2.shapes.Circle;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import net.bytebuddy.pool.TypePool;
@REGS
/* loaded from: classes2.dex */
public class SmokeBombAbility extends Ability {

    /* renamed from: s */
    public static final int[] f9040s = {100, 125, 150, 175, 250, 300, HttpStatus.SC_BAD_REQUEST, 550, 750, 875, CoreTile.FIXED_LEVEL_XP_REQUIREMENT};

    /* renamed from: t */
    public static final int[][] f9041t = {new int[]{4, 8, 20, 25, 0, 0, 0, 0, 0, 0, 300}, new int[]{0, 0, 4, 8, 20, 35, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 8, 20, 45, 0, 0, 0, HttpStatus.SC_OK}, new int[]{0, 0, 0, 0, 0, 0, 10, 20, 55, 80, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 25, 60, 0}};

    /* renamed from: u */
    public static final StringBuilder f9042u = new StringBuilder();

    /* renamed from: b */
    public float f9043b;

    /* renamed from: d */
    public float f9044d;

    /* renamed from: k */
    public int f9045k;

    /* renamed from: p */
    public int f9046p;
    @NAGS

    /* renamed from: q */
    public ParticleEffectPool.PooledEffect f9047q;
    @NAGS

    /* renamed from: r */
    public Circle f9048r;

    /* loaded from: classes2.dex */
    public static class SmokeBombAbilityFactory extends Ability.Factory<SmokeBombAbility> {

        /* renamed from: c */
        public ParticleEffectPool f9049c;

        public SmokeBombAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_GREEN.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.LIGHT_GREEN.P800;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-smoke-bomb");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return SmokeBombAbility.f9040s[StrictMath.min(i, SmokeBombAbility.f9040s.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return SmokeBombAbility.f9041t[resourceType.ordinal()][StrictMath.min(i, SmokeBombAbility.f9041t[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public SmokeBombAbility create() {
            return new SmokeBombAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            float floatValue = gameValueProvider.getFloatValue(GameValueType.ABILITY_SMOKE_BOMB_DURATION);
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_SMOKE_BOMB_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_SMOKE_BOMB", Float.valueOf(MathUtils.round(((float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_SMOKE_BOMB_DAMAGE)) * 1000.0f) / 10.0f), Float.valueOf(floatValue));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_coins_for_killed_enemies", Integer.valueOf(round));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/ability-poison-cloud.prt"), Game.f8589i.assetManager.getTextureRegion("small-circle").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9049c = new ParticleEffectPool(particleEffect, 1, 8);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f9049c;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f9043b <= 0.0f;
    }

    public SmokeBombAbility() {
        super(AbilityType.SMOKE_BOMB);
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
        ShapeManager shapeManager;
        if (this.f8844S._mapRendering.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED) {
            if (this.f9048r == null && (shapeManager = Game.f8589i.shapeManager) != null) {
                this.f9048r = (Circle) shapeManager.getFactory(ShapeType.CIRCLE).obtain();
                Color color = MaterialColor.LIGHT_GREEN.P300;
                Color cpy = color.cpy();
                cpy.f3889a = 0.07f;
                Color cpy2 = color.cpy();
                cpy2.f3889a = 0.21f;
                this.f9048r.setup(this.f9045k, this.f9046p, 0.0f, 256.0f, 32, cpy.toFloatBits(), cpy2.toFloatBits());
            }
            Circle circle = this.f9048r;
            if (circle != null) {
                circle.draw(spriteBatch);
                spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                spriteBatch.draw(Game.f8589i.assetManager.f9555TR.iconSmokeBomb, (this.f9045k - 32) + 3, (this.f9046p - 32) - 3, 64.0f, 64.0f);
                Color color2 = MaterialColor.LIGHT_GREEN.P300;
                spriteBatch.setColor(color2);
                spriteBatch.draw(Game.f8589i.assetManager.f9555TR.iconSmokeBomb, this.f9045k - 32, this.f9046p - 32, 64.0f, 64.0f);
                Color color3 = Config.WHITE_COLOR_CACHED_FLOAT_BITS;
                spriteBatch.setColor(color3);
                StringBuilder stringBuilder = f9042u;
                stringBuilder.setLength(0);
                stringBuilder.append((int) this.f9043b);
                stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                stringBuilder.append((int) ((this.f9043b % 1.0f) * 10.0f));
                ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(30);
                font.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                font.draw(spriteBatch, stringBuilder, (this.f9045k - 1) + 2.0f, (this.f9046p + 64) - 2.0f, 2.0f, 1, false);
                font.setColor(color2);
                font.draw(spriteBatch, stringBuilder, this.f9045k - 1, this.f9046p + 64, 2.0f, 1, false);
                font.setColor(color3);
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        ParticleEffectPool.PooledEffect pooledEffect = this.f9047q;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f9047q = null;
        }
        Circle circle = this.f9048r;
        if (circle != null) {
            circle.free();
            this.f9048r = null;
        }
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_SMOKE_BOMB_COINS);
        this.f9045k = i;
        this.f9046p = i2;
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_SMOKE_BOMB_DURATION);
        this.f9044d = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_SMOKE_BOMB_DAMAGE);
        this.f9043b = floatValue;
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.abilityManager.f9538F.SMOKE_BOMB.f9049c.obtain();
            this.f9047q = obtain;
            this.f8844S._particle.addParticle(obtain, false);
            this.f9047q.setPosition(i, i2);
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        this.f9043b -= f;
        float towersMaxDps = ((float) this.f8844S.enemy.getTowersMaxDps()) * this.f9044d * f;
        this.f8844S.map.spawnedEnemies.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
            if (i < delayedRemovalArray.size) {
                Enemy enemy = delayedRemovalArray.items[i].enemy;
                if (enemy != null && PMath.getSquareDistanceBetweenPoints(enemy.getPosition().f5527x, enemy.getPosition().f5528y, this.f9045k, this.f9046p) < 65536.0f) {
                    DamageType damageType = DamageType.POISON;
                    if (enemy.isVulnerableTo(damageType)) {
                        this.f8844S.enemy.giveDamage(enemy, null, towersMaxDps, damageType, this, true, null);
                    }
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
        this.f9043b = input.readFloat();
        this.f9044d = input.readFloat();
        this.f9045k = input.readInt();
        this.f9046p = input.readInt();
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f9043b);
        output.writeFloat(this.f9044d);
        output.writeInt(this.f9045k);
        output.writeInt(this.f9046p);
    }
}
