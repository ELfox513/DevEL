package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.projectiles.BasicProjectile;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.ParticleSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class BasicTower extends Tower {
    public static final int ABILITY_FOUNDATION = 2;

    /* renamed from: U */
    public static final Vector2 f12168U = new Vector2();

    /* renamed from: V */
    public static final Array<Tower> f12169V = new Array<>(Tower.class);

    /* renamed from: W */
    public static final int[] f12170W = {1, 2, 3, 5, 4};

    /* renamed from: M */
    public float f12171M;

    /* renamed from: N */
    public float f12172N;

    /* renamed from: O */
    public float f12173O;

    /* renamed from: P */
    public int f12174P;

    /* renamed from: Q */
    public float f12175Q;

    /* renamed from: R */
    public boolean f12176R;

    /* renamed from: T */
    public DelayedRemovalArray<Tower> f12177T;

    /* renamed from: com.prineside.tdi2.towers.BasicTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24241 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12178a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12178a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12178a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12178a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12178a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12178a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BasicTowerFactory extends Tower.Factory<BasicTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12179i;

        public BasicTowerFactory() {
            super("tower-basic", TowerType.BASIC);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 8;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.TEAL.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24241.f12178a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return i != 5 ? 0 : 4;
                        }
                        return 1;
                    }
                    return 3;
                }
                return 4;
            }
            return 3;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public BasicTower create() {
            return new BasicTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12179i = Game.f8589i.towerManager.getTextureConfig(TowerType.BASIC, "weapon");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-basic-weapon-shadow"), 53.0f, 24.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_DOUBLE_GUN_ATTACK_SPEED), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_LARGE_CALIBER_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_FOUNDATION_SPEED), 2, true).toString();
            abilityConfigs[2].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_BASIC_A_FOUNDATION_RICOCHET_CHANCE), 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_BASIC_A_COPY_COUNT), false).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_BASIC_A_COPY_UPGRADE_LEVEL), 2, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{""};
            abilityConfigArr[1].descriptionArgs = new String[]{""};
            abilityConfigArr[2].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[4].descriptionArgs = new String[]{"", ""};
        }
    }

    public /* synthetic */ BasicTower(C24241 c24241) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12175Q;
    }

    @Override // com.prineside.tdi2.Tower
    public float getScheduledUpdateInterval() {
        return 0.21f;
    }

    @Override // com.prineside.tdi2.Tower
    public int getSellPrice() {
        if (isAbilityInstalled(3)) {
            this.moneySpentOn.sub(this.f12174P);
            int sellPrice = super.getSellPrice();
            this.moneySpentOn.add(this.f12174P);
            return this.f12174P + sellPrice;
        }
        return super.getSellPrice();
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.BASIC.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.BASIC.f12179i;
    }

    public BasicTower() {
        super(TowerType.BASIC);
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.DAMAGE && isAbilityInstalled(1)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_LARGE_CALIBER_DAMAGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.ATTACK_SPEED && isAbilityInstalled(0)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_DOUBLE_GUN_ATTACK_SPEED);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        if ((towerStatType == TowerStatType.PROJECTILE_SPEED || towerStatType == TowerStatType.ROTATION_SPEED) && isAbilityInstalled(2)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_FOUNDATION_SPEED);
            Double.isNaN(d3);
            return (float) (d3 * percentValueAsMultiplier3);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower
    public void onAbilitySet(int i, boolean z) {
        Tower buildTower;
        Building building;
        if (i == 4) {
            int round = MathUtils.round(this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_BASIC_A_COPY_COUNT));
            float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_COPY_UPGRADE_LEVEL);
            for (int i2 = 0; i2 < round; i2++) {
                Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
                f12169V.clear();
                for (int i3 = 0; i3 < neighbourTiles.size; i3++) {
                    Tile tile = neighbourTiles.items[i3];
                    if (tile.type == TileType.PLATFORM && (building = ((PlatformTile) tile).building) != null && building.buildingType == BuildingType.TOWER) {
                        f12169V.add((Tower) building);
                    }
                }
                Array<Tower> array = f12169V;
                if (array.size == 0) {
                    array.add(this);
                }
                Tower tower = array.items[this.f8844S.gameState.randomInt(array.size)];
                array.clear();
                int floor = MathUtils.floor(tower.getUpgradeLevel() * percentValueAsMultiplier);
                if (floor > 10) {
                    floor = 10;
                }
                int i4 = 0;
                while (true) {
                    if (i4 < neighbourTiles.size) {
                        Tile tile2 = neighbourTiles.items[i4];
                        if (tile2.type == TileType.PLATFORM && ((PlatformTile) tile2).building == null && (buildTower = this.f8844S.tower.buildTower(tower.type, this.aimStrategy, tile2.getX(), tile2.getY(), true)) != null) {
                            if (floor != 0) {
                                buildTower.upgrade(floor);
                            }
                            if (this.f12177T == null) {
                                this.f12177T = new DelayedRemovalArray<>(true, 2, Tower.class);
                            }
                            this.f12177T.add(buildTower);
                        } else {
                            i4++;
                        }
                    }
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        m21892e(f, this.f12172N);
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        if (getTarget() == null) {
            return;
        }
        Vector2 vector2 = f12168U;
        PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, this.angle, 28.5f, vector2);
        if (isAbilityInstalled(0)) {
            if (this.f12176R) {
                PMath.getPointByAngleFromPoint(vector2.f5527x, vector2.f5528y, this.angle - 90.0f, 7.0f, vector2);
            } else {
                PMath.getPointByAngleFromPoint(vector2.f5527x, vector2.f5528y, this.angle + 90.0f, 7.0f, vector2);
            }
            this.f12176R = !this.f12176R;
        }
        BasicProjectile basicProjectile = (BasicProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.BASIC).obtain();
        this.f8844S.projectile.register(basicProjectile);
        basicProjectile.setup(this, getTarget(), i * this.f12171M, vector2, this.f12173O);
        ParticleSystem particleSystem = this.f8844S._particle;
        if (particleSystem != null) {
            particleSystem.addFlashParticle(Game.f8589i.assetManager.f9555TR.muzzleFlashSmall, vector2.f5527x, vector2.f5528y, 10.4f, 3.8999999f, 20.8f, 31.199999f, this.angle);
        }
        this.shotCount += i;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_BASIC, this);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12170W) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.BASIC.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    /* renamed from: f */
    public final float m20767f(BasicTower basicTower, float f) {
        float f2;
        DelayedRemovalArray<Tower> delayedRemovalArray;
        if (getLevel() < 20) {
            this.f8844S.tower.addExperienceRaw(this, f);
            if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S.gameState.canSkipMediaUpdate() && getTile() != null) {
                this.f8844S._particle.addXpOrbParticle(f, basicTower.getTile().getX(), basicTower.getTile().getY(), getTile().getX(), getTile().getY());
            }
            return f;
        }
        DelayedRemovalArray<Tower> delayedRemovalArray2 = this.f12177T;
        if (delayedRemovalArray2 != null) {
            delayedRemovalArray2.begin();
            int i = 0;
            f2 = f;
            while (true) {
                delayedRemovalArray = this.f12177T;
                if (i >= delayedRemovalArray.size) {
                    break;
                }
                Tower tower = delayedRemovalArray.items[i];
                if (!tower.isRegistered()) {
                    this.f12177T.removeIndex(i);
                } else {
                    float f3 = f2 / (this.f12177T.size - i);
                    if (tower.type == TowerType.BASIC) {
                        f2 -= ((BasicTower) tower).m20767f(basicTower, f3);
                    } else if (tower.getLevel() < 20) {
                        this.f8844S.tower.addExperienceRaw(tower, f3);
                        f2 -= f3;
                        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S.gameState.canSkipMediaUpdate() && tower.getTile() != null) {
                            this.f8844S._particle.addXpOrbParticle(f3, basicTower.getTile().getX(), basicTower.getTile().getY(), tower.getTile().getX(), tower.getTile().getY());
                        }
                    }
                }
                i++;
            }
            delayedRemovalArray.end();
            if (this.f12177T.size == 0) {
                this.f12177T = null;
            }
        } else {
            f2 = f;
        }
        if (f2 >= 0.0f) {
            return f - f2;
        }
        throw new IllegalStateException("Consumed more XP than exists: " + f2 + " " + f);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12171M = input.readFloat();
        this.f12172N = input.readFloat();
        this.f12173O = input.readFloat();
        this.f12174P = input.readVarInt(true);
        this.f12175Q = input.readFloat();
        this.f12176R = input.readBoolean();
        this.f12177T = (DelayedRemovalArray) kryo.readObjectOrNull(input, DelayedRemovalArray.class);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        if (isRegistered()) {
            if (this.f12177T != null && getLevel() >= 20) {
                float f2 = this.currentLevelExperience;
                if (f2 > 5.0f) {
                    float m20767f = m20767f(this, f2);
                    if (m20767f != 0.0f) {
                        this.f8844S.tower.removeExperienceRaw(this, m20767f);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("Tower is not registered " + this);
    }

    @Override // com.prineside.tdi2.Tower
    public void setExperience(float f) {
        int level = getLevel();
        super.setExperience(f);
        if (getLevel() >= 10 && level < 10) {
            this.f12174P = this.moneySpentOn.get();
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12171M = getStatBuffed(TowerStatType.DAMAGE) * getStatBuffed(TowerStatType.U_DAMAGE_MULTIPLY) * 0.01f;
        this.f12172N = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12173O = getStatBuffed(TowerStatType.PROJECTILE_SPEED);
        this.f12175Q = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12171M);
        output.writeFloat(this.f12172N);
        output.writeFloat(this.f12173O);
        output.writeVarInt(this.f12174P, true);
        output.writeFloat(this.f12175Q);
        output.writeBoolean(this.f12176R);
        kryo.writeObjectOrNull(output, this.f12177T, DelayedRemovalArray.class);
    }
}
