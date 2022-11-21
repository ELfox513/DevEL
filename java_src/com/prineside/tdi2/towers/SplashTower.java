package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.projectiles.SplashProjectile;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.ParticleSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class SplashTower extends Tower {
    public static final int ABILITY_FAST_BULLETS = 2;
    public static final int ABILITY_FAST_MECHANISM = 1;
    public static final int ABILITY_PENETRATING_BULLETS = 0;

    /* renamed from: Y */
    public static final float f12399Y = new Color(-7707137).toFloatBits();

    /* renamed from: Z */
    public static final Vector2 f12400Z = new Vector2();

    /* renamed from: a0 */
    public static final Vector2 f12401a0 = new Vector2();

    /* renamed from: b0 */
    public static final int[] f12402b0 = {4, 1, 2, 3, 5};

    /* renamed from: M */
    public boolean f12403M;

    /* renamed from: N */
    public float f12404N;

    /* renamed from: O */
    public int f12405O;

    /* renamed from: P */
    public float f12406P;

    /* renamed from: Q */
    public float f12407Q;

    /* renamed from: R */
    public float f12408R;

    /* renamed from: T */
    public float f12409T;

    /* renamed from: U */
    public int f12410U;

    /* renamed from: V */
    public float f12411V;

    /* renamed from: W */
    public float f12412W;

    /* renamed from: X */
    public float f12413X;

    /* renamed from: com.prineside.tdi2.towers.SplashTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24361 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12414a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12414a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12414a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12414a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12414a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12414a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class SplashTowerFactory extends Tower.Factory<SplashTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12415i;

        /* renamed from: j */
        public TextureRegion f12416j;

        public SplashTowerFactory() {
            super("tower-splash", TowerType.SPLASH);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 47;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.DEEP_ORANGE.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24361.f12414a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 || i == 4) {
                        return 3;
                    }
                    return i != 5 ? 0 : 2;
                }
                return 5;
            }
            return 4;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public SplashTower create() {
            return new SplashTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12416j = Game.f8589i.assetManager.getTextureRegion("blank");
            this.f12415i = Game.f8589i.towerManager.getTextureConfig(TowerType.SPLASH, "weapon");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-splash-weapon-shadow"), 54.0f, 31.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_PENETRATING_DAMAGE), 2, true).toString();
            abilityConfigs[0].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SPLASH_A_PENETRATING_DAMAGE_CHAIN), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_FAST_MECHANISM_SPEED), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_FAST_BULLETS_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_FAST_BULLETS_SPEED), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_RIFFLED_DAMAGE), 2, true).toString();
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SPLASH_A_RIFFLED_SPEED_MARK), 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SPLASH_A_ULTIMATE_SPLINTERS), false).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SPLASH_A_ULTIMATE_CHAIN_DAMAGE), false).toString();
            abilityConfigs[4].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SPLASH_A_ULTIMATE_BASE_DAMAGE), false).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{"0.9", "50"};
            abilityConfigArr[1].descriptionArgs = new String[]{"1.25"};
            abilityConfigArr[2].descriptionArgs = new String[]{"1.25", "1.25"};
            abilityConfigArr[3].descriptionArgs = new String[]{"1.1", "0.8"};
            abilityConfigArr[4].descriptionArgs = new String[]{"5", "", ""};
        }
    }

    public /* synthetic */ SplashTower(C24361 c24361) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return false;
    }

    @Override // com.prineside.tdi2.Tower
    public void drawWeapon(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        super.drawWeapon(spriteBatch, f, f2, f3, f4);
        if (getTile().visibleOnScreen && !isOutOfOrder() && spriteBatch.getColor().f3889a == 1.0f) {
            float f5 = f3 / 128.0f;
            float f6 = 360.0f / this.f12410U;
            for (int i = 0; i < this.f12410U; i++) {
                float f7 = (i * f6) + this.angle;
                float f8 = 0.5f * f3;
                float f9 = f + f8;
                float f10 = f2 + f8;
                Vector2 vector2 = f12400Z;
                PMath.getPointByAngleFromPoint(f9, f10, f7, this.f12411V * f5, vector2);
                float f11 = f12399Y;
                DrawUtils.texturedLine(spriteBatch, Game.f8589i.towerManager.f10174F.SPLASH.f12416j, f9, f10, vector2.f5527x, vector2.f5528y, this.f12412W * f5, f11, f11);
            }
        }
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12413X;
    }

    @Override // com.prineside.tdi2.Tower
    public float getScheduledUpdateInterval() {
        return 0.11f;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        return Game.f8589i.towerManager.f10174F.SPLASH.f12415i;
    }

    public SplashTower() {
        super(TowerType.SPLASH);
        this.f12403M = false;
        this.f12405O = 0;
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        TowerStatType towerStatType2 = TowerStatType.DAMAGE;
        if (towerStatType == towerStatType2 && isAbilityInstalled(2)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_FAST_BULLETS_DAMAGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == towerStatType2 && isAbilityInstalled(0)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_PENETRATING_DAMAGE);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        if (towerStatType == TowerStatType.ATTACK_SPEED && isAbilityInstalled(1)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_FAST_MECHANISM_SPEED);
            Double.isNaN(d3);
            statFromConfig = (float) (d3 * percentValueAsMultiplier3);
        }
        if (towerStatType == TowerStatType.PROJECTILE_SPEED && isAbilityInstalled(2)) {
            double d4 = statFromConfig;
            double percentValueAsMultiplier4 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_FAST_BULLETS_SPEED);
            Double.isNaN(d4);
            return (float) (d4 * percentValueAsMultiplier4);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12402b0) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.SPLASH.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        super.drawBatch(spriteBatch, f);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_BUILDING_INFO) != 0.0d) {
            BitmapFont debugFont = Game.f8589i.assetManager.getDebugFont(false);
            debugFont.draw(spriteBatch, "TSS: " + this.f12404N, getTile().boundingBox.minX, (getTile().boundingBox.minY - 20.0f) + 64.0f, 128.0f, 1, false);
            debugFont.setColor(Color.WHITE);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12403M = input.readBoolean();
        this.f12404N = input.readFloat();
        this.f12405O = input.readVarInt(true);
        this.f12406P = input.readFloat();
        this.f12407Q = input.readFloat();
        this.f12408R = input.readFloat();
        this.f12409T = input.readFloat();
        this.f12410U = input.readVarInt(true);
        this.f12411V = input.readFloat();
        this.f12412W = input.readFloat();
        this.f12413X = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        Array<Tile> tilesInRange = getTilesInRange();
        boolean z = false;
        for (int i = 0; i < tilesInRange.size; i++) {
            Tile tile = tilesInRange.items[i];
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = tile.enemies;
            if (delayedRemovalArray.size != 0) {
                delayedRemovalArray.begin();
                int i2 = tile.enemies.size;
                int i3 = 0;
                while (true) {
                    if (i3 >= i2) {
                        break;
                    }
                    Enemy enemy = tile.enemies.items[i3].enemy;
                    if (enemy != null && canAttackEnemy(enemy)) {
                        z = true;
                        break;
                    }
                    i3++;
                }
                tile.enemies.end();
            }
            if (z) {
                break;
            }
        }
        this.f12403M = z;
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        if (isOutOfOrder()) {
            return;
        }
        this.f12404N += f;
        if (this.f12403M) {
            this.angle += 45.0f * f;
            while (this.f12404N > this.f12413X) {
                int i = this.f12405O + 1;
                this.f12405O = i;
                int i2 = this.f12410U;
                if (i >= i2) {
                    this.f12405O = 0;
                }
                float f2 = (this.f12405O * (360.0f / i2)) + this.angle;
                Vector2 vector2 = f12400Z;
                vector2.set(getTile().center);
                PMath.shiftPointByAngle(vector2, f2, this.f12411V + 1.0f);
                Vector2 vector22 = f12401a0;
                vector22.set(getTile().center);
                PMath.shiftPointByAngle(vector22, f2, this.rangeInPixels);
                SplashProjectile splashProjectile = (SplashProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.SPLASH).obtain();
                this.f8844S.projectile.register(splashProjectile);
                splashProjectile.setup(this, this.f12406P, this.f12407Q, vector2, vector22, this.f12408R);
                splashProjectile.chainKillGeneration = 0;
                ParticleSystem particleSystem = this.f8844S._particle;
                if (particleSystem != null) {
                    particleSystem.addFlashParticle(Game.f8589i.assetManager.f9555TR.muzzleFlashSmall, vector2.f5527x, vector2.f5528y, 9.6f, 3.6000001f, 19.2f, 28.800001f, f2);
                }
                this.shotCount++;
                this.f12404N -= this.f12413X;
                SoundSystem soundSystem = this.f8844S._sound;
                if (soundSystem != null) {
                    soundSystem.playShotSound(StaticSoundType.SHOT_SPLASH, this);
                }
            }
        } else {
            this.f12404N = getAttackDelay() / this.f12409T;
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12406P = getStatBuffed(TowerStatType.DAMAGE);
        this.f12407Q = getStatBuffed(TowerStatType.ACCURACY) * 0.01f;
        this.f12408R = getStatBuffed(TowerStatType.PROJECTILE_SPEED);
        this.f12409T = getStatBuffed(TowerStatType.U_PROJECTILE_COUNT);
        float statBuffed = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
        float f = this.f12409T;
        this.f12413X = statBuffed / f;
        this.f12410U = (int) f;
        if (isAbilityInstalled(0)) {
            this.f12411V = 26.0f;
            this.f12412W = 6.0f;
            return;
        }
        this.f12411V = 22.0f;
        this.f12412W = 8.0f;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f12403M);
        output.writeFloat(this.f12404N);
        output.writeVarInt(this.f12405O, true);
        output.writeFloat(this.f12406P);
        output.writeFloat(this.f12407Q);
        output.writeFloat(this.f12408R);
        output.writeFloat(this.f12409T);
        output.writeVarInt(this.f12410U, true);
        output.writeFloat(this.f12411V);
        output.writeFloat(this.f12412W);
        output.writeFloat(this.f12413X);
    }
}
