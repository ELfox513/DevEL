package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.buffs.BlizzardBuff;
import com.prineside.tdi2.buffs.FreezingBuff;
import com.prineside.tdi2.buffs.ThrowBackBuff;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.utils.EnumKeyArray;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1, classOnly = true)
/* loaded from: classes2.dex */
public abstract class Enemy extends Registrable implements ScheduledUpdater.Updatable, Pool.Poolable {
    public static final float SIZE = 25.6f;
    public static final int UNREGISTERED_ID = 0;
    public boolean buffBlizzardActive;
    public float buffFreezingLightningLengthBonus;
    public float buffFreezingPoisonDurationBonus;
    @NAGS
    public ParticleEffectPool.PooledEffect buffRegenerationParticle;
    public boolean buffSnowballActive;
    public int buffSnowballHits;
    public boolean buffStunActive;
    public IntIntMap buffStunCountByTower;
    public IntSet buffThrowBackAffectedBy;
    public boolean[] buffsAppliedByType;
    @EnumKeyArray(enumerator = BuffType.class)
    public DelayedRemovalArray[] buffsByType;
    public boolean crusherTowerTarget;
    @NAGS
    public float drawAngle;
    @NAGS
    public float drawScale;
    public float existsTime;
    public boolean gaussMiningSpeedGiven;
    public Path graphPath;
    @NAGS
    public boolean healthBarInvisible;
    public boolean ignorePathfinding;
    public boolean ignoredByAutoWaveCall;
    public Array<ItemStack> loot;
    public float passedTiles;

    /* renamed from: s */
    public Tile.Pos f8557s;
    public boolean setUpByEnemySystem;
    public int sideShiftIndex;
    public SpawnTile spawnTile;
    public float sumPassedTiles;
    @NAGS

    /* renamed from: t */
    public Color f8558t;
    public EnemyType type;
    public IntMap userData;
    public boolean wasAimedAtWithChainReactionBuff;
    public boolean wasStunnedByGauss;
    public static final Color HEALTH_BAR_BACKGROUND_COLOR = new Color(0.1f, 0.1f, 0.1f, 1.0f);

    /* renamed from: u */
    public static final Color f8548u = new Color(Color.WHITE);

    /* renamed from: a */
    public int f8549a = -1;

    /* renamed from: b */
    public float f8550b = 1.0f;
    public int killScore = 1;
    public boolean disabled = false;
    public boolean visible = true;
    public boolean lowAimPriority = false;

    /* renamed from: d */
    public Vector2 f8551d = new Vector2();
    public float angle = 0.0f;
    @NAGS
    public Vector2 drawPosition = new Vector2();

    /* renamed from: k */
    public float f8553k = 100.0f;
    public float maxHealth = 100.0f;

    /* renamed from: p */
    public float f8554p = 1.0f;
    public float bounty = 0.0f;

    /* renamed from: q */
    public float f8555q = 1.0f;
    @NAGS

    /* renamed from: r */
    public float f8556r = 0.0f;
    public float healthBarScale = 1.0f;

    /* renamed from: id */
    public int f8552id = 0;
    public int pathSearches = 0;
    public Wave wave = null;
    public float buffFreezingPercent = 0.0f;
    public byte buffStunCount = 0;
    public float buffStunImmunity = 0.0f;
    public float crusherTowerVulnerability = 1.0f;

    @REGS(arrayLevels = 1)
    /* loaded from: classes2.dex */
    public static class EnemyReference implements KryoSerializable {
        public static final EnemyReference NULL = new EnemyReference();
        public Enemy enemy;

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.enemy = (Enemy) kryo.readClassAndObject(input);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.enemy);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Enemy> implements Disposable {

        /* renamed from: a */
        public ParticleEffectPool f8559a;

        /* renamed from: b */
        public ParticleEffectPool f8560b;

        /* renamed from: d */
        public final Pool<T> f8561d = (Pool<T>) new Pool<T>(16, Integer.MAX_VALUE) { // from class: com.prineside.tdi2.Enemy.Factory.2
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public T newObject() {
                return (T) Factory.this.create();
            }
        };

        /* renamed from: k */
        public final EnemyType f8562k;

        /* renamed from: p */
        public final String f8563p;

        /* renamed from: q */
        public final String f8564q;

        public void clearPool() {
            this.f8561d.clear();
        }

        public abstract T create();

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
        }

