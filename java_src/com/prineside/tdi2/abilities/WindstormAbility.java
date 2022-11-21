package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.buffs.ThrowBackBuff;
import com.prineside.tdi2.buffs.processors.ThrowBackBuffProcessor;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
@REGS
/* loaded from: classes2.dex */
public class WindstormAbility extends Ability {

    /* renamed from: u */
    public static final int[] f9058u = {100, 125, 150, 175, 250, 300, HttpStatus.SC_BAD_REQUEST, 550, 750, 875, CoreTile.FIXED_LEVEL_XP_REQUIREMENT};

    /* renamed from: v */
    public static final int[][] f9059v = {new int[]{5, 10, 25, 0, 0, 0, 0, 0, 0, 0, 300}, new int[]{0, 0, 5, 10, 30, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 10, 20, 50, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 10, 25, 45, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 25, 75, 100}};

    /* renamed from: b */
    public int f9060b;

    /* renamed from: d */
    public int f9061d;

    /* renamed from: k */
    public float f9062k;

    /* renamed from: p */
    public float f9063p;

    /* renamed from: q */
    public float f9064q;

    /* renamed from: r */
    public float f9065r;
    @NAGS

    /* renamed from: s */
    public ParticleEffectPool.PooledEffect f9066s;

    /* renamed from: t */
    public Array<Enemy.EnemyReference> f9067t;

    /* loaded from: classes2.dex */
    public static class WindstormAbilityFactory extends Ability.Factory<WindstormAbility> {

        /* renamed from: c */
        public ParticleEffectPool f9068c;

