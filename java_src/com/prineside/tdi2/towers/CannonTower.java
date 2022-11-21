package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.explosions.CannonExplosion;
import com.prineside.tdi2.projectiles.CannonProjectile;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.units.MineUnit;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class CannonTower extends Tower {
    public static final int ABILITY_FOUNDATION = 2;

    /* renamed from: T */
    public static final Vector2 f12193T = new Vector2();

    /* renamed from: U */
    public static final Array<Tile> f12194U = new Array<>(Tile.class);

    /* renamed from: V */
    public static final int[] f12195V = {4, 0, 2, 3, 5};

    /* renamed from: M */
    public float f12196M;

    /* renamed from: N */
    public float f12197N;

    /* renamed from: O */
    public float f12198O;

    /* renamed from: P */
    public float f12199P;

    /* renamed from: Q */
    public float f12200Q;

    /* renamed from: R */
    public float f12201R;

    /* renamed from: com.prineside.tdi2.towers.CannonTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24261 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12202a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12202a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12202a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12202a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12202a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12202a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class CannonTowerFactory extends Tower.Factory<CannonTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12203i;

        public CannonTowerFactory() {
            super("tower-cannon", TowerType.CANNON);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 33;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.RED.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24261.f12202a[generalizedTowerStatType.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                return 2;
            }
            if (i != 4) {
                return i != 5 ? 0 : 4;
            }
            return 5;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public CannonTower create() {
            return new CannonTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12203i = Game.f8589i.towerManager.getTextureConfig(TowerType.CANNON, "weapon");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-cannon-weapon-shadow"), 52.0f, 26.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_CANNON_A_SHRAPNEL_COUNT), false).toString();
            abilityConfigs[0].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_CANNON_A_SHRAPNEL_DAMAGE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_LONG_BARREL_RANGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_FOUNDATION_SPEED), 2, true).toString();
            abilityConfigs[2].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_FOUNDATION_PIERCING), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_CANNON_A_PRESSURE_HEALTH), false).toString();
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_CANNON_A_PRESSURE_DAMAGE), false).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_CANNON_A_MINE_DAMAGE), 2, true).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_CANNON_A_MINE_INTERVAL), 2, true).toString();
            abilityConfigs[4].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_CANNON_A_MINE_COUNT), false).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[1].descriptionArgs = new String[]{""};
            abilityConfigArr[2].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[3].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[4].descriptionArgs = new String[]{"", "", ""};
        }
    }

    public /* synthetic */ CannonTower(C24261 c24261) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12200Q;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(1)) {
            return Game.f8589i.towerManager.f10174F.CANNON.getAbilityTextures(1);
        }
        return Game.f8589i.towerManager.f10174F.CANNON.f12203i;
    }

    public CannonTower() {
        super(TowerType.CANNON);
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.RANGE && isAbilityInstalled(1)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_LONG_BARREL_RANGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.ROTATION_SPEED && isAbilityInstalled(2)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_FOUNDATION_SPEED);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        if (towerStatType == TowerStatType.PROJECTILE_SPEED && isAbilityInstalled(2)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_FOUNDATION_SPEED);
            Double.isNaN(d3);
            return (float) (d3 * percentValueAsMultiplier3);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        int i;
        float f2;
        float f3;
        m21892e(f, this.f12197N);
        if (isAbilityInstalled(4)) {
            float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_CANNON_A_MINE_INTERVAL);
            int intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_CANNON_A_MINE_COUNT);
            float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_MINE_DAMAGE);
            float f4 = this.f12201R + f;
            this.f12201R = f4;
            if (f4 >= floatValue) {
                this.f12201R = f4 - floatValue;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    DelayedRemovalArray<Unit> delayedRemovalArray = this.f8844S.map.spawnedUnits;
                    if (i2 >= delayedRemovalArray.size) {
                        break;
                    }
                    Unit unit = delayedRemovalArray.items[i2];
                    if (unit.type == 4 && ((MineUnit) unit).owner == this) {
                        i3++;
                    }
                    i2++;
                }
                if (i3 < intValue) {
                    f12194U.clear();
                    Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
                    if (this.f8844S.gameValue.getBooleanValue(GameValueType.ENEMIES_WALK_ON_PLATFORMS)) {
                        for (int i4 = 0; i4 < neighbourTiles.size; i4++) {
                            Tile tile = neighbourTiles.items[i4];
                            EntityUtils.removeNullRefs(tile.enemies);
                            if (tile.enemies.size == 0) {
                                TileType tileType = tile.type;
                                if (tileType == TileType.PLATFORM) {
                                    PlatformTile platformTile = (PlatformTile) tile;
                                    if (platformTile.building == null) {
                                        f12194U.add(platformTile);
                                    }
                                } else if (tileType == TileType.ROAD) {
                                    f12194U.add(tile);
                                }
                            }
                        }
                    } else {
                        for (int i5 = 0; i5 < neighbourTiles.size; i5++) {
                            Tile tile2 = neighbourTiles.items[i5];
                            EntityUtils.removeNullRefs(tile2.enemies);
                            if (tile2.enemies.size == 0 && tile2.type == TileType.ROAD) {
                                f12194U.add(tile2);
                            }
                        }
                    }
                    Array<Tile> array = f12194U;
                    int i6 = array.size;
                    if (i6 != 0) {
                        Tile tile3 = array.items[this.f8844S.gameState.randomInt(i6)];
                        float randomFloat = tile3.center.f5527x + ((this.f8844S.gameState.randomFloat() - 0.5f) * 64.0f);
                        float randomFloat2 = tile3.center.f5528y + ((this.f8844S.gameState.randomFloat() - 0.5f) * 64.0f);
                        if (isAbilityInstalled(0)) {
                            i = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_CANNON_A_SHRAPNEL_COUNT);
                            f2 = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_SHRAPNEL_DAMAGE);
                            f3 = ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_SHRAPNEL_DISTANCE)) * this.f12199P * 128.0f;
                        } else {
                            i = 0;
                            f2 = 0.0f;
                            f3 = 0.0f;
                        }
                        CannonExplosion cannonExplosion = (CannonExplosion) Game.f8589i.explosionManager.getFactory(ExplosionType.CANNON).obtain();
                        cannonExplosion.setup(this, 0.0f, 0.0f, this.f12196M * (1.0f / this.f12200Q) * percentValueAsMultiplier, this.f12199P, i, f2, f3);
                        MineUnit create = Game.f8589i.unitManager.f10234F.MINE.create();
                        create.setup(this, getTile().center.f5527x, getTile().center.f5528y, randomFloat, randomFloat2, cannonExplosion, MaterialColor.RED.P500);
                        this.f8844S.unit.register(create);
                        this.f8844S.map.spawnUnit(create);
                    }
                    array.clear();
                }
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        float f;
        float f2;
        if (getTarget() == null) {
            return;
        }
        Vector2 vector2 = f12193T;
        PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, this.angle, 28.0f, vector2);
        CannonProjectile cannonProjectile = (CannonProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.CANNON).obtain();
        this.f8844S.projectile.register(cannonProjectile);
        int i2 = 0;
        if (isAbilityInstalled(0)) {
            i2 = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_CANNON_A_SHRAPNEL_COUNT);
            f = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_SHRAPNEL_DAMAGE);
            f2 = ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_SHRAPNEL_DISTANCE)) * this.f12199P * 128.0f;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        cannonProjectile.setup(this, getTarget(), i * this.f12196M, this.f12199P, vector2, this.f12198O, i2 * i, f, f2);
        this.shotCount += i;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_CANNON, this);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12195V) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.CANNON.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12196M = input.readFloat();
        this.f12197N = input.readFloat();
        this.f12198O = input.readFloat();
        this.f12199P = input.readFloat();
        this.f12200Q = input.readFloat();
        this.f12201R = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12196M = getStatBuffed(TowerStatType.DAMAGE);
        this.f12197N = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12198O = getStatBuffed(TowerStatType.PROJECTILE_SPEED);
        this.f12199P = getStatBuffed(TowerStatType.U_EXPLOSION_RANGE);
        this.f12200Q = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12196M);
        output.writeFloat(this.f12197N);
        output.writeFloat(this.f12198O);
        output.writeFloat(this.f12199P);
        output.writeFloat(this.f12200Q);
        output.writeFloat(this.f12201R);
    }
}
