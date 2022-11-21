package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.projectiles.MissileProjectile;
import com.prineside.tdi2.systems.GameValueSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.ProjectileSystem;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectFilter;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Arrays;
@REGS
/* loaded from: classes2.dex */
public class MissileTower extends Tower {

    /* renamed from: Y */
    public static final Array<Tile> f12346Y = new Array<>(Tile.class);

    /* renamed from: Z */
    public static final Vector2 f12347Z = new Vector2();

    /* renamed from: a0 */
    public static final Vector2 f12348a0 = new Vector2();

    /* renamed from: b0 */
    public static final int[] f12349b0 = {4, 0, 2, 3, 5};

    /* renamed from: M */
    public DelayedRemovalArray<MissileProjectile> f12350M;

    /* renamed from: N */
    public float f12351N;

    /* renamed from: O */
    public Enemy.EnemyReference f12352O;

    /* renamed from: P */
    public Enemy.EnemyReference[] f12353P;

    /* renamed from: Q */
    public float f12354Q;

    /* renamed from: R */
    public float f12355R;

    /* renamed from: T */
    public float f12356T;

    /* renamed from: U */
    public float f12357U;

    /* renamed from: V */
    public float f12358V;

    /* renamed from: W */
    public float f12359W;

    /* renamed from: X */
    public _ProjectileSystemListener f12360X;

    /* renamed from: com.prineside.tdi2.towers.MissileTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24331 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12361a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12361a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12361a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12361a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12361a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12361a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class MissileTowerFactory extends Tower.Factory<MissileTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12362i;

        /* renamed from: j */
        public TextureRegion f12363j;