        public void free(Enemy enemy) {
            this.f8561d.free(enemy);
        }

        public abstract Color getColor();

        public String getDescription() {
            return Game.f8589i.localeManager.i18n.get(this.f8564q);
        }

        public TextureRegion getEmojiTexture() {
            return getTexture();
        }

        public abstract TextureRegion getHighlightTexture();

        public abstract TextureRegion getTexture();

        public int getTextureSize() {
            return getTexture().getRegionWidth();
        }

        public String getTitle() {
            return Game.f8589i.localeManager.i18n.get(this.f8563p);
        }

        public final T obtain() {
            return this.f8561d.obtain();
        }

        public void setupAssets() {
        }

        public void setup() {
            if (Game.f8589i.assetManager != null) {
                setupAssets();
            }
        }

        public Factory(EnemyType enemyType) {
            this.f8562k = enemyType;
            this.f8563p = "enemy_name_" + enemyType.name();
            this.f8564q = "enemy_description_" + enemyType.name();
            if (Game.f8589i.assetManager != null) {
                ParticleEffect particleEffect = new ParticleEffect();
                particleEffect.load(Gdx.files.internal("particles/break.prt"), Game.f8589i.assetManager.f9555TR.blank.getAtlas());
                particleEffect.setEmittersCleanUpBlendFunction(false);
                particleEffect.getEmitters().get(0).getTint().setColors(new float[]{getColor().f3892r, getColor().f3891g, getColor().f3890b});
                this.f8559a = new ParticleEffectPool(particleEffect, 64, 2048);
                ParticleEffect particleEffect2 = new ParticleEffect();
                particleEffect2.load(Gdx.files.internal("particles/enemy-hit.prt"), Game.f8589i.assetManager.f9555TR.blank.getAtlas());
                particleEffect2.setEmittersCleanUpBlendFunction(false);
                particleEffect2.getEmitters().get(0).getTint().setColors(new float[]{getColor().f3892r, getColor().f3891g, getColor().f3890b});
                this.f8560b = new ParticleEffectPool(particleEffect2, 64, 2048);
            }
        }
    }

    public void applyDrawInterpolation(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        if (!this.disabled && this.graphPath != null && f != 0.0f) {
            float passedTilesDelta = this.passedTiles + getPassedTilesDelta(f);
            if (passedTilesDelta < -0.49999f) {
                passedTilesDelta = -0.499999f;
            }
            try {
                this.drawPosition.set(this.graphPath.getPosition(passedTilesDelta, this.sideShiftIndex));
                this.drawAngle = this.graphPath.getRotation(passedTilesDelta, this.sideShiftIndex);
            } catch (Exception e) {
                Logger.error("Enemy", "passedTiles: " + this.passedTiles + ", interpolatedTime: " + f + ", " + getPassedTilesDelta(f));
                throw e;
            }
        } else {
            this.drawAngle = this.angle;
            this.drawPosition.set(this.f8551d);
        }
        float f2 = this.existsTime;
        if (f2 + f < 1.0f) {
            this.drawScale = Interpolation.pow2Out.apply(f2 + f);
        } else {
            this.drawScale = 1.0f;
        }
    }

    public boolean canBeAttackedBy(Tower tower) {
        return true;
    }

    public final boolean canBeBuffed(BuffType buffType) {
        return getBuffVulnerability(buffType) > 0.0f;
    }

    public boolean canHaveRandomSideShift() {
        return true;
    }

    public void drawBatch(SpriteBatch spriteBatch, float f) {
        drawBatch(spriteBatch, f, Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    public boolean dynamicPathfindingAllowed() {
        return true;
    }

    public float getAbilityVulnerability(AbilityType abilityType) {
        return 1.0f;
    }

    public float getBaseDamage() {
        return 1.0f;
    }

    public ParticleEffectPool.PooledEffect getBreakParticle() {
        return Game.f8589i.enemyManager.getFactory(this.type).f8559a.obtain();
    }

    public float getBuffVulnerability(BuffType buffType) {
        return this.f8844S.enemy.enemyBuffVulnerability[this.type.ordinal()][buffType.ordinal()];
    }

    public float getBuffedSpeed() {
        return this.f8555q;
    }

    public Color getColor() {
        return Game.f8589i.enemyManager.getFactory(this.type).getColor();
    }

    public TextureRegion getEmojiTexture() {
        return Game.f8589i.enemyManager.getFactory(this.type).getEmojiTexture();
    }

    public float getHealth() {
        return this.f8553k;
    }

    public TextureRegion getHighlightTexture() {
        return Game.f8589i.enemyManager.getFactory(this.type).getHighlightTexture();
    }

    public ParticleEffectPool.PooledEffect getHitParticle() {
        return Game.f8589i.enemyManager.getFactory(this.type).f8560b.obtain();
    }

    public float getKillExp() {
        return this.f8550b;
    }

    public int getKillScore() {
        return this.killScore;
    }

    public Vector2 getPosition() {
        return this.f8551d;
    }

    public float getSize() {
        return 25.6f;
    }

    public float getSpeed() {
        return this.f8554p;
    }

    public float getSquaredSize() {
        return 655.36005f;
    }

    public TextureRegion getTexture() {
        return Game.f8589i.enemyManager.getFactory(this.type).getTexture();
    }

    public float getTowerDamageMultiplier(TowerType towerType) {
        return this.f8844S.tower.towerEnemyDamageMultiplier[this.type.ordinal()][towerType.ordinal()];
    }

    public Object getUserData(int i) {
        IntMap intMap = this.userData;
        if (intMap == null) {
            return null;
        }
        return intMap.get(i, null);
    }

    public boolean hasBuffsByType(BuffType buffType) {
        DelayedRemovalArray[] delayedRemovalArrayArr = this.buffsByType;
        return (delayedRemovalArrayArr == null || delayedRemovalArrayArr[buffType.ordinal()].size == 0) ? false : true;
    }

    public abstract boolean hasDrawPriority();

    public boolean isAir() {
        return this.f8844S.enemy.flyingEnemy[this.type.ordinal()];
    }

    public boolean isVulnerableTo(DamageType damageType) {
        return this.f8844S.enemy.enemyDamageVulnerability[this.type.ordinal()][damageType.ordinal()];
    }

    public boolean isVulnerableToSpecial(SpecialDamageType specialDamageType) {
        return this.f8844S.enemy.enemySpecialDamageVulnerability[this.type.ordinal()][specialDamageType.ordinal()];
    }

    public void onPositionSetToPath() {
    }

    public void onPreDie() {
    }

    public void onSpawned() {
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f8549a = -1;
        this.f8550b = 1.0f;
        this.killScore = 1;
        this.disabled = false;
        this.visible = true;
        this.lowAimPriority = false;
        this.f8551d.setZero();
        this.angle = 0.0f;
        this.drawAngle = 0.0f;
        this.drawScale = 0.0f;
        this.healthBarInvisible = false;
        this.drawPosition.setZero();
        this.f8553k = 100.0f;
        this.maxHealth = 100.0f;
        this.f8554p = 1.0f;
        this.bounty = 0.0f;
        this.f8555q = 1.0f;
        this.f8556r = 0.0f;
        this.healthBarScale = 1.0f;
        this.loot = null;
        this.f8552id = 0;
        this.setUpByEnemySystem = false;
        this.f8557s = null;
        this.graphPath = null;
        this.pathSearches = 0;
        this.ignorePathfinding = false;
        this.sideShiftIndex = 0;
        this.passedTiles = 0.0f;
        this.sumPassedTiles = 0.0f;
        this.existsTime = 0.0f;
        this.userData = null;
        this.buffsByType = null;
        this.buffsAppliedByType = null;
        this.spawnTile = null;
        this.wave = null;
        this.buffRegenerationParticle = null;
        this.buffFreezingPercent = 0.0f;
        this.buffFreezingLightningLengthBonus = 0.0f;
        this.buffFreezingPoisonDurationBonus = 0.0f;
        this.buffBlizzardActive = false;
        this.buffSnowballHits = 0;
        this.buffSnowballActive = false;
        this.buffThrowBackAffectedBy = null;
        this.buffStunCountByTower = null;
        this.buffStunCount = (byte) 0;
        this.buffStunImmunity = 0.0f;
        this.buffStunActive = false;
        this.wasStunnedByGauss = false;
        this.crusherTowerTarget = false;
        this.crusherTowerVulnerability = 1.0f;
        this.gaussMiningSpeedGiven = false;
        this.wasAimedAtWithChainReactionBuff = false;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public final int scheduledUpdatableGetId() {
        return this.f8549a;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public final void scheduledUpdatableSetId(int i) {
        this.f8549a = i;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
    }

    public void setKillExp(float f) {
        this.f8550b = f;
    }

    public void setMaxHealth(float f) {
        this.maxHealth = f;
    }

    public void setPosition(Vector2 vector2) {
        this.f8551d.set(vector2);
    }

    public void setSpeed(float f) {
        this.f8554p = f;
    }

    /* renamed from: a */
    public final void m22021a() {
        if (this.f8558t == null) {
            this.f8558t = (Color) Pools.get(Color.class).obtain();
        }
        float f = this.f8553k / this.maxHealth;
        this.f8558t.set(((-0.658f) * f) + 0.956f, (0.424f * f) + 0.262f, (f * 0.102f) + 0.211f, 1.0f);
    }

    public ItemStack addLoot(Item item, int i) {
        boolean z = true;
        if (this.loot == null) {
            this.loot = new Array<>(false, 1, ItemStack.class);
        }
        ItemStack addItemToStacksArray = ProgressManager.addItemToStacksArray(this.loot, item, i);
        addItemToStacksArray.covered = (addItemToStacksArray.getItem() == Item.C1543D.GREEN_PAPER || addItemToStacksArray.getItem() == Item.C1543D.BIT_DUST) ? false : false;
        return addItemToStacksArray;
    }

    public void drawBatch(SpriteBatch spriteBatch, float f, Color color) {
        TextureRegion texture;
        float f2;
        Color color2 = f8548u;
        color2.set(color);
        spriteBatch.setColor(color2);
        if (this.f8844S.enemy.isEmojiEnemies()) {
            TextureRegion emojiTexture = getEmojiTexture();
            float regionWidth = emojiTexture.getRegionWidth() * this.drawScale;
            Vector2 vector2 = this.drawPosition;
            float f3 = regionWidth * 0.5f;
            f2 = regionWidth;
            spriteBatch.draw(emojiTexture, vector2.f5527x - f3, vector2.f5528y - f3, regionWidth, f2);
        } else {
            if (this.loot != null) {
                texture = getHighlightTexture();
            } else {
                texture = getTexture();
            }
            TextureRegion textureRegion = texture;
            float regionWidth2 = textureRegion.getRegionWidth() * this.drawScale;
            Vector2 vector22 = this.drawPosition;
            float f4 = regionWidth2 * 0.5f;
            spriteBatch.draw(textureRegion, vector22.f5527x - f4, vector22.f5528y - f4, f4, f4, regionWidth2, regionWidth2, 1.0f, 1.0f, this.drawAngle);
            f2 = regionWidth2;
        }
        if (this.buffBlizzardActive || this.buffSnowballActive) {
            TextureRegion iceOverlayTexture = Game.f8589i.enemyManager.getIceOverlayTexture(this.f8552id % 2);
            Vector2 vector23 = this.drawPosition;
            float f5 = 0.5f * f2;
            spriteBatch.draw(iceOverlayTexture, vector23.f5527x - f5, vector23.f5528y - f5, f2, f2);
        }
    }

    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        float f2 = this.f8556r;
        if (f2 != 0.0f) {
            Color color = f8548u;
            color.set(1.0f, 1.0f, 1.0f, f2);
            drawBatch(spriteBatch, f, color);
            float f3 = this.f8556r - (f * 10.0f);
            this.f8556r = f3;
            if (f3 < 0.0f) {
                this.f8556r = 0.0f;
            }
        }
    }

    public void drawHealth(SpriteBatch spriteBatch) {
        BuffType[] buffTypeArr;
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        if (this.buffsByType != null) {
            int i = 0;
            for (BuffType buffType : BuffType.values) {
                if (this.buffsByType[buffType.ordinal()].size != 0) {
                    i++;
                }
            }
            float f = this.drawPosition.f5527x - ((i * 16.0f) * 0.5f);
            for (BuffType buffType2 : BuffType.values) {
                DelayedRemovalArray delayedRemovalArray = this.buffsByType[buffType2.ordinal()];
                if (delayedRemovalArray.size != 0) {
                    Buff.Factory<? extends Buff> factory = Game.f8589i.buffManager.getFactory(buffType2);
                    TextureRegion healthBarIcon = factory.getHealthBarIcon();
                    if (factory.effectIsCumulative()) {
                        for (int i2 = delayedRemovalArray.size - 1; i2 >= 0; i2--) {
                            spriteBatch.draw(healthBarIcon, f, this.drawPosition.f5528y + 68.0f + (i2 * 6.0f), 16.0f, 16.0f);
                        }
                    } else {
                        spriteBatch.draw(healthBarIcon, f, this.drawPosition.f5528y + 68.0f, 16.0f, 16.0f);
                    }
                    f += 16.0f;
                }
            }
        }
        float f2 = this.f8553k / this.maxHealth;
        spriteBatch.setColor(HEALTH_BAR_BACKGROUND_COLOR);
        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        Vector2 vector2 = this.drawPosition;
        float f3 = vector2.f5527x;
        float f4 = this.healthBarScale;
        spriteBatch.draw(blankWhiteTextureRegion, f3 - (28.0f * f4), vector2.f5528y + (f4 * 52.0f), f4 * 56.0f, f4 * 8.0f);
        if (this.f8558t == null) {
            m22021a();
        }
        spriteBatch.setColor(this.f8558t);
        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion2 = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        Vector2 vector22 = this.drawPosition;
        float f5 = vector22.f5527x;
        float f6 = this.healthBarScale;
        spriteBatch.draw(blankWhiteTextureRegion2, f5 - (26.0f * f6), vector22.f5528y + (54.0f * f6), (int) (f2 * 52.0f * f6), f6 * 4.0f);
    }

    public float getBuffedDamageMultiplier(TowerType towerType, DamageType damageType) {
        float towerDamageMultiplier;
        Tower tower;
        float f = 1.0f;
        if (towerType == null) {
            towerDamageMultiplier = 1.0f;
        } else {
            towerDamageMultiplier = getTowerDamageMultiplier(towerType);
        }
        DelayedRemovalArray buffsByTypeOrNull = getBuffsByTypeOrNull(BuffType.FREEZING);
        if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
            int intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_FREEZING_A_EVAPORATION_STACK);
            float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FREEZING_A_EVAPORATION_DAMAGE);
            int i = 0;
            for (int i2 = 0; i2 < buffsByTypeOrNull.size && ((tower = ((FreezingBuff[]) buffsByTypeOrNull.items)[i2].tower) == null || tower.type != TowerType.FREEZING || !tower.isAbilityInstalled(0) || (i = i + 1) != intValue); i2++) {
            }
            towerDamageMultiplier *= (percentValueAsMultiplier * i) + 1.0f;
        }
        if (hasBuffsByType(BuffType.ARMOR)) {
            towerDamageMultiplier *= 0.5f;
        }
        DelayedRemovalArray buffsByTypeOrNull2 = getBuffsByTypeOrNull(BuffType.BLIZZARD);
        if (buffsByTypeOrNull2 != null && buffsByTypeOrNull2.size != 0) {
            towerDamageMultiplier *= ((BlizzardBuff) buffsByTypeOrNull2.first()).damageMultiplier;
        }
        DelayedRemovalArray buffsByTypeOrNull3 = getBuffsByTypeOrNull(BuffType.THROW_BACK);
        if (buffsByTypeOrNull3 != null && buffsByTypeOrNull3.size != 0) {
            for (int i3 = 0; i3 < buffsByTypeOrNull3.size; i3++) {
                float f2 = ((ThrowBackBuff) buffsByTypeOrNull3.items[i3]).damageMultiplier;
                if (f2 > f) {
                    f = f2;
                }
            }
            towerDamageMultiplier *= f;
        }
        float percentValueAsMultiplier2 = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ENEMIES_VULNERABILITY);
        if (percentValueAsMultiplier2 < 0.0f) {
            percentValueAsMultiplier2 = 0.0f;
        }
        return towerDamageMultiplier * percentValueAsMultiplier2;
    }

    public DelayedRemovalArray getBuffsByTypeOrNull(BuffType buffType) {
        DelayedRemovalArray[] delayedRemovalArrayArr = this.buffsByType;
        if (delayedRemovalArrayArr == null) {
            return null;
        }
        return delayedRemovalArrayArr[buffType.ordinal()];
    }

    public Tile getCurrentTile() {
        if (this.f8557s == null) {
            return null;
        }
        Map map = this.f8844S.map.getMap();
        Tile.Pos pos = this.f8557s;
        return map.getTile(pos.f8908x, pos.f8909y);
    }

    public float giveDamage(Tower tower, float f, DamageType damageType) {
        TowerType towerType;
        if (tower == null) {
            towerType = null;
        } else {
            towerType = tower.type;
        }
        float buffedDamageMultiplier = f * getBuffedDamageMultiplier(towerType, damageType);
        if (buffedDamageMultiplier > getHealth()) {
            buffedDamageMultiplier = getHealth();
        }
        getHealth();
        setHealth(getHealth() - buffedDamageMultiplier);
        float f2 = this.f8556r + 0.5f;
        this.f8556r = f2;
        if (f2 > 1.0f) {
            this.f8556r = 1.0f;
        }
        return buffedDamageMultiplier;
    }

    public void initBuffsByTypeArray() {
        if (this.buffsByType != null) {
            return;
        }
        this.buffsByType = Game.f8589i.enemyManager.enemyBuffArraysPool.obtain();
    }

    public void setCurrentTile(Tile tile) {
        if (tile == null) {
            if (this.f8557s != null) {
                Pools.get(Tile.Pos.class).free(this.f8557s);
                this.f8557s = null;
                return;
            }
            return;
        }
        Tile.Pos pos = this.f8557s;
        if (pos == null) {
            pos = (Tile.Pos) Pools.get(Tile.Pos.class).obtain();
        }
        pos.f8908x = tile.getX();
        pos.f8909y = tile.getY();
        this.f8557s = pos;
    }

    public void setPosition(float f, float f2) {
        this.f8551d.set(f, f2);
    }

    public void setPositionToPath() {
        this.angle = this.graphPath.getRotation(this.passedTiles, this.sideShiftIndex);
        setPosition(this.graphPath.getPosition(this.passedTiles, this.sideShiftIndex));
        applyDrawInterpolation(0.0f);
        onPositionSetToPath();
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        DelayedRemovalArray[] delayedRemovalArrayArr = this.buffsByType;
        if (delayedRemovalArrayArr != null) {
            Game.f8589i.enemyManager.enemyBuffArraysPool.free(delayedRemovalArrayArr);
            this.buffsByType = null;
        }
        if (this.f8558t != null) {
            Pools.get(Color.class).free(this.f8558t);
            this.f8558t = null;
        }
        super.setUnregistered();
    }

    public void setUserData(int i, Object obj) {
        if (this.userData == null) {
            this.userData = new IntMap();
        }
        this.userData.put(i, obj);
    }

    public void update(float f) {
        float f2;
        this.existsTime += f;
        DelayedRemovalArray buffsByTypeOrNull = getBuffsByTypeOrNull(BuffType.THROW_BACK);
        if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
            f2 = -((ThrowBackBuff) buffsByTypeOrNull.first()).force;
        } else if (!this.buffBlizzardActive && !this.buffSnowballActive && !this.buffStunActive) {
            f2 = this.f8554p * (100.0f - this.buffFreezingPercent) * 0.01f;
        } else {
            f2 = 0.0f;
        }
        double d = f2;
        double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ENEMIES_SPEED);
        Double.isNaN(d);
        float f3 = (float) (d * percentValueAsMultiplier);
        float f4 = this.f8555q;
        if (f3 != f4) {
            float f5 = f * 4.0f;
            float f6 = f3 - f4;
            float abs = StrictMath.abs(f6);
            if (abs > f5) {
                f6 *= f5 / abs;
            }
            this.f8555q += f6;
        }
        ParticleEffectPool.PooledEffect pooledEffect = this.buffRegenerationParticle;
        if (pooledEffect != null) {
            Vector2 vector2 = this.f8551d;
            pooledEffect.setPosition(vector2.f5527x, vector2.f5528y);
        }
    }

    public Enemy(EnemyType enemyType) {
        this.type = enemyType;
        reset();
    }

    public float getPassedTilesDelta(float f) {
        float buffedSpeed = getBuffedSpeed();
        if (buffedSpeed >= 0.0f) {
            try {
                float f2 = buffedSpeed * f;
                return f2 * StrictMath.min(this.graphPath.getSpeedMultiplier(this.passedTiles, this.sideShiftIndex), this.graphPath.getSpeedMultiplier(this.passedTiles + f2, this.sideShiftIndex));
            } catch (Exception e) {
                throw new RuntimeException("Failed to get passed tiles delta, position: " + this.f8551d.f5527x + "," + this.f8551d.f5528y + ", passedTiles: " + this.passedTiles + ", deltaTime: " + f + ", speed: " + buffedSpeed, e);
            }
        }
        return buffedSpeed * f;
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8549a = input.readInt();
        this.f8550b = input.readFloat();
        this.killScore = input.readInt();
        this.disabled = input.readBoolean();
        this.visible = input.readBoolean();
        this.lowAimPriority = input.readBoolean();
        this.f8551d = (Vector2) kryo.readObject(input, Vector2.class);
        this.angle = input.readFloat();
        this.type = (EnemyType) kryo.readObjectOrNull(input, EnemyType.class);
        this.f8553k = input.readFloat();
        this.maxHealth = input.readFloat();
        this.f8554p = input.readFloat();
        this.bounty = input.readFloat();
        this.f8555q = input.readFloat();
        this.healthBarScale = input.readFloat();
        this.loot = (Array) kryo.readObjectOrNull(input, Array.class);
        this.f8552id = input.readVarInt(true);
        this.setUpByEnemySystem = input.readBoolean();
        this.f8557s = (Tile.Pos) kryo.readObjectOrNull(input, Tile.Pos.class);
        this.graphPath = (Path) kryo.readObjectOrNull(input, Path.class);
        this.pathSearches = input.readVarInt(true);
        this.ignorePathfinding = input.readBoolean();
        this.sideShiftIndex = input.readByte();
        this.passedTiles = input.readFloat();
        this.sumPassedTiles = input.readFloat();
        this.existsTime = input.readFloat();
        this.userData = (IntMap) kryo.readClassAndObject(input);
        this.buffsByType = (DelayedRemovalArray[]) kryo.readClassAndObject(input);
        this.buffsAppliedByType = (boolean[]) kryo.readObjectOrNull(input, boolean[].class);
        this.spawnTile = (SpawnTile) kryo.readObjectOrNull(input, SpawnTile.class);
        this.wave = (Wave) kryo.readObjectOrNull(input, Wave.class);
        this.ignoredByAutoWaveCall = input.readBoolean();
        this.buffFreezingPercent = input.readFloat();
        this.buffFreezingLightningLengthBonus = input.readFloat();
        this.buffFreezingPoisonDurationBonus = input.readFloat();
        this.buffBlizzardActive = input.readBoolean();
        this.buffSnowballHits = input.readVarInt(true);
        this.buffSnowballActive = input.readBoolean();
        this.buffThrowBackAffectedBy = (IntSet) kryo.readObjectOrNull(input, IntSet.class);
        this.buffStunCountByTower = (IntIntMap) kryo.readObjectOrNull(input, IntIntMap.class);
        this.buffStunCount = input.readByte();
        this.buffStunImmunity = input.readFloat();
        this.buffStunActive = input.readBoolean();
        this.wasStunnedByGauss = input.readBoolean();
        this.crusherTowerTarget = input.readBoolean();
        this.crusherTowerVulnerability = input.readFloat();
        this.gaussMiningSpeedGiven = input.readBoolean();
        this.wasAimedAtWithChainReactionBuff = input.readBoolean();
    }

    public void setHealth(float f) {
        if (!Float.isNaN(f)) {
            this.f8553k = f;
            m22021a();
            return;
        }
        throw new IllegalArgumentException("HP is NaN, previously " + this.f8553k);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeInt(this.f8549a);
        output.writeFloat(this.f8550b);
        output.writeInt(this.killScore);
        output.writeBoolean(this.disabled);
        output.writeBoolean(this.visible);
        output.writeBoolean(this.lowAimPriority);
        kryo.writeObject(output, this.f8551d);
        output.writeFloat(this.angle);
        kryo.writeObjectOrNull(output, this.type, EnemyType.class);
        output.writeFloat(this.f8553k);
        output.writeFloat(this.maxHealth);
        output.writeFloat(this.f8554p);
        output.writeFloat(this.bounty);
        output.writeFloat(this.f8555q);
        output.writeFloat(this.healthBarScale);
        kryo.writeObjectOrNull(output, this.loot, Array.class);
        output.writeVarInt(this.f8552id, true);
        output.writeBoolean(this.setUpByEnemySystem);
        kryo.writeObjectOrNull(output, this.f8557s, Tile.Pos.class);
        kryo.writeObjectOrNull(output, this.graphPath, Path.class);
        output.writeVarInt(this.pathSearches, true);
        output.writeBoolean(this.ignorePathfinding);
        output.writeByte(this.sideShiftIndex);
        output.writeFloat(this.passedTiles);
        output.writeFloat(this.sumPassedTiles);
        output.writeFloat(this.existsTime);
        kryo.writeClassAndObject(output, this.userData);
        kryo.writeClassAndObject(output, this.buffsByType);
        kryo.writeObjectOrNull(output, this.buffsAppliedByType, boolean[].class);
        kryo.writeObjectOrNull(output, this.spawnTile, SpawnTile.class);
        kryo.writeObjectOrNull(output, this.wave, Wave.class);
        output.writeBoolean(this.ignoredByAutoWaveCall);
        output.writeFloat(this.buffFreezingPercent);
        output.writeFloat(this.buffFreezingLightningLengthBonus);
        output.writeFloat(this.buffFreezingPoisonDurationBonus);
        output.writeBoolean(this.buffBlizzardActive);
        output.writeVarInt(this.buffSnowballHits, true);
        output.writeBoolean(this.buffSnowballActive);
        kryo.writeObjectOrNull(output, this.buffThrowBackAffectedBy, IntSet.class);
        kryo.writeObjectOrNull(output, this.buffStunCountByTower, IntIntMap.class);
        output.writeByte(this.buffStunCount);
        output.writeFloat(this.buffStunImmunity);
        output.writeBoolean(this.buffStunActive);
        output.writeBoolean(this.wasStunnedByGauss);
        output.writeBoolean(this.crusherTowerTarget);
        output.writeFloat(this.crusherTowerVulnerability);
        output.writeBoolean(this.gaussMiningSpeedGiven);
        output.writeBoolean(this.wasAimedAtWithChainReactionBuff);
    }
}
