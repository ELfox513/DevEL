package com.prineside.tdi2.towers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.StunBuff;
import com.prineside.tdi2.buffs.ThrowBackBuff;
import com.prineside.tdi2.buffs.processors.StunBuffProcessor;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.ShapeManager;
import com.prineside.tdi2.shapes.Circle;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class BlastTower extends Tower {

    /* renamed from: V */
    public static final Color f12180V = new Color(1163551999);

    /* renamed from: W */
    public static final int[] f12181W = {4, 1, 2, 3, 5};
    @NAGS

    /* renamed from: M */
    public Circle f12182M;

    /* renamed from: N */
    public float f12183N;

    /* renamed from: O */
    public Array<Enemy.EnemyReference> f12184O;

    /* renamed from: P */
    public boolean f12185P;

    /* renamed from: Q */
    public float f12186Q;

    /* renamed from: R */
    public float f12187R;

    /* renamed from: T */
    public float f12188T;

    /* renamed from: U */
    public float f12189U;

    /* renamed from: com.prineside.tdi2.towers.BlastTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24251 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12190a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12190a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12190a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12190a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12190a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12190a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BlastTowerFactory extends Tower.Factory<BlastTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12191i;

        /* renamed from: j */
        public ParticleEffectPool f12192j;

        public BlastTowerFactory() {
            super("tower-blast", TowerType.BLAST);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 32;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.BLUE_GREY.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24251.f12190a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i == 2 || i == 3) {
                    return 1;
                }
                return (i == 4 || i == 5) ? 3 : 0;
            }
            return 2;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public BlastTower create() {
            return new BlastTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12191i = Game.f8589i.towerManager.getTextureConfig(TowerType.BLAST, "weapon");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-blast-weapon-shadow"), 63.0f, 31.0f, 128.0f);
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/shockwave.prt"), Game.f8589i.assetManager.getTextureRegion("particle-shockwave").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f12192j = new ParticleEffectPool(particleEffect, 8, 1024);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_HEAVY_SHELL_SPEED), 2, true).toString();
            abilityConfigs[0].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_HEAVY_SHELL_DAMAGE), 2, true).toString();
            abilityConfigs[0].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_HEAVY_SHELL_CHANCE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_FAST_MECHANISM_SPEED), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_SONIC_WAVE_DURATION), 2, true).toString();
            BlastTower blastTower = (BlastTower) tower;
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(blastTower.m20764h(), 2, true).toString();
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_BLAST_A_STOPPING_FORCE_CHANCE), false).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(blastTower.m20763i() * 100.0f, false).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{"", "", ""};
            abilityConfigArr[1].descriptionArgs = new String[]{""};
            abilityConfigArr[2].descriptionArgs = new String[]{""};
            abilityConfigArr[3].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[4].descriptionArgs = new String[]{""};
        }
    }

    public /* synthetic */ BlastTower(C24251 c24251) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return false;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12189U;
    }

    @Override // com.prineside.tdi2.Tower
    public float getScheduledUpdateInterval() {
        return 0.15f;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.BLAST.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.BLAST.f12191i;
    }

    public BlastTower() {
        super(TowerType.BLAST);
        this.f12183N = 0.0f;
        this.f12184O = new Array<>(true, 1, Enemy.EnemyReference.class);
        this.f12185P = false;
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.U_STUN_DURATION && isAbilityInstalled(2)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_SONIC_WAVE_DURATION);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.DAMAGE && isAbilityInstalled(0)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_HEAVY_SHELL_DAMAGE);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        TowerStatType towerStatType2 = TowerStatType.ATTACK_SPEED;
        if (towerStatType == towerStatType2 && isAbilityInstalled(0)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_HEAVY_SHELL_SPEED);
            Double.isNaN(d3);
            statFromConfig = (float) (d3 * percentValueAsMultiplier3);
        }
        if (towerStatType == towerStatType2 && isAbilityInstalled(1)) {
            double d4 = statFromConfig;
            double percentValueAsMultiplier4 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_FAST_MECHANISM_SPEED);
            Double.isNaN(d4);
            statFromConfig = (float) (d4 * percentValueAsMultiplier4);
        }
        if (towerStatType == TowerStatType.STUN_CHANCE && isAbilityInstalled(0)) {
            double d5 = statFromConfig;
            double percentValueAsMultiplier5 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_HEAVY_SHELL_CHANCE);
            Double.isNaN(d5);
            return (float) (d5 * percentValueAsMultiplier5);
        }
        return statFromConfig;
    }

    /* renamed from: h */
    public final float m20764h() {
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_BLAST_A_STOPPING_FORCE_MIN_DIST);
        return floatValue + (getUpgradeLevel() * 0.1f * (this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_BLAST_A_STOPPING_FORCE_MAX_DIST) - floatValue));
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        float f2 = this.rangeInPixels;
        float f3 = f2 * f2;
        this.f12184O.clear();
        Array<Tile> tilesInRange = getTilesInRange();
        int i = tilesInRange.size;
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            Tile tile = tilesInRange.items[i2];
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = tile.enemies;
            if (delayedRemovalArray.size != 0) {
                delayedRemovalArray.begin();
                int i3 = tile.enemies.size;
                for (int i4 = 0; i4 < i3; i4++) {
                    Enemy.EnemyReference enemyReference = tile.enemies.items[i4];
                    Enemy enemy = enemyReference.enemy;
                    if (enemy != null && canAttackEnemy(enemy) && tile.center.dst2(enemy.getPosition()) < f3) {
                        this.f12184O.add(enemyReference);
                    }
                }
                tile.enemies.end();
            }
        }
        if (this.f12184O.size != 0) {
            z = true;
        }
        this.f12185P = z;
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        int i;
        float f2;
        float f3 = this.f12183N + f;
        this.f12183N = f3;
        if (this.f12185P && f3 >= getAttackDelay() && this.f12183N > 0.2f && !isOutOfOrder()) {
            float f4 = this.rangeInPixels;
            float f5 = f4 * f4;
            boolean z = false;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                Array<Enemy.EnemyReference> array = this.f12184O;
                if (i2 >= array.size) {
                    break;
                }
                Enemy enemy = array.items[i2].enemy;
                if (enemy != null && getTile().center.dst2(enemy.getPosition()) < f5) {
                    if (!this.f8844S.enemy.giveDamage(enemy, this, this.f12186Q * (1.0f - (getTile().center.dst(enemy.getPosition()) / this.rangeInPixels)), DamageType.EXPLOSION, null, true, null) && i3 < 3) {
                        float f6 = this.f12187R;
                        IntIntMap intIntMap = enemy.buffStunCountByTower;
                        if (intIntMap == null) {
                            i = 0;
                        } else {
                            i = intIntMap.get(this.f8924id, 0);
                        }
                        if (i > 0) {
                            f6 *= (float) StrictMath.pow(0.800000011920929d, i);
                        }
                        float f7 = this.f12188T;
                        byte b = enemy.buffStunCount;
                        float[] fArr = StunBuffProcessor.STUN_DURATION_BY_STUN_COUNT;
                        if (b >= fArr.length) {
                            f6 = 0.0f;
                        } else {
                            f7 *= fArr[b];
                        }
                        if (f6 != 0.0f && this.f8844S.gameState.randomFloat() < f6) {
                            StunBuff obtain = Game.f8589i.buffManager.f9699F.STUN.obtain();
                            float buffVulnerability = f7 * enemy.getBuffVulnerability(BuffType.STUN);
                            obtain.setup(buffVulnerability, 10.0f * buffVulnerability, this.f8924id);
                            this.f8844S.buff.P_STUN.addBuff(enemy, obtain);
                            i3++;
                            if (this.f8844S.achievement.isActive()) {
                                Game.f8589i.achievementManager.setProgress(AchievementType.MASS_STUN_ENEMIES_ONE_SHOT, i3);
                            }
                        }
                        if (isAbilityInstalled(3)) {
                            if (this.f8844S.gameState.randomFloat() < this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_STOPPING_FORCE_CHANCE)) {
                                float m20764h = m20764h();
                                ThrowBackBuff obtain2 = Game.f8589i.buffManager.f9699F.THROW_BACK.obtain();
                                if (isAbilityInstalled(4)) {
                                    f2 = m20763i();
                                } else {
                                    f2 = 1.0f;
                                }
                                obtain2.setup(this.f8924id, m20764h, 1.0f, 10.0f, f2);
                                this.f8844S.buff.P_THROW_BACK.addBuff(enemy, obtain2);
                            }
                        }
                    }
                    z = true;
                }
                i2++;
            }
            if (z) {
                this.f12183N = 0.0f;
                this.shotCount++;
                if (Game.f8589i.settingsManager.isExplosionsDrawing() && this.f8844S._particle != null) {
                    ParticleEffectPool.PooledEffect obtain3 = Game.f8589i.towerManager.f10174F.BLAST.f12192j.obtain();
                    float x = (getTile().getX() * 128) + 64;
                    float y = (getTile().getY() * 128) + 64;
                    obtain3.setPosition(x, y);
                    ParticleEmitter first = obtain3.getEmitters().first();
                    ParticleEmitter.GradientColorValue tint = first.getTint();
                    float[] colors = tint.getColors();
                    Color color = f12180V;
                    colors[0] = color.f3892r;
                    colors[1] = color.f3891g;
                    colors[2] = color.f3890b;
                    tint.setColors(colors);
                    first.getXScale().setHigh(this.rangeInPixels * 2.0f);
                    first.getYScale().setHigh(this.rangeInPixels * 2.0f);
                    this.f8844S._particle.addParticle(obtain3, LimitedParticleType.EXPLOSION_BLAST, x, y);
                }
                SoundSystem soundSystem = this.f8844S._sound;
                if (soundSystem != null) {
                    soundSystem.playShotSound(StaticSoundType.SHOT_BLAST, this);
                }
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12181W) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.BLAST.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        ShapeManager shapeManager;
        super.drawBatch(spriteBatch, f);
        if (this.f8844S._mapRendering.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED) {
            if (this.f12182M == null && (shapeManager = Game.f8589i.shapeManager) != null) {
                this.f12182M = (Circle) shapeManager.getFactory(ShapeType.CIRCLE).obtain();
                Color color = MaterialColor.BLUE_GREY.P500;
                Color cpy = color.cpy();
                Color cpy2 = color.cpy();
                cpy.f3889a = 0.0f;
                cpy2.f3889a = 0.14f;
                this.f12182M.setup(getTile().center.f5527x, getTile().center.f5528y, 0.0f, 0.0f, 48, cpy.toFloatBits(), cpy2.toFloatBits());
            }
            Circle circle = this.f12182M;
            if (circle != null) {
                circle.draw(spriteBatch);
            }
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void drawWeapon(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        float f5;
        if (getTile().visibleOnScreen && !isOutOfOrder()) {
            float f6 = this.f12183N;
            float f7 = this.f12189U;
            if (f6 > f7) {
                f5 = 1.0f;
            } else {
                f5 = ((f6 / f7) * 0.3f) + 0.7f;
            }
            TextureRegionConfig.drawBatch(getWeaponTextures(), spriteBatch, f, f2, f3, f5, 0.0f);
        }
    }

    /* renamed from: i */
    public final float m20763i() {
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_STOPPING_FORCE_ULTIMATE_MIN);
        return percentValueAsMultiplier + ((((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BLAST_A_STOPPING_FORCE_ULTIMATE_MAX)) - percentValueAsMultiplier) * (getUpgradeLevel() / 10.0f));
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12183N = input.readFloat();
        this.f12184O = (Array) kryo.readObject(input, Array.class);
        this.f12185P = input.readBoolean();
        this.f12186Q = input.readFloat();
        this.f12187R = input.readFloat();
        this.f12188T = input.readFloat();
        this.f12189U = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        super.setUnregistered();
        this.f12184O.clear();
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12186Q = getStatBuffed(TowerStatType.DAMAGE);
        this.f12187R = getStatBuffed(TowerStatType.STUN_CHANCE) * 0.01f;
        this.f12188T = getStatBuffed(TowerStatType.U_STUN_DURATION);
        this.f12189U = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
        if (this.f12182M != null && getTile() != null) {
            float innerColor = this.f12182M.getInnerColor();
            float outerColor = this.f12182M.getOuterColor();
            Circle circle = this.f12182M;
            float f = getTile().center.f5527x;
            float f2 = getTile().center.f5528y;
            float f3 = this.rangeInPixels;
            circle.setup(f, f2, f3 * 0.5f, f3, 48, innerColor, outerColor);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12183N);
        kryo.writeObject(output, this.f12184O);
        output.writeBoolean(this.f12185P);
        output.writeFloat(this.f12186Q);
        output.writeFloat(this.f12187R);
        output.writeFloat(this.f12188T);
        output.writeFloat(this.f12189U);
    }
}