        public MissileTowerFactory() {
            super("tower-missile", TowerType.MISSILE);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 50;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.PINK.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24331.f12361a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 || i == 4) {
                        return 5;
                    }
                    return i != 5 ? 0 : 2;
                }
                return 1;
            }
            return 5;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public MissileTower create() {
            return new MissileTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12362i = Game.f8589i.towerManager.getTextureConfig(TowerType.MISSILE, "weapon");
            this.f12363j = Game.f8589i.assetManager.getTextureRegion("projectile-missile");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-missile-weapon-shadow"), 62.0f, 39.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MISSILE_A_VERTICAL_MIN_RANGE), 2, true).toString();
            abilityConfigs[0].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MISSILE_A_VERTICAL_MAX_RANGE), 2, true).toString();
            abilityConfigs[0].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MISSILE_A_VERTICAL_ROTATION_BONUS), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_MISSILE_A_COMPACT_COUNT), false).toString();
            abilityConfigs[1].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MISSILE_A_COMPACT_DAMAGE), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MISSILE_A_OVERWEIGHT_HP), 2, true).toString();
            float floatValue = gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MISSILE_A_OVERWEIGHT_DAMAGE);
            if (tower.isAbilityInstalled(4)) {
                floatValue += gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MISSILE_A_ULTIMATE_DAMAGE);
            }
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(floatValue, 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MISSILE_A_ULTIMATE_DAMAGE), 2, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{"", "", ""};
            abilityConfigArr[1].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[3].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[4].descriptionArgs = new String[]{""};
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _ProjectileSystemListener extends ProjectileSystem.ProjectileSystemListener.ProjectileSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public MissileTower f12364a;

        public /* synthetic */ _ProjectileSystemListener(MissileTower missileTower, C24331 c24331) {
            this(missileTower);
        }

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 55700019;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f12364a = (MissileTower) kryo.readObjectOrNull(input, MissileTower.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f12364a, MissileTower.class);
        }

        @Deprecated
        public _ProjectileSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.ProjectileSystem.ProjectileSystemListener.ProjectileSystemListenerAdapter, com.prineside.tdi2.systems.ProjectileSystem.ProjectileSystemListener
        public void projectileUnregistered(Projectile projectile) {
            if (projectile instanceof MissileProjectile) {
                this.f12364a.f12350M.removeValue((MissileProjectile) projectile, true);
            }
        }

        public _ProjectileSystemListener(MissileTower missileTower) {
            this.f12364a = missileTower;
        }
    }

    public /* synthetic */ MissileTower(C24331 c24331) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12359W;
    }

    @Override // com.prineside.tdi2.Tower
    public float getMinRange() {
        if (isAbilityInstalled(2)) {
            return 0.0f;
        }
        if (!isAbilityInstalled(0)) {
            return 2.0f;
        }
        double d = 2.0f;
        double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MISSILE_A_VERTICAL_MIN_RANGE);
        Double.isNaN(d);
        return (float) (d * percentValueAsMultiplier);
    }

    @Override // com.prineside.tdi2.Tower
    public float getScheduledUpdateInterval() {
        return 0.11f;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(1)) {
            return Game.f8589i.towerManager.f10174F.MISSILE.getAbilityTextures(1);
        }
        return Game.f8589i.towerManager.f10174F.MISSILE.f12362i;
    }

    public void missileLostTarget(MissileProjectile missileProjectile) {
        this.f12350M.add(missileProjectile);
    }

    public MissileTower() {
        super(TowerType.MISSILE);
        this.f12350M = new DelayedRemovalArray<>(MissileProjectile.class);
        this.f12352O = Enemy.EnemyReference.NULL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ boolean m20730h(Enemy enemy) {
        for (Enemy.EnemyReference enemyReference : this.f12353P) {
            if (enemyReference.enemy == enemy) {
                return false;
            }
        }
        if (enemy == getTarget()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    @Override // com.prineside.tdi2.Tower
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void attack(int r20) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.towers.MissileTower.attack(int):void");
    }

    @Override // com.prineside.tdi2.Tower
    public void drawWeapon(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        float f5 = f3 / 128.0f;
        if (getTile().visibleOnScreen && !isOutOfOrder()) {
            TextureRegionConfig.drawBatch(getWeaponTextures(), spriteBatch, f, f2, f3, 1.0f, this.angle);
            float attackDelay = getAttackDelay();
            float f6 = this.f8915A;
            float f7 = attackDelay / 2.0f;
            if (f6 > f7) {
                float f8 = (f6 - f7) / f7;
                if (f8 > 1.0f) {
                    f8 = 1.0f;
                }
                if (isAbilityInstalled(1)) {
                    GameValueSystem gameValueSystem = this.f8844S.gameValue;
                    GameValueType gameValueType = GameValueType.TOWER_MISSILE_A_COMPACT_COUNT;
                    if (gameValueSystem.getIntValue(gameValueType) > 1) {
                        float f9 = f8 * 0.75f;
                        int intValue = this.f8844S.gameValue.getIntValue(gameValueType);
                        float f10 = 1.0f / (intValue - 1);
                        float f11 = 0.0f;
                        for (int i = 0; i < intValue; i++) {
                            float f12 = this.angle + ((75.0f * f11) - 37.5f);
                            Vector2 vector2 = f12347Z;
                            vector2.set(0.0f, 20.0f);
                            vector2.rotateDeg(f12);
                            vector2.add(getTile().center);
                            Vector2 vector22 = f12348a0;
                            vector22.set(0.0f, 18.0f);
                            vector22.rotateDeg(this.angle + 180.0f);
                            vector2.add(vector22);
                            float f13 = f9 * 7.0f;
                            float f14 = f9 * 14.0f;
                            spriteBatch.draw(Game.f8589i.towerManager.f10174F.MISSILE.f12363j, vector2.f5527x - f13, vector2.f5528y - f14, f13, f14, f14, f9 * 28.0f, 1.0f, 1.0f, f12);
                            f11 += f10;
                        }
                        return;
                    }
                }
                float f15 = 0.5f * f3;
                float f16 = 7.0f * f8 * f5;
                float f17 = 14.0f * f8 * f5;
                spriteBatch.draw(Game.f8589i.towerManager.f10174F.MISSILE.f12363j, (f + f15) - f16, (f2 + f15) - f17, f16, f17, f17, f8 * 28.0f * f5, 1.0f, 1.0f, this.angle);
            }
        }
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.RANGE && isAbilityInstalled(0)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MISSILE_A_VERTICAL_MAX_RANGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.DAMAGE && isAbilityInstalled(1)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MISSILE_A_COMPACT_DAMAGE);
            Double.isNaN(d2);
            return (float) (d2 * percentValueAsMultiplier2);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        int intValue;
        int i = 0;
        if (this.f12350M.size != 0) {
            EntityUtils.removeNullRefs(this.f8844S.map.spawnedEnemies);
            if (this.f8844S.map.spawnedEnemies.size != 0) {
                this.f12350M.begin();
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    DelayedRemovalArray<MissileProjectile> delayedRemovalArray = this.f12350M;
                    if (i2 >= delayedRemovalArray.size) {
                        break;
                    }
                    MissileProjectile missileProjectile = delayedRemovalArray.items[i2];
                    if (missileProjectile.getTower() == this && missileProjectile.getTarget() == null) {
                        GameSystemProvider gameSystemProvider = this.f8844S;
                        DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray2 = gameSystemProvider.map.spawnedEnemies;
                        Enemy enemy = delayedRemovalArray2.items[gameSystemProvider.gameState.randomInt(delayedRemovalArray2.size)].enemy;
                        if (canAttackEnemy(enemy)) {
                            missileProjectile.setTarget(enemy);
                            this.f12350M.removeIndex(i2);
                        }
                    } else {
                        this.f12350M.removeIndex(i2);
                    }
                    i3++;
                    if (i3 == 3) {
                        break;
                    }
                    i2++;
                }
                this.f12350M.end();
            }
        }
        if (getTarget() != null) {
            this.f12351N = 0.0f;
            if (isAbilityInstalled(4) && (intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_MISSILE_A_COMPACT_COUNT) - 1) > 0) {
                Enemy.EnemyReference[] enemyReferenceArr = this.f12353P;
                if (enemyReferenceArr == null || enemyReferenceArr.length != intValue) {
                    Enemy.EnemyReference[] enemyReferenceArr2 = new Enemy.EnemyReference[intValue];
                    this.f12353P = enemyReferenceArr2;
                    Arrays.fill(enemyReferenceArr2, Enemy.EnemyReference.NULL);
                }
                while (true) {
                    Enemy.EnemyReference[] enemyReferenceArr3 = this.f12353P;
                    if (i < enemyReferenceArr3.length) {
                        Enemy enemy2 = enemyReferenceArr3[i].enemy;
                        if (enemy2 == null || enemy2 == getTarget()) {
                            break;
                        }
                        i++;
                    } else {
                        return;
                    }
                }
                this.f12353P[i] = Enemy.EnemyReference.NULL;
                Enemy findTarget = findTarget(new ObjectFilter() { // from class: com.prineside.tdi2.towers.b
                    @Override // com.prineside.tdi2.utils.ObjectFilter
                    public final boolean passes(Object obj) {
                        boolean m20730h;
                        m20730h = MissileTower.this.m20730h((Enemy) obj);
                        return m20730h;
                    }
                });
                if (findTarget == null) {
                    this.f12353P[i] = this.f8844S.enemy.getReference(getTarget());
                    return;
                } else {
                    this.f12353P[i] = this.f8844S.enemy.getReference(findTarget);
                    return;
                }
            }
            return;
        }
        if (this.f12352O.enemy == null) {
            Array<Tile> array = f12346Y;
            array.clear();
            array.addAll(this.f8844S.map.getMap().tilesArray);
            int i4 = 0;
            while (true) {
                Array<Tile> array2 = f12346Y;
                int i5 = array2.size;
                if (i4 >= i5) {
                    break;
                }
                array2.swap(i4, this.f8844S.gameState.randomInt(i5));
                i4++;
            }
            while (true) {
                Array<Tile> array3 = f12346Y;
                if (i >= array3.size) {
                    break;
                }
                Tile tile = array3.items[i];
                DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray3 = tile.enemies;
                if (delayedRemovalArray3.size != 0) {
                    EntityUtils.removeNullRefs(delayedRemovalArray3);
                    DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray4 = tile.enemies;
                    Enemy enemy3 = delayedRemovalArray4.get(this.f8844S.gameState.randomInt(delayedRemovalArray4.size)).enemy;
                    if (canAttackEnemy(enemy3)) {
                        this.f12352O = this.f8844S.enemy.getReference(enemy3);
                        break;
                    }
                }
                i++;
            }
        }
        if (this.f12352O.enemy != null) {
            if (!isOutOfOrder()) {
                float f2 = this.f12351N + (f * this.f12358V);
                this.f12351N = f2;
                if (f2 >= 100.0f) {
                    if (!this.attackDisabled) {
                        setTarget(this.f12352O.enemy);
                        attack(1);
                        setTarget(null);
                    }
                    this.f12351N = 0.0f;
                    this.f12352O = Enemy.EnemyReference.NULL;
                    return;
                }
                return;
            }
            return;
        }
        this.f12351N = 0.0f;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f12350M.clear();
        f12346Y.clear();
        this.f12352O = Enemy.EnemyReference.NULL;
        this.f8844S.projectile.listeners.remove(this.f12360X);
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        m21892e(f, this.f12355R);
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttack() {
        if (isOutOfOrder() || this.attackDisabled || getTarget() == null || getTarget().getPosition().dst2(getTile().center) <= this.f8916B) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttackEnemy(Enemy enemy) {
        if (!super.canAttackEnemy(enemy)) {
            return false;
        }
        if (enemy.isAir() && !isAbilityInstalled(2)) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12349b0) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.MISSILE.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        String str;
        super.drawBatch(spriteBatch, f);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_BUILDING_INFO) != 0.0d) {
            StringBuilder sb = new StringBuilder();
            if (this.f12352O.enemy == null) {
                str = "-";
            } else {
                str = "+";
            }
            sb.append(str);
            sb.append(" ");
            sb.append((int) this.f12351N);
            Game.f8589i.assetManager.getDebugFont(false).draw(spriteBatch, sb.toString(), getTile().center.f5527x - 50.0f, getTile().center.f5528y - 30.0f, 100.0f, 1, false);
            if (this.f12352O.enemy != null) {
                DrawUtils.texturedLine(spriteBatch, Game.f8589i.assetManager.getBlankWhiteTextureRegion(), getTile().center.f5527x, getTile().center.f5528y, this.f12352O.enemy.getPosition().f5527x, this.f12352O.enemy.getPosition().f5528y, 4.0f, MaterialColor.PINK.P600.toFloatBits(), MaterialColor.PINK.P400.toFloatBits());
                Enemy.EnemyReference[] enemyReferenceArr = this.f12353P;
                if (enemyReferenceArr != null) {
                    for (Enemy.EnemyReference enemyReference : enemyReferenceArr) {
                        if (enemyReference.enemy != null) {
                            DrawUtils.texturedLine(spriteBatch, Game.f8589i.assetManager.getBlankWhiteTextureRegion(), getTile().center.f5527x, getTile().center.f5528y, enemyReference.enemy.getPosition().f5527x, enemyReference.enemy.getPosition().f5528y, 3.0f, MaterialColor.PURPLE.P600.toFloatBits(), MaterialColor.PURPLE.P400.toFloatBits());
                        }
                    }
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12350M = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f12351N = input.readFloat();
        this.f12352O = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.f12353P = (Enemy.EnemyReference[]) kryo.readObjectOrNull(input, Enemy.EnemyReference[].class);
        this.f12354Q = input.readFloat();
        this.f12355R = input.readFloat();
        this.f12356T = input.readFloat();
        this.f12357U = input.readFloat();
        this.f12358V = input.readFloat();
        this.f12359W = input.readFloat();
        this.f12360X = (_ProjectileSystemListener) kryo.readObjectOrNull(input, _ProjectileSystemListener.class);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        if (this.f12360X == null) {
            this.f12360X = new _ProjectileSystemListener(this, null);
        }
        this.f8844S.projectile.listeners.add(this.f12360X);
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12354Q = getStatBuffed(TowerStatType.DAMAGE);
        this.f12355R = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12356T = getStatBuffed(TowerStatType.PROJECTILE_SPEED);
        this.f12357U = getStatBuffed(TowerStatType.U_EXPLOSION_RANGE);
        this.f12358V = getStatBuffed(TowerStatType.U_LRM_AIM_SPEED);
        this.f12359W = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f12350M);
        output.writeFloat(this.f12351N);
        kryo.writeObject(output, this.f12352O);
        kryo.writeObjectOrNull(output, this.f12353P, Enemy.EnemyReference[].class);
        output.writeFloat(this.f12354Q);
        output.writeFloat(this.f12355R);
        output.writeFloat(this.f12356T);
        output.writeFloat(this.f12357U);
        output.writeFloat(this.f12358V);
        output.writeFloat(this.f12359W);
        kryo.writeObjectOrNull(output, this.f12360X, _ProjectileSystemListener.class);
    }
}
