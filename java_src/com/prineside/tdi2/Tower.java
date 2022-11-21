package com.prineside.tdi2;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.TowerManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.shapes.RangeCircle;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.CheatSafeInt;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectFilter;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Iterator;
import net.bytebuddy.utility.JavaConstant;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Tower extends Building implements Disposable, ScheduledUpdater.Updatable {
    public static final int ABILITIES_COUNT = 6;
    public static final int ABILITY_INDEX_POWERFUL = 5;
    public static final int ABILITY_INDEX_SPECIAL = 3;
    public static final int ABILITY_INDEX_ULTIMATE = 4;
    public static final float DPS_STAT_INTERVAL = 10.0f;
    public static final int DPS_STAT_SLOTS = 10;

    /* renamed from: I */
    public static final AimStrategyEnemyComparator[] f8911I;

    /* renamed from: J */
    public static final StringBuilder f8912J;

    /* renamed from: K */
    public static final Vector2 f8913K;
    @NAGS

    /* renamed from: L */
    public static int f8914L = 0;
    public static final int[] LEVEL_EXPERIENCE;
    public static final int[] LEVEL_EXPERIENCE_MILESTONES;
    public static final int MAX_LEVEL = 256;
    public static final int MAX_UPGRADE_LEVEL = 10;
    public static final Array<Enemy> searchEnemiesHelper;

    /* renamed from: A */
    public float f8915A;

    /* renamed from: B */
    public float f8916B;

    /* renamed from: C */
    public int f8917C;

    /* renamed from: D */
    public float[] f8918D;

    /* renamed from: E */
    public int f8919E;
    @NAGS

    /* renamed from: F */
    public final Array<Tile> f8920F;

    /* renamed from: G */
    public Enemy.EnemyReference f8921G;
    @NAGS
    public ParticleEffectPool.PooledEffect abilityAvailableParticleEffect;
    public AimStrategy aimStrategy;
    public float angle;
    public boolean attackDisabled;

    /* renamed from: b */
    public float f8922b;
    public float bonusCoinsBrought;
    public int bountyModifiersNearby;
    public float currentLevelExperience;

    /* renamed from: d */
    public DelayedRemovalArray<Modifier.ModifierSidePair> f8923d;
    public float damageGiven;
    public float[] dpsDamage;
    public float[] dpsTime;
    public int enemiesKilled;
    public float experience;
    public float experienceGeneration;
    public float experienceMultiplier;

    /* renamed from: id */
    public int f8924id;
    public boolean[] installedAbilities;

    /* renamed from: k */
    public int f8925k;
    public float mdps;
    public float minRangeInPixels;
    public CheatSafeInt moneySpentOn;
    public float nextLevelExperience;
    public boolean outOfOrder;

    /* renamed from: p */
    public int f8926p;

    /* renamed from: q */
    public int f8927q;

    /* renamed from: r */
    public int f8928r;
    public float rangeInPixels;
    public float rangeInPixelsSqr;

    /* renamed from: s */
    public int f8929s;
    public int shotCount;

    /* renamed from: t */
    public int f8930t;
    public TowerType type;

    /* renamed from: u */
    public int f8931u;

    /* renamed from: v */
    public float f8932v;

    /* renamed from: w */
    public boolean f8933w;

    /* renamed from: x */
    public int f8934x;

    /* renamed from: y */
    public int f8935y;

    /* renamed from: z */
    public float f8936z;

    /* renamed from: H */
    public static final Color f8910H = new Color(0.56f, 0.56f, 0.56f, 1.0f);
    public static final Color SHADOW_COLOR = new Color(0.0f, 0.0f, 0.0f, 0.21f);
    public static final String[] ABILITY_NAMES = {"", "", "", "SPECIAL", "ULTIMATE", "POWERFUL"};

    /* loaded from: classes2.dex */
    public static class AbilityConfig {

        /* renamed from: a */
        public final String f8937a;

        /* renamed from: b */
        public final String f8938b;
        public String[] descriptionArgs = new String[0];

        public String getName() {
            return Game.f8589i.localeManager.i18n.get(this.f8937a);
        }

        public CharSequence getDescription() {
            return Game.f8589i.localeManager.i18n.format(this.f8938b, this.descriptionArgs);
        }

        public AbilityConfig(String str, String str2) {
            this.f8937a = str;
            this.f8938b = str2;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum AimStrategy {
        FIRST,
        LAST,
        WEAKEST,
        STRONGEST,
        NEAREST,
        RANDOM;
        
        public static final AimStrategy[] values = values();
    }

    /* loaded from: classes2.dex */
    public interface AimStrategyEnemyComparator {
        boolean compare(Tower tower, Enemy enemy, Enemy enemy2);
    }

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Tower> {

        /* renamed from: a */
        public String f8940a;

        /* renamed from: b */
        public TowerType f8941b;

        /* renamed from: c */
        public TextureRegion f8942c;

        /* renamed from: d */
        public TextureRegion f8943d;

        /* renamed from: e */
        public Array<TextureRegionConfig> f8944e;

        /* renamed from: f */
        public Array<TextureRegionConfig> f8945f;

        /* renamed from: g */
        public final AbilityConfig[] f8946g = new AbilityConfig[6];

        /* renamed from: h */
        public String[] f8947h;
        public TextureRegion roundedSmallRectTextureRegion;
        public TextureRegionConfig weaponShadowTexture;

        public boolean canKillEnemies() {
            return true;
        }

        public abstract T create();

        public final Array<TextureRegionConfig> getAbilityTextures(int i) {
            return Game.f8589i.towerManager.getAbilitiesConfig(this.f8941b)[i].textures;
        }

        public final Array<TextureRegionConfig> getBaseTextures() {
            return this.f8944e;
        }

        public abstract int getBuildHotKey();

        public int getBuildPrice(GameSystemProvider gameSystemProvider) {
            return gameSystemProvider.gameValue.getIntValue(Game.f8589i.towerManager.getPriceGameValueType(this.f8941b));
        }

        public abstract Color getColor();

        public String getDescription() {
            return Game.f8589i.towerManager.getDescription(this.f8941b);
        }

        public abstract int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType);

        public TextureRegion getIconTexture() {
            return this.f8942c;
        }

        public final Array<TextureRegionConfig> getShadowTextures() {
            return this.f8945f;
        }

        public String getTitle() {
            return Game.f8589i.towerManager.getTitle(this.f8941b);
        }

        public boolean isAvailable(GameValueProvider gameValueProvider) {
            return gameValueProvider.getBooleanValue(Game.f8589i.towerManager.getTowerGameValueType(this.f8941b));
        }

        public boolean receivesSpaceTileBonus(SpaceTileBonusType spaceTileBonusType) {
            if (spaceTileBonusType == null) {
                return false;
            }
            TowerStatType towerStatType = SpaceTileBonus.f8893c[spaceTileBonusType.ordinal()];
            if (towerStatType != null && Game.f8589i.towerManager.hasStat(this.f8941b, towerStatType)) {
                return true;
            }
            if (towerStatType == null) {
                return spaceTileBonusType != SpaceTileBonusType.BONUS_COINS || canKillEnemies();
            }
            return false;
        }

        public void setupAssets() {
        }

        public Actor createIconActor(float f) {
            Image image = new Image(Game.f8589i.assetManager.getDrawable(this.f8940a));
            image.setSize(f, f);
            return image;
        }

        public AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            this.f8946g[5].descriptionArgs[0] = StringFormatter.compactNumber((float) gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWERS_POWERFUL_ABILITY_PWR), 1).toString();
            return this.f8946g;
        }

        public final String[] getAbilityNames() {
            if (this.f8947h == null) {
                TowerManager.TowerAbilityConfig[] abilitiesConfig = Game.f8589i.towerManager.getAbilitiesConfig(this.f8941b);
                this.f8947h = new String[abilitiesConfig.length];
                for (int i = 0; i < abilitiesConfig.length; i++) {
                    this.f8947h[i] = abilitiesConfig[i].name;
                }
            }
            return this.f8947h;
        }

        public void setup() {
            AssetManager assetManager = Game.f8589i.assetManager;
            if (assetManager != null) {
                this.roundedSmallRectTextureRegion = assetManager.getTextureRegion("rounded-small-rect");
                this.f8942c = Game.f8589i.assetManager.getTextureRegion(this.f8940a);
                this.f8943d = Game.f8589i.assetManager.getTextureRegion(this.f8940a + "-shape");
                this.f8944e = Game.f8589i.towerManager.getTextureConfig(this.f8941b, "base");
                this.f8945f = Game.f8589i.towerManager.getTextureConfig(this.f8941b, "base-shadow");
                if (this.f8944e == null) {
                    Logger.error("Tower", "base texture not found for " + this.f8941b);
                }
                if (this.f8945f == null) {
                    Logger.error("Tower", "base shadow texture not found for " + this.f8941b);
                }
                setupAssets();
            }
            String[] abilityNames = getAbilityNames();
            for (int i = 0; i < 6; i++) {
                this.f8946g[i] = new AbilityConfig("tower_ability_" + this.f8941b.name() + JavaConstant.Dynamic.DEFAULT_NAME + abilityNames[i] + "_name", "tower_ability_" + this.f8941b.name() + JavaConstant.Dynamic.DEFAULT_NAME + abilityNames[i] + "_description");
            }
            this.f8946g[5].descriptionArgs = new String[1];
        }

        public Factory(String str, TowerType towerType) {
            this.f8940a = str;
            this.f8941b = towerType;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class FindEnemyFilter {
        public abstract boolean isValid(Enemy enemy);
    }

    public static int getLevelForExperience(float f) {
        int i = 1;
        for (int i2 = 1; i2 <= 256 && f >= LEVEL_EXPERIENCE_MILESTONES[i2]; i2++) {
            i = i2;
        }
        return i;
    }

    public void addExperience(float f) {
        setExperience(this.experience + f);
    }

    public void applyDrawInterpolation(float f) {
    }

    public void attack(int i) {
    }

    public abstract boolean canAim();

    public boolean canNewAbilityBeInstalled() {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            if (i2 != 3 && this.installedAbilities[i2]) {
                i++;
            }
        }
        int i3 = this.f8934x;
        return (i3 >= 20 && i < 3) || (i3 >= 7 && i < 2) || (i3 >= 4 && i < 1);
    }

    public void customButtonAction(int i, int i2) {
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
    }

    public Enemy findTarget() {
        return findTarget(null);
    }

    public float getAttackDelay() {
        return 0.0f;
    }

    public float getCachedStatBuffed(TowerStatType towerStatType) {
        return this.f8918D[towerStatType.ordinal()];
    }

    public int getEnemyPriority(Enemy enemy) {
        return enemy.lowAimPriority ? 0 : 10;
    }

    public int getLevel() {
        return this.f8934x;
    }

    public float getMinRange() {
        return 0.0f;
    }

    public float getRange() {
        return getStatBuffed(TowerStatType.RANGE);
    }

    public float getScheduledUpdateInterval() {
        return 0.0f;
    }

    public int getStartingLevel() {
        return StrictMath.min(this.f8844S.gameValue.getIntValue(GameValueType.TOWERS_STARTING_LEVEL, Game.f8589i.towerManager.getStartingLevelGameValueType(this.type)), 256);
    }

    public abstract float getStat(TowerStatType towerStatType);

    public int getStatCacheState() {
        return this.f8919E;
    }

    public Enemy getTarget() {
        return this.f8921G.enemy;
    }

    public String getUniqueStatDescription() {
        return Game.f8589i.towerManager.getUniqueStatDescription(this.type);
    }

    public int getUpgradeLevel() {
        return this.f8935y;
    }

    public abstract Array<TextureRegionConfig> getWeaponTextures();

    public boolean hasCustomButton() {
        return false;
    }

    public boolean isAbilityInstalled(int i) {
        if (i >= 0 && i < 6) {
            if (i == 3) {
                if (this.f8934x >= 10) {
                    return true;
                }
                return false;
            }
            return this.installedAbilities[i];
        }
        throw new IllegalArgumentException("Ability index is " + i + ", size 6");
    }

    public boolean isCustomButtonNeedMapPoint() {
        return false;
    }

    public boolean isSellFullRefundStillActive() {
        return this.f8922b < 15.0f && this.f8935y == 0 && this.damageGiven == 0.0f && this.shotCount == 0;
    }

    public boolean isStatAffectedByPower(TowerStatType towerStatType) {
        return (Game.f8589i.towerManager.getStatConfig(this.type, towerStatType).unique || towerStatType == TowerStatType.RANGE) ? false : true;
    }

    public void onAbilitySet(int i, boolean z) {
    }

    public void onPreSell() {
    }

    @Override // com.prineside.tdi2.Building
    public void placedOnMap() {
    }

    public void registerNearbyModifier(Modifier.ModifierSidePair modifierSidePair) {
        int i = 0;
        while (true) {
            DelayedRemovalArray<Modifier.ModifierSidePair> delayedRemovalArray = this.f8923d;
            if (i < delayedRemovalArray.size) {
                if (delayedRemovalArray.get(i).modifierId != modifierSidePair.modifierId) {
                    i++;
                } else {
                    throw new IllegalStateException("modifier is already registered " + modifierSidePair.modifierId);
                }
            } else {
                delayedRemovalArray.add(modifierSidePair);
                ModifierType modifierType = modifierSidePair.modifierType;
                if (modifierType == ModifierType.SEARCH) {
                    this.f8929s++;
                } else if (modifierType == ModifierType.POWER) {
                    this.f8930t++;
                } else if (modifierType == ModifierType.MINING_SPEED) {
                    this.f8931u++;
                } else if (modifierType == ModifierType.BOUNTY) {
                    this.bountyModifiersNearby++;
                }
                if (modifierType == ModifierType.DAMAGE) {
                    Modifier.ConnectionSide connectionSide = modifierSidePair.side;
                    if (connectionSide != Modifier.ConnectionSide.TOP && connectionSide != Modifier.ConnectionSide.LEFT && connectionSide != Modifier.ConnectionSide.RIGHT && connectionSide != Modifier.ConnectionSide.BOTTOM) {
                        this.f8926p++;
                    } else {
                        this.f8925k++;
                    }
                } else if (modifierType == ModifierType.ATTACK_SPEED) {
                    Modifier.ConnectionSide connectionSide2 = modifierSidePair.side;
                    if (connectionSide2 != Modifier.ConnectionSide.TOP && connectionSide2 != Modifier.ConnectionSide.LEFT && connectionSide2 != Modifier.ConnectionSide.RIGHT && connectionSide2 != Modifier.ConnectionSide.BOTTOM) {
                        this.f8928r++;
                    } else {
                        this.f8927q++;
                    }
                }
                if (this.f8844S != null) {
                    updateCache();
                    return;
                }
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Building
    public void removedFromMap() {
    }

    public void rotateTo(float f, float f2, float f3, float f4) {
        rotateTo(PMath.getAngleBetweenPoints(getTile().center.f5527x, getTile().center.f5528y, f, f2), f3, f4);
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public final int scheduledUpdatableGetId() {
        return this.f8917C;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public final void scheduledUpdatableSetId(int i) {
        this.f8917C = i;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
    }

    public void setAimStrategy(AimStrategy aimStrategy) {
        this.aimStrategy = aimStrategy;
    }

    public void setTarget(Enemy enemy) {
        this.f8921G = this.f8844S.enemy.getReference(enemy);
    }

    public void setUpgradeLevel(int i) {
        if (i < 0) {
            i = 0;
        }
        if (i > 10) {
            i = 10;
        }
        this.f8935y = i;
    }

    public boolean shouldSearchForTarget() {
        return canAim();
    }

    public void updateCache() {
        TowerStatType[] statTypes;
        this.f8919E = 1;
        for (TowerStatType towerStatType : Game.f8589i.towerManager.getStatTypes(this.type)) {
            this.f8918D[towerStatType.ordinal()] = getStatBuffed(towerStatType);
            this.f8919E = (this.f8919E * 31) + ((int) (this.f8918D[towerStatType.ordinal()] * 1000.0f));
        }
        float range = getRange() * 128.0f;
        this.rangeInPixels = range;
        this.rangeInPixelsSqr = range * range;
        float minRange = getMinRange() * 128.0f;
        this.minRangeInPixels = minRange;
        this.f8916B = minRange * minRange;
        this.experienceGeneration = this.f8844S.gameValue.getFloatValue(GameValueType.TOWERS_EXPERIENCE_GENERATION, Game.f8589i.towerManager.getExperienceGenerationGameValueType(this.type)) * (this.f8935y / 10.0f);
        this.experienceMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWERS_EXPERIENCE_MULTIPLIER, Game.f8589i.towerManager.getExperienceMultiplierGameValueType(this.type));
        if (getTile() != null && getTile().bonusType == SpaceTileBonusType.BONUS_EXPERIENCE && getTile().bonusLevel > 0) {
            this.experienceMultiplier *= SpaceTileBonus.getEffect(getTile().bonusType, getTile().bonusLevel);
        }
        this.f8920F.clear();
    }

    public void updateCustomButton(ComplexButton complexButton, boolean z) {
    }

    public void upgrade(int i) {
        if (i > getMaxUpgradeLevel()) {
            i = getMaxUpgradeLevel();
        }
        this.f8935y = i;
        updateCache();
    }

    static {
        int[] iArr = new int[257];
        LEVEL_EXPERIENCE = iArr;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 30;
        iArr[3] = 40;
        iArr[4] = 60;
        iArr[5] = 90;
        iArr[6] = 140;
        iArr[7] = 210;
        iArr[8] = 280;
        iArr[9] = 340;
        iArr[10] = 500;
        iArr[11] = 600;
        iArr[12] = 650;
        iArr[13] = 700;
        iArr[14] = 750;
        iArr[15] = 800;
        iArr[16] = 850;
        iArr[17] = 900;
        iArr[18] = 950;
        iArr[19] = 1000;
        iArr[20] = 1050;
        for (int i = 21; i < 257; i++) {
            LEVEL_EXPERIENCE[i] = ((i - 20) * 50) + 1050;
        }
        LEVEL_EXPERIENCE_MILESTONES = new int[257];
        int i2 = 0;
        for (int i3 = 0; i3 <= 256; i3++) {
            i2 += LEVEL_EXPERIENCE[i3];
            LEVEL_EXPERIENCE_MILESTONES[i3] = i2;
        }
        AimStrategyEnemyComparator[] aimStrategyEnemyComparatorArr = new AimStrategyEnemyComparator[AimStrategy.values.length];
        f8911I = aimStrategyEnemyComparatorArr;
        aimStrategyEnemyComparatorArr[AimStrategy.FIRST.ordinal()] = new AimStrategyEnemyComparator() { // from class: com.prineside.tdi2.Tower.1
            @Override // com.prineside.tdi2.Tower.AimStrategyEnemyComparator
            public boolean compare(Tower tower, Enemy enemy, Enemy enemy2) {
                float lengthInTiles;
                Path path = enemy.graphPath;
                float f = 9001.0f;
                if (path == null) {
                    lengthInTiles = 9001.0f;
                } else {
                    lengthInTiles = path.getLengthInTiles() - enemy.passedTiles;
                }
                Path path2 = enemy2.graphPath;
                if (path2 != null) {
                    f = path2.getLengthInTiles() - enemy2.passedTiles;
                }
                if (lengthInTiles < f) {
                    return true;
                }
                return false;
            }
        };
        aimStrategyEnemyComparatorArr[AimStrategy.LAST.ordinal()] = new AimStrategyEnemyComparator() { // from class: com.prineside.tdi2.Tower.2
            @Override // com.prineside.tdi2.Tower.AimStrategyEnemyComparator
            public boolean compare(Tower tower, Enemy enemy, Enemy enemy2) {
                float lengthInTiles;
                Path path = enemy.graphPath;
                float f = 9001.0f;
                if (path == null) {
                    lengthInTiles = 9001.0f;
                } else {
                    lengthInTiles = path.getLengthInTiles() - enemy.passedTiles;
                }
                Path path2 = enemy2.graphPath;
                if (path2 != null) {
                    f = path2.getLengthInTiles() - enemy2.passedTiles;
                }
                if (lengthInTiles > f) {
                    return true;
                }
                return false;
            }
        };
        aimStrategyEnemyComparatorArr[AimStrategy.WEAKEST.ordinal()] = new AimStrategyEnemyComparator() { // from class: com.prineside.tdi2.Tower.3
            @Override // com.prineside.tdi2.Tower.AimStrategyEnemyComparator
            public boolean compare(Tower tower, Enemy enemy, Enemy enemy2) {
                return enemy.getHealth() < enemy2.getHealth();
            }
        };
        aimStrategyEnemyComparatorArr[AimStrategy.STRONGEST.ordinal()] = new AimStrategyEnemyComparator() { // from class: com.prineside.tdi2.Tower.4
            @Override // com.prineside.tdi2.Tower.AimStrategyEnemyComparator
            public boolean compare(Tower tower, Enemy enemy, Enemy enemy2) {
                return enemy.getHealth() > enemy2.getHealth();
            }
        };
        aimStrategyEnemyComparatorArr[AimStrategy.NEAREST.ordinal()] = new AimStrategyEnemyComparator() { // from class: com.prineside.tdi2.Tower.5
            @Override // com.prineside.tdi2.Tower.AimStrategyEnemyComparator
            public boolean compare(Tower tower, Enemy enemy, Enemy enemy2) {
                return tower.getTile().center.dst2(enemy.getPosition()) < tower.getTile().center.dst2(enemy2.getPosition());
            }
        };
        searchEnemiesHelper = new Array<>(Enemy.class);
        f8912J = new StringBuilder();
        f8913K = new Vector2();
        f8914L = -1;
    }

    public Tower(TowerType towerType) {
        super(BuildingType.TOWER);
        this.aimStrategy = AimStrategy.FIRST;
        this.moneySpentOn = new CheatSafeInt(0, 0);
        this.f8923d = new DelayedRemovalArray<>(false, 1, Modifier.ModifierSidePair.class);
        this.damageGiven = 0.0f;
        this.shotCount = 0;
        this.angle = 0.0f;
        this.experience = 0.0f;
        this.currentLevelExperience = 0.0f;
        this.nextLevelExperience = 0.0f;
        this.f8934x = 1;
        this.f8935y = 0;
        this.installedAbilities = new boolean[6];
        this.experienceGeneration = 0.0f;
        this.experienceMultiplier = 1.0f;
        this.f8917C = -1;
        this.f8918D = new float[TowerStatType.values.length];
        this.f8920F = new Array<>(false, 1, Tile.class);
        this.f8921G = Enemy.EnemyReference.NULL;
        this.dpsDamage = new float[10];
        this.dpsTime = new float[10];
        this.mdps = 0.0f;
        this.enemiesKilled = 0;
        this.bonusCoinsBrought = 0.0f;
        this.type = towerType;
    }

    public static float getExpLevelStatBonusPercentage(int i, GameValueProvider gameValueProvider) {
        double d;
        double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(GameValueType.TOWERS_POWER_PER_LEVEL_TILL_10);
        if (i < 11) {
            double d2 = i;
            Double.isNaN(d2);
            d = percentValueAsMultiplier * d2;
        } else {
            double d3 = i - 10;
            double percentValueAsMultiplier2 = gameValueProvider.getPercentValueAsMultiplier(GameValueType.TOWERS_POWER_PER_LEVEL_AFTER_10);
            Double.isNaN(d3);
            d = (percentValueAsMultiplier * 10.0d) + (d3 * percentValueAsMultiplier2);
        }
        return (float) d;
    }

    /* renamed from: b */
    public void m21895b(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        Factory<? extends Tower> factory = Game.f8589i.towerManager.getFactory(this.type);
        if (drawMode == MapRenderingSystem.DrawMode.DETAILED || drawMode == MapRenderingSystem.DrawMode.MAP_EDITOR) {
            if (getTile().bonusLevel != 0) {
                spriteCache.setColor(Config.BACKGROUND_COLOR);
                float f = i;
                float f2 = i2;
                spriteCache.add(factory.roundedSmallRectTextureRegion, f + 7.0f, f2 + 7.0f, 36.0f, 36.0f);
                spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                getTile().drawBonusExtras(spriteCache, f + 3.0f, f2 + 3.0f, 44.0f, 44.0f, false, true);
            }
            if (canAim()) {
                spriteCache.setColor(Game.f8589i.towerManager.getAimStrategyColor(this.aimStrategy));
                float f3 = ((i + 128) - 7.0f) - 36.0f;
                float f4 = ((i2 + 128) - 36.0f) - 7.0f;
                spriteCache.add(factory.roundedSmallRectTextureRegion, f3, f4, 36.0f, 36.0f);
                spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                spriteCache.add(Game.f8589i.towerManager.getAimStrategyIcon(this.aimStrategy), f3, f4, 36.0f, 36.0f);
            }
            ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
            StringBuilder stringBuilder = f8912J;
            stringBuilder.setLength(0);
            stringBuilder.append(this.f8935y);
            float f5 = Config.BLACK_SEMITRANSPARENT_COLOR_FLOAT_BITS;
            float f6 = i;
            float f7 = i2 + 74.0f;
            DrawUtils.drawFontToCache(spriteCache, stringBuilder, font, f5, f6 + 3.0f, f7 - 3.0f, 128.0f, 1, false);
            DrawUtils.drawFontToCache(spriteCache, stringBuilder, font, Config.WHITE_COLOR_CACHED_FLOAT_BITS.toFloatBits(), f6, f7, 128.0f, 1, false);
            ResourcePack.ResourcePackBitmapFont font2 = Game.f8589i.assetManager.getFont(24);
            stringBuilder.setLength(0);
            stringBuilder.append("L").append(this.f8934x);
            DrawUtils.drawFontToCache(spriteCache, stringBuilder, font2, f5, f6 + 2.0f, (f7 - 2.0f) - 40.0f, 128.0f, 1, false);
            DrawUtils.drawFontToCache(spriteCache, stringBuilder, font2, Config.WHITE_SEMITRANSPARENT_COLOR_FLOAT_BITS, f6, f7 - 40.0f, 128.0f, 1, false);
        }
    }

    /* renamed from: c */
    public void m21894c(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        Factory<? extends Tower> factory = Game.f8589i.towerManager.getFactory(this.type);
        spriteCache.setColor(SHADOW_COLOR);
        float f = i;
        float f2 = i2;
        TextureRegionConfig.drawCache(factory.getShadowTextures(), spriteCache, f, f2, 128.0f);
        if (drawMode == MapRenderingSystem.DrawMode.DEFAULT) {
            spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            TextureRegionConfig.drawCache(factory.getBaseTextures(), spriteCache, f, f2, 128.0f);
            TextureRegionConfig textureRegionConfig = factory.weaponShadowTexture;
            if (textureRegionConfig != null) {
                textureRegionConfig.drawCache(spriteCache, f, f2, 128.0f);
            }
        } else if (drawMode == MapRenderingSystem.DrawMode.DETAILED || drawMode == MapRenderingSystem.DrawMode.MAP_EDITOR) {
            spriteCache.setColor(f8910H);
            TextureRegionConfig.drawCache(factory.getBaseTextures(), spriteCache, f, f2, 128.0f);
            spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        }
    }

    public boolean canAbilityBeInstalled(int i) {
        if (this.installedAbilities[i] || i == 3) {
            return false;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            if (this.installedAbilities[i3]) {
                i2++;
            }
        }
        if (i < 3) {
            if ((i2 >= 1 || this.f8934x < 4) && (i2 >= 2 || this.f8934x < 7)) {
                return false;
            }
            return true;
        }
        boolean[] zArr = this.installedAbilities;
        if (zArr[4] || zArr[5] || this.f8934x < 20) {
            return false;
        }
        return true;
    }

    public boolean canAttackEnemy(Enemy enemy) {
        if (this.f8844S.tower.canTowerAttackEnemy[enemy.type.ordinal()][this.type.ordinal()] && enemy.canBeAttackedBy(this)) {
            return true;
        }
        return false;
    }

    @Override // com.prineside.tdi2.Building
    public Tower cloneBuilding() {
        Tower create = Game.f8589i.towerManager.getFactory(this.type).create();
        create.aimStrategy = this.aimStrategy;
        create.f8935y = this.f8935y;
        boolean[] zArr = this.installedAbilities;
        System.arraycopy(zArr, 0, create.installedAbilities, 0, zArr.length);
        create.outOfOrder = this.outOfOrder;
        create.angle = this.angle;
        create.currentLevelExperience = this.currentLevelExperience;
        create.damageGiven = this.damageGiven;
        create.experience = this.experience;
        create.f8934x = this.f8934x;
        create.nextLevelExperience = this.nextLevelExperience;
        create.moneySpentOn.set(this.moneySpentOn.get());
        return create;
    }

    public void drawBatch(SpriteBatch spriteBatch, float f) {
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_TOWER_XP) != 0.0d && getTile().visibleOnScreen) {
            ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(21);
            font.draw(spriteBatch, "xp: " + (((int) (this.experience * 10.0f)) / 10.0f), getTile().center.f5527x - 32.0f, (getTile().center.f5528y - 64.0f) + 40.0f);
            font.draw(spriteBatch, "clxp: " + (((float) ((int) (this.currentLevelExperience * 10.0f))) / 10.0f), getTile().center.f5527x - 32.0f, (getTile().center.f5528y - 64.0f) + 20.0f);
        }
    }

    public void drawGlitch(SpriteBatch spriteBatch) {
        Factory<? extends Tower> factory = Game.f8589i.towerManager.getFactory(this.type);
        spriteBatch.setColor(1.0f, 0.0f, 0.0f, 0.8f);
        spriteBatch.draw(factory.f8943d, (((getTile().getX() * 128) - 6.4f) + (FastRandom.getFloat() * 12.8f)) - 6.4f, (((getTile().getY() * 128) - 6.4f) + (FastRandom.getFloat() * 12.8f)) - 6.4f, 140.8f, 140.8f);
        spriteBatch.setColor(0.0f, 1.0f, 1.0f, 0.8f);
        spriteBatch.draw(factory.f8943d, (((getTile().getX() * 128) - 6.4f) + (FastRandom.getFloat() * 12.8f)) - 6.4f, (((getTile().getY() * 128) - 6.4f) + (FastRandom.getFloat() * 12.8f)) - 6.4f, 140.8f, 140.8f);
        spriteBatch.setColor(1.0f, 1.0f, 0.0f, 0.8f);
        spriteBatch.draw(factory.f8943d, (((getTile().getX() * 128) - 6.4f) + (FastRandom.getFloat() * 12.8f)) - 6.4f, (((getTile().getY() * 128) - 6.4f) + (FastRandom.getFloat() * 12.8f)) - 6.4f, 140.8f, 140.8f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.draw(factory.f8943d, (getTile().getX() * 128) - 6.4f, (getTile().getY() * 128) - 6.4f, 140.8f, 140.8f);
    }

    public void fillTowerMenu(Group group, ObjectMap<String, Object> objectMap) {
        Label label;
        Object valueOf;
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_BUILDING_INFO) != 0.0d) {
            if (objectMap.containsKey("_dbgBuildingInfo")) {
                label = (Label) objectMap.get("_dbgBuildingInfo");
            } else {
                Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
                group.addActor(label2);
                objectMap.put("_dbgBuildingInfo", label2);
                label = label2;
            }
            StringBuilder stringBuilder = f8912J;
            stringBuilder.setLength(0);
            StringBuilder append = stringBuilder.append("target: ");
            if (getTarget() == null) {
                valueOf = "-";
            } else {
                valueOf = Integer.valueOf(getTarget().f8552id);
            }
            append.append(String.valueOf(valueOf)).append("\n");
            stringBuilder.append("targetSearchTime: ").append(this.f8936z).append("\n");
            stringBuilder.append("shotCount: ").append(this.shotCount).append("\n");
            stringBuilder.append("timeSinceLastAttack: ").append(this.f8915A).append("\n");
            stringBuilder.append("timeSinceConstantEnemySeeking: ").append(this.f8932v).append("\n");
            label.setText(stringBuilder);
            label.setPosition(-200.0f, 128.0f);
            label.setSize(180.0f, 200.0f);
            label.setAlignment(16);
        }
    }

    public Enemy findTarget(final ObjectFilter<Enemy> objectFilter) {
        Array<Enemy> array = searchEnemiesHelper;
        array.clear();
        f8914L = -1;
        this.f8844S.map.getEnemiesNearPoint(array, getTile().center.f5527x, getTile().center.f5528y, this.rangeInPixels, this.minRangeInPixels, new ObjectFilter() { // from class: com.prineside.tdi2.z1
            @Override // com.prineside.tdi2.utils.ObjectFilter
            public final boolean passes(Object obj) {
                boolean m21893d;
                m21893d = Tower.this.m21893d(objectFilter, (Enemy) obj);
                return m21893d;
            }
        });
        AimStrategy aimStrategy = this.aimStrategy;
        Enemy enemy = null;
        if (aimStrategy == AimStrategy.RANDOM) {
            int i = array.size;
            if (i != 0) {
                enemy = array.get(this.f8844S.gameState.randomInt(i));
            }
        } else {
            AimStrategyEnemyComparator aimStrategyEnemyComparator = f8911I[aimStrategy.ordinal()];
            int i2 = 0;
            while (true) {
                Array<Enemy> array2 = searchEnemiesHelper;
                if (i2 >= array2.size) {
                    break;
                }
                Enemy enemy2 = array2.items[i2];
                if (enemy == null || aimStrategyEnemyComparator.compare(this, enemy2, enemy)) {
                    enemy = enemy2;
                }
                i2++;
            }
        }
        searchEnemiesHelper.clear();
        return enemy;
    }

    public int getMaxTowerLevel() {
        return Math.min(this.f8844S.gameValue.getIntValue(GameValueType.TOWERS_MAX_EXP_LEVEL, Game.f8589i.towerManager.getMaxExpLevelGameValueType(this.type)), 256);
    }

    public int getMaxUpgradeLevel() {
        return Math.min(this.f8844S.gameValue.getIntValue(GameValueType.TOWERS_MAX_UPGRADE_LEVEL, Game.f8589i.towerManager.getMaxUpgradeLevelGameValueType(this.type)), 10);
    }

    public float getPowerCombinedMultiplier() {
        float percentValueAsMultiplier = (((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.MODIFIER_POWER_VALUE)) * this.f8930t) + 1.0f;
        if (getTile() != null) {
            SpaceTileBonusType spaceTileBonusType = getTile().bonusType;
            SpaceTileBonusType spaceTileBonusType2 = SpaceTileBonusType.PWR_MULTIPLIER;
            if (spaceTileBonusType == spaceTileBonusType2 && getTile().bonusLevel != 0) {
                percentValueAsMultiplier += SpaceTileBonus.getEffect(spaceTileBonusType2, getTile().bonusLevel) - 1.0f;
            }
        }
        float expLevelStatBonusPercentage = percentValueAsMultiplier + getExpLevelStatBonusPercentage(getLevel(), this.f8844S.gameValue);
        if (isAbilityInstalled(5)) {
            double d = expLevelStatBonusPercentage;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWERS_POWERFUL_ABILITY_PWR);
            Double.isNaN(d);
            return (float) (d * percentValueAsMultiplier2);
        }
        return expLevelStatBonusPercentage;
    }

    public Array<Tile> getTilesInRange() {
        if (this.f8920F.size == 0 && getTile() != null && getTile().f8900a != null) {
            DelayedRemovalArray<Tile> delayedRemovalArray = getTile().f8900a.tilesArray;
            for (int i = 0; i < delayedRemovalArray.size; i++) {
                Tile tile = delayedRemovalArray.items[i];
                float f = getTile().center.f5527x;
                float f2 = getTile().center.f5528y;
                float f3 = this.rangeInPixels;
                Vector2 vector2 = tile.center;
                if (PMath.circleIntersectsRect(f, f2, f3, vector2.f5527x - 64.0f, vector2.f5528y - 64.0f, 128.0f, 128.0f)) {
                    this.f8920F.add(tile);
                }
            }
        }
        return this.f8920F;
    }

    public boolean isOutOfOrder() {
        if (this.outOfOrder) {
            return true;
        }
        PlatformTile tile = getTile();
        if (tile != null && tile.enemies.size != 0) {
            int i = 0;
            while (true) {
                DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = tile.enemies;
                if (i >= delayedRemovalArray.size) {
                    break;
                }
                Enemy enemy = delayedRemovalArray.items[i].enemy;
                if (enemy != null && !enemy.disabled) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    public void loadFromJson(JsonValue jsonValue) {
        try {
            this.aimStrategy = AimStrategy.valueOf(jsonValue.getString("as"));
            this.f8935y = jsonValue.getInt("ul");
            this.experience = jsonValue.getFloat("e");
            int i = 0;
            Iterator<JsonValue> iterator2 = jsonValue.get("ia").iterator2();
            while (iterator2.hasNext()) {
                this.installedAbilities[i] = iterator2.next().asBoolean();
                i++;
            }
        } catch (Exception e) {
            Logger.error("Tower", "failed to load tower from json", e);
        }
    }

    @Override // com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8924id = input.readVarInt(true);
        this.type = (TowerType) kryo.readObjectOrNull(input, TowerType.class);
        this.aimStrategy = (AimStrategy) kryo.readObject(input, AimStrategy.class);
        this.moneySpentOn = (CheatSafeInt) kryo.readObject(input, CheatSafeInt.class);
        this.f8922b = input.readFloat();
        this.f8923d = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f8925k = input.readInt();
        this.f8926p = input.readInt();
        this.f8927q = input.readInt();
        this.f8928r = input.readInt();
        this.f8929s = input.readInt();
        this.f8930t = input.readInt();
        this.f8931u = input.readInt();
        this.bountyModifiersNearby = input.readInt();
        this.f8932v = input.readFloat();
        this.f8933w = input.readBoolean();
        this.damageGiven = input.readFloat();
        this.shotCount = input.readVarInt(true);
        this.angle = input.readFloat();
        this.experience = input.readFloat();
        this.currentLevelExperience = input.readFloat();
        this.nextLevelExperience = input.readFloat();
        this.f8934x = input.readVarInt(true);
        this.f8935y = input.readVarInt(true);
        this.installedAbilities = (boolean[]) kryo.readObject(input, boolean[].class);
        this.f8936z = input.readFloat();
        this.f8915A = input.readFloat();
        this.rangeInPixels = input.readFloat();
        this.rangeInPixelsSqr = input.readFloat();
        this.minRangeInPixels = input.readFloat();
        this.f8916B = input.readFloat();
        this.experienceGeneration = input.readFloat();
        this.experienceMultiplier = input.readFloat();
        this.f8918D = (float[]) kryo.readObject(input, float[].class);
        this.f8919E = input.readInt();
        this.outOfOrder = input.readBoolean();
        this.attackDisabled = input.readBoolean();
        this.f8921G = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.dpsDamage = (float[]) kryo.readObject(input, float[].class);
        this.dpsTime = (float[]) kryo.readObject(input, float[].class);
        this.mdps = input.readFloat();
        this.enemiesKilled = input.readInt();
        this.bonusCoinsBrought = input.readFloat();
        this.f8917C = input.readVarInt(true);
    }

    public void rotateTo(float f, float f2, float f3) {
        float f4 = this.angle;
        if (f == f4) {
            return;
        }
        float distanceBetweenAngles = PMath.getDistanceBetweenAngles(f4, f);
        float f5 = f2 * f3;
        if (f5 >= StrictMath.abs(distanceBetweenAngles)) {
            this.angle = f;
        } else if (distanceBetweenAngles < 0.0f) {
            this.angle -= f5;
        } else {
            this.angle += f5;
        }
    }

    public void setExperience(float f) {
        this.experience = f;
        int maxTowerLevel = getMaxTowerLevel();
        int i = this.f8934x;
        if (i != maxTowerLevel) {
            while (true) {
                i++;
                if (i > maxTowerLevel || ((int) this.experience) < LEVEL_EXPERIENCE_MILESTONES[i]) {
                    break;
                }
                this.f8934x = i;
                updateCache();
            }
            int i2 = this.f8934x;
            if (i2 != maxTowerLevel) {
                this.nextLevelExperience = LEVEL_EXPERIENCE[i2 + 1];
            } else {
                this.nextLevelExperience = 0.0f;
            }
        }
        this.currentLevelExperience = this.experience - LEVEL_EXPERIENCE_MILESTONES[this.f8934x];
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8920F.clear();
        this.f8921G = Enemy.EnemyReference.NULL;
        super.setUnregistered();
    }

    public void unregisterNearbyModifier(Modifier modifier) {
        Modifier.ModifierSidePair modifierSidePair;
        this.f8923d.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Modifier.ModifierSidePair> delayedRemovalArray = this.f8923d;
            if (i < delayedRemovalArray.size) {
                if (delayedRemovalArray.items[i].modifierId == modifier.f8773id) {
                    modifierSidePair = delayedRemovalArray.get(i);
                    this.f8923d.removeIndex(i);
                    break;
                }
                i++;
            } else {
                modifierSidePair = null;
                break;
            }
        }
        this.f8923d.end();
        if (modifierSidePair != null) {
            ModifierType modifierType = modifier.type;
            if (modifierType == ModifierType.SEARCH) {
                this.f8929s--;
            }
            if (modifierType == ModifierType.POWER) {
                this.f8930t--;
            } else if (modifierType == ModifierType.MINING_SPEED) {
                this.f8931u--;
            } else if (modifierType == ModifierType.BOUNTY) {
                this.bountyModifiersNearby--;
            }
            if (modifierType == ModifierType.DAMAGE) {
                Modifier.ConnectionSide connectionSide = modifierSidePair.side;
                if (connectionSide != Modifier.ConnectionSide.TOP && connectionSide != Modifier.ConnectionSide.LEFT && connectionSide != Modifier.ConnectionSide.RIGHT && connectionSide != Modifier.ConnectionSide.BOTTOM) {
                    this.f8926p--;
                } else {
                    this.f8925k--;
                }
            } else if (modifierType == ModifierType.ATTACK_SPEED) {
                Modifier.ConnectionSide connectionSide2 = modifierSidePair.side;
                if (connectionSide2 != Modifier.ConnectionSide.TOP && connectionSide2 != Modifier.ConnectionSide.LEFT && connectionSide2 != Modifier.ConnectionSide.RIGHT && connectionSide2 != Modifier.ConnectionSide.BOTTOM) {
                    this.f8928r--;
                } else {
                    this.f8927q--;
                }
            }
            if (this.f8844S != null) {
                updateCache();
                return;
            }
            return;
        }
        throw new IllegalStateException("modifier was not registered " + modifier);
    }

    public void update(float f) {
        this.f8922b += f;
        if (!isOutOfOrder() && shouldSearchForTarget()) {
            this.f8915A += f;
            if (this.f8929s != 0) {
                float f2 = this.f8932v + f;
                this.f8932v = f2;
                if (f2 > 0.25f && this.f8933w) {
                    Enemy findTarget = findTarget();
                    if (getTarget() != findTarget) {
                        setTarget(findTarget);
                    }
                    this.f8932v = 0.0f;
                    this.f8933w = false;
                }
            }
            if (getTarget() == null || !canAttack()) {
                this.f8915A = StrictMath.min(this.f8915A, getAttackDelay());
            }
            if (getTarget() != null) {
                float dst2 = getTile().center.dst2(getTarget().getPosition());
                if (dst2 > this.rangeInPixelsSqr || dst2 < this.f8916B) {
                    setTarget(null);
                }
            }
            if (getTarget() == null) {
                float f3 = this.f8936z + f;
                this.f8936z = f3;
                if (f3 > 0.25f) {
                    this.f8936z = 0.0f;
                    setTarget(findTarget());
                }
            }
            if (getTarget() != null && canAttack()) {
                float attackDelay = getAttackDelay();
                int i = (int) (this.f8915A / attackDelay);
                if (i > 0) {
                    attack(i);
                    this.f8933w = true;
                    float f4 = this.f8915A - (attackDelay * i);
                    this.f8915A = f4;
                    if (f4 < 0.0f) {
                        this.f8915A = 0.0f;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ boolean m21893d(ObjectFilter objectFilter, Enemy enemy) {
        boolean z;
        boolean z2 = !canAttackEnemy(enemy);
        if (objectFilter != null && !objectFilter.passes(enemy)) {
            z = true;
        } else {
            z = false;
        }
        if (z | z2) {
            return false;
        }
        int enemyPriority = getEnemyPriority(enemy);
        int i = f8914L;
        if (enemyPriority > i) {
            f8914L = enemyPriority;
            searchEnemiesHelper.clear();
            return true;
        } else if (enemyPriority == i) {
            return true;
        } else {
            return false;
        }
    }

    public boolean canAttack() {
        if (getTarget() == null || this.attackDisabled) {
            return false;
        }
        if (StrictMath.abs(PMath.getDistanceBetweenAngles(this.angle, PMath.getAngleBetweenPoints(getTile().center, getTarget().getPosition()))) >= 3.0f) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        m21894c(spriteCache, i, i2, drawMode);
        m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Building
    public void drawHoveredRange(Batch batch, RangeCircle rangeCircle) {
        float f = getTile().center.f5527x;
        float f2 = getTile().center.f5528y;
        float minRange = getMinRange() * 128.0f;
        float range = getRange() * 128.0f;
        if (rangeCircle.getX() != f || rangeCircle.getY() != f2 || rangeCircle.getMinRadius() != minRange || rangeCircle.getMaxRadius() != range) {
            rangeCircle.setup(f, f2, minRange, range, MapSystem.TOWER_RANGE_HOVER_COLOR);
        }
        rangeCircle.draw(batch);
    }

    @Override // com.prineside.tdi2.Building
    public void drawSelectedRange(Batch batch, RangeCircle rangeCircle) {
        float f = getTile().center.f5527x;
        float f2 = getTile().center.f5528y;
        float minRange = getMinRange() * 128.0f;
        float range = getRange() * 128.0f;
        if (rangeCircle.getX() != f || rangeCircle.getY() != f2 || rangeCircle.getMinRadius() != minRange || rangeCircle.getMaxRadius() != range) {
            rangeCircle.setup(f, f2, minRange, range, MapSystem.TOWER_RANGE_SELECTED_COLOR);
        }
        rangeCircle.draw(batch);
    }

    public void drawWeapon(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        if (getTile().visibleOnScreen && !isOutOfOrder()) {
            TextureRegionConfig.drawBatch(getWeaponTextures(), spriteBatch, f, f2, f3, 1.0f, this.angle);
        }
    }

    /* renamed from: e */
    public void m21892e(float f, float f2) {
        Enemy target = getTarget();
        if (target != null && !isOutOfOrder()) {
            rotateTo(target.getPosition().f5527x, target.getPosition().f5528y, f, f2);
        }
    }

    public int getSellPrice() {
        if (isSellFullRefundStillActive()) {
            return this.moneySpentOn.get();
        }
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWERS_SELL_REFUND);
        if (getTile() != null) {
            SpaceTileBonusType spaceTileBonusType = getTile().bonusType;
            SpaceTileBonusType spaceTileBonusType2 = SpaceTileBonusType.SELL_REFUND;
            if (spaceTileBonusType == spaceTileBonusType2 && getTile().bonusLevel > 0) {
                float effect = SpaceTileBonus.getEffect(spaceTileBonusType2, getTile().bonusLevel);
                if (effect > percentValueAsMultiplier) {
                    percentValueAsMultiplier = effect;
                }
            }
        }
        if (percentValueAsMultiplier > 1.0f) {
            percentValueAsMultiplier = 1.0f;
        }
        return (int) (this.moneySpentOn.get() * percentValueAsMultiplier);
    }

    public float getStatBuffed(TowerStatType towerStatType) {
        float f;
        int i;
        SpaceTileBonusType spaceTileBonusType;
        float stat = getStat(towerStatType);
        if (getTile() != null && (spaceTileBonusType = SpaceTileBonus.f8892b[towerStatType.ordinal()]) != null && spaceTileBonusType == getTile().bonusType && getTile().bonusLevel > 0) {
            stat *= SpaceTileBonus.getEffect(spaceTileBonusType, getTile().bonusLevel);
        }
        if (isStatAffectedByPower(towerStatType)) {
            stat *= ((getPowerCombinedMultiplier() - 1.0f) * Game.f8589i.towerManager.getStatConfig(this.type, towerStatType).pwrFactor) + 1.0f;
        }
        if (towerStatType == TowerStatType.DAMAGE) {
            double d = stat;
            double d2 = this.f8925k;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.MODIFIER_DAMAGE_VALUE);
            Double.isNaN(d2);
            Double.isNaN(d);
            Double.isNaN(d);
            f = (float) (d + (d2 * percentValueAsMultiplier * d));
            i = this.f8928r;
        } else if (towerStatType == TowerStatType.ATTACK_SPEED) {
            double d3 = stat;
            double d4 = this.f8927q;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.MODIFIER_ATTACK_SPEED_VALUE);
            Double.isNaN(d4);
            Double.isNaN(d3);
            Double.isNaN(d3);
            f = (float) (d3 + (d4 * percentValueAsMultiplier2 * d3));
            i = this.f8926p;
        } else {
            if (towerStatType == TowerStatType.RANGE) {
                double d5 = stat;
                double d6 = this.f8929s;
                double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.MODIFIER_SEARCH_RANGE_VALUE);
                Double.isNaN(d6);
                Double.isNaN(d5);
                Double.isNaN(d5);
                stat = (float) (d5 + (d6 * percentValueAsMultiplier3 * d5));
            }
            if (towerStatType != TowerStatType.ROTATION_SPEED || towerStatType == TowerStatType.PROJECTILE_SPEED) {
                stat -= (this.f8931u * 0.05f) * stat;
            }
            return Game.f8589i.towerManager.clampStat(this.type, towerStatType, stat);
        }
        stat = f - ((i * 0.05f) * f);
        if (towerStatType != TowerStatType.ROTATION_SPEED) {
        }
        stat -= (this.f8931u * 0.05f) * stat;
        return Game.f8589i.towerManager.clampStat(this.type, towerStatType, stat);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        setExperience(this.experience);
        updateCache();
    }

    @Override // com.prineside.tdi2.Building
    public void setTile(PlatformTile platformTile) {
        super.setTile(platformTile);
        if (isRegistered()) {
            updateCache();
        }
    }

    @Override // com.prineside.tdi2.Building
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("type", this.type.name());
        json.writeValue("as", this.aimStrategy.name());
        json.writeValue("e", Float.valueOf(this.experience));
        json.writeValue("ul", Integer.valueOf(this.f8935y));
        json.writeArrayStart("ia");
        for (boolean z : this.installedAbilities) {
            json.writeValue(Boolean.valueOf(z));
        }
        json.writeArrayEnd();
    }

    @Override // com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f8924id, true);
        kryo.writeObjectOrNull(output, this.type, TowerType.class);
        kryo.writeObject(output, this.aimStrategy);
        kryo.writeObject(output, this.moneySpentOn);
        output.writeFloat(this.f8922b);
        kryo.writeObject(output, this.f8923d);
        output.writeInt(this.f8925k);
        output.writeInt(this.f8926p);
        output.writeInt(this.f8927q);
        output.writeInt(this.f8928r);
        output.writeInt(this.f8929s);
        output.writeInt(this.f8930t);
        output.writeInt(this.f8931u);
        output.writeInt(this.bountyModifiersNearby);
        output.writeFloat(this.f8932v);
        output.writeBoolean(this.f8933w);
        output.writeFloat(this.damageGiven);
        output.writeVarInt(this.shotCount, true);
        output.writeFloat(this.angle);
        output.writeFloat(this.experience);
        output.writeFloat(this.currentLevelExperience);
        output.writeFloat(this.nextLevelExperience);
        output.writeVarInt(this.f8934x, true);
        output.writeVarInt(this.f8935y, true);
        kryo.writeObject(output, this.installedAbilities);
        output.writeFloat(this.f8936z);
        output.writeFloat(this.f8915A);
        output.writeFloat(this.rangeInPixels);
        output.writeFloat(this.rangeInPixelsSqr);
        output.writeFloat(this.minRangeInPixels);
        output.writeFloat(this.f8916B);
        output.writeFloat(this.experienceGeneration);
        output.writeFloat(this.experienceMultiplier);
        kryo.writeObject(output, this.f8918D);
        output.writeInt(this.f8919E);
        output.writeBoolean(this.outOfOrder);
        output.writeBoolean(this.attackDisabled);
        kryo.writeObject(output, this.f8921G);
        kryo.writeObject(output, this.dpsDamage);
        kryo.writeObject(output, this.dpsTime);
        output.writeFloat(this.mdps);
        output.writeInt(this.enemiesKilled);
        output.writeFloat(this.bonusCoinsBrought);
        output.writeVarInt(this.f8917C, true);
    }

    public void upgrade() {
        upgrade(this.f8935y + 1);
    }
}