        public WindstormAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.BLUE.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.BLUE.P700;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-windstorm");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return WindstormAbility.f9058u[StrictMath.min(i, WindstormAbility.f9058u.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return WindstormAbility.f9059v[resourceType.ordinal()][StrictMath.min(i, WindstormAbility.f9059v[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public WindstormAbility create() {
            return new WindstormAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            float floatValue = gameValueProvider.getFloatValue(GameValueType.ABILITY_WINDSTORM_RANGE);
            float floatValue2 = gameValueProvider.getFloatValue(GameValueType.ABILITY_WINDSTORM_DURATION);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_WINDSTORM", Float.valueOf(floatValue), Float.valueOf(floatValue2));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_delays_next_wave", StringFormatter.compactNumber(floatValue2 * 2.0f, 1));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/windstorm.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9068c = new ParticleEffectPool(particleEffect, 1, 16);
        }
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f9064q >= this.f9063p;
    }

    public WindstormAbility() {
        super(AbilityType.WINDSTORM);
        this.f9065r = 0.0f;
        this.f9067t = new Array<>(Enemy.EnemyReference.class);
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
        float f2;
        float f3 = this.f9064q / this.f9063p;
        if (f3 > 1.0f) {
            f3 = 1.0f;
        }
        ResourcePack.AtlasTextureRegion textureRegion = Game.f8589i.assetManager.getTextureRegion("particle-shockwave-twirled-fat");
        if (f3 <= 0.05f) {
            f2 = f3 / 0.05f;
        } else if (f3 >= 0.95f) {
            f2 = 1.0f - ((f3 - 0.95f) / 0.05f);
        } else {
            f2 = 1.0f;
        }
        spriteBatch.setColor(1.0f, 1.0f, 1.0f, f2 * 0.19f);
        float f4 = this.f9062k;
        spriteBatch.draw(textureRegion, this.f9060b - (f4 * 128.0f), this.f9061d - (f4 * 128.0f), f4 * 128.0f, f4 * 128.0f, f4 * 2.0f * 128.0f, f4 * 2.0f * 128.0f, 1.0f, 1.0f, (-this.f9064q) * 90.0f);
        float f5 = this.f9062k;
        spriteBatch.draw(textureRegion, this.f9060b - (f5 * 128.0f), this.f9061d - (f5 * 128.0f), f5 * 128.0f, f5 * 128.0f, f5 * 2.0f * 128.0f, f5 * 2.0f * 128.0f, 0.74f, 0.74f, (-this.f9064q) * 120.0f);
        float f6 = this.f9062k;
        spriteBatch.draw(textureRegion, this.f9060b - (f6 * 128.0f), this.f9061d - (f6 * 128.0f), f6 * 128.0f, f6 * 128.0f, f6 * 2.0f * 128.0f, f6 * 2.0f * 128.0f, 0.54760003f, 0.54760003f, (-this.f9064q) * 150.0f);
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.f9060b = i;
        this.f9061d = i2;
        this.f9062k = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_WINDSTORM_RANGE);
        this.f9063p = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_WINDSTORM_DURATION);
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.abilityManager.f9538F.WINDSTORM.f9068c.obtain();
            this.f9066s = obtain;
            obtain.setPosition(i, i2);
            float f = (this.f9062k * 128.0f) / 128.0f;
            this.f9066s.getEmitters().first().getVelocity().setHigh(140.0f * f, f * 200.0f);
            this.f8844S._particle.addParticle(this.f9066s, false);
        }
        this.f8844S.wave.freezeTimeToNextWave(this.f9063p * 2.0f);
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        DelayedRemovalArray buffsByTypeOrNull;
        Array<Enemy.EnemyReference> array;
        float f2 = this.f9065r - f;
        this.f9065r = f2;
        float f3 = this.f9064q + f;
        this.f9064q = f3;
        int i = 0;
        if (f3 >= this.f9063p) {
            ThrowBackBuffProcessor throwBackBuffProcessor = this.f8844S.buff.P_THROW_BACK;
            while (true) {
                array = this.f9067t;
                if (i >= array.size) {
                    break;
                }
                Enemy enemy = array.items[i].enemy;
                if (enemy != null) {
                    DelayedRemovalArray buffsByTypeOrNull2 = enemy.getBuffsByTypeOrNull(BuffType.THROW_BACK);
                    for (int i2 = buffsByTypeOrNull2.size - 1; i2 >= 0; i2--) {
                        if (((ThrowBackBuff) buffsByTypeOrNull2.items[i2]).ownerId == -241) {
                            throwBackBuffProcessor.removeBuff(enemy, BuffType.THROW_BACK, i2);
                        }
                    }
                }
                i++;
            }
            array.clear();
            ParticleEffectPool.PooledEffect pooledEffect = this.f9066s;
            if (pooledEffect != null) {
                pooledEffect.allowCompletion();
            }
        } else if (f2 <= 0.0f) {
            GameSystemProvider gameSystemProvider = this.f8844S;
            ThrowBackBuffProcessor throwBackBuffProcessor2 = gameSystemProvider.buff.P_THROW_BACK;
            float f4 = this.f9062k;
            float f5 = f4 * 128.0f * f4 * 128.0f;
            gameSystemProvider.map.spawnedEnemies.begin();
            while (true) {
                DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
                if (i < delayedRemovalArray.size) {
                    Enemy enemy2 = delayedRemovalArray.items[i].enemy;
                    if (enemy2 != null && (((buffsByTypeOrNull = enemy2.getBuffsByTypeOrNull(BuffType.THROW_BACK)) == null || buffsByTypeOrNull.size == 0) && PMath.getSquareDistanceBetweenPoints(this.f9060b, this.f9061d, enemy2.getPosition().f5527x, enemy2.getPosition().f5528y) < f5)) {
                        ThrowBackBuff obtain = Game.f8589i.buffManager.f9699F.THROW_BACK.obtain();
                        float f6 = this.f9063p;
                        obtain.setup(-241, 2.5f, f6 + 0.01f, f6 * 10.0f, 1.0f);
                        if (throwBackBuffProcessor2.addBuff(enemy2, obtain)) {
                            this.f9067t.add(this.f8844S.enemy.getReference(enemy2));
                        }
                    }
                    i++;
                } else {
                    delayedRemovalArray.end();
                    this.f9065r = 0.191f;
                    return;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9060b = input.readInt(true);
        this.f9061d = input.readInt(true);
        this.f9062k = input.readFloat();
        this.f9063p = input.readFloat();
        this.f9064q = input.readFloat();
        this.f9065r = input.readFloat();
        this.f9067t = (Array) kryo.readObject(input, Array.class);
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeInt(this.f9060b, true);
        output.writeInt(this.f9061d, true);
        output.writeFloat(this.f9062k);
        output.writeFloat(this.f9063p);
        output.writeFloat(this.f9064q);
        output.writeFloat(this.f9065r);
        kryo.writeObject(output, this.f9067t);
    }
}
