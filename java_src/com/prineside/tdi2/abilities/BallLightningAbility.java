package com.prineside.tdi2.abilities;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
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
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.projectiles.ChainLightningProjectile;
import com.prineside.tdi2.shapes.ChainLightning;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.FloatSorter;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BallLightningAbility extends Ability {
    public static final float DEFAULT_ATTACK_INTERVAL = 0.2f;

    /* renamed from: u */
    public static final int[] f8957u = {100, 125, 150, 175, 250, 300, HttpStatus.SC_BAD_REQUEST, 550, 750, 875, CoreTile.FIXED_LEVEL_XP_REQUIREMENT};

    /* renamed from: v */
    public static final int[][] f8958v = {new int[]{5, 10, 25, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 5, 15, 30, 0, 0, 0, 0, 0, 250}, new int[]{0, 0, 0, 0, 10, 25, 40, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 10, 20, 60, 0, 150}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 20, 75, 0}};

    /* renamed from: w */
    public static final Vector2 f8959w = new Vector2();

    /* renamed from: x */
    public static final Color f8960x = new Color();
    public float attackInterval;

    /* renamed from: b */
    public Vector2 f8961b;

    /* renamed from: d */
    public Vector2 f8962d;
    public float damage;
    public float duration;

    /* renamed from: k */
    public Enemy.EnemyReference f8963k;
    public Tower launchedByTower;

    /* renamed from: p */
    public float f8964p;

    /* renamed from: q */
    public float f8965q;

    /* renamed from: r */
    public DelayedRemovalArray<Enemy.EnemyReference> f8966r;

    /* renamed from: s */
    public int f8967s;
    @NAGS

    /* renamed from: t */
    public final DelayedRemovalArray<ChainLightning> f8968t;

    /* loaded from: classes2.dex */
    public static class BallLightningAbilityFactory extends Ability.Factory<BallLightningAbility> {

        /* renamed from: c */
        public TextureRegion f8969c;

        /* renamed from: d */
        public TextureRegion f8970d;

        /* renamed from: e */
        public TextureRegion f8971e;

        public BallLightningAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.YELLOW.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.YELLOW.P800;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-ball-lightning");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return BallLightningAbility.f8957u[StrictMath.min(i, BallLightningAbility.f8957u.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return BallLightningAbility.f8958v[resourceType.ordinal()][StrictMath.min(i, BallLightningAbility.f8958v[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return true;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public BallLightningAbility create() {
            return new BallLightningAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            float floatValue = gameValueProvider.getFloatValue(GameValueType.ABILITY_BALL_LIGHTNING_DURATION);
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_BALL_LIGHTNING_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_BALL_LIGHTNING", 3, Float.valueOf(0.6f), Float.valueOf(MathUtils.round(((float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_BALL_LIGHTNING_DAMAGE)) * 1000.0f) / 10.0f), Float.valueOf(floatValue));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_coins_for_killed_enemies", Integer.valueOf(round));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            this.f8969c = Game.f8589i.assetManager.getTextureRegion("ball-lightning-orb");
            this.f8970d = Game.f8589i.assetManager.getTextureRegion("particle-default");
            this.f8971e = Game.f8589i.assetManager.getTextureRegion("chain-lightning");
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f8964p >= this.duration + 0.5f;
    }

    public BallLightningAbility() {
        super(AbilityType.BALL_LIGHTNING);
        this.f8961b = new Vector2();
        this.f8962d = new Vector2();
        this.f8963k = Enemy.EnemyReference.NULL;
        this.attackInterval = 0.2f;
        this.f8965q = 0.0f;
        this.f8966r = new DelayedRemovalArray<>(false, 4, Enemy.EnemyReference.class);
        this.f8967s = 0;
        this.f8968t = new DelayedRemovalArray<>(false, 8, ChainLightning.class);
    }

    @Override // com.prineside.tdi2.Ability
    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        float f2 = this.f8964p;
        float f3 = this.duration;
        float f4 = 0.0f;
        if (f2 >= f3) {
            float f5 = 1.0f - ((f2 - f3) / 0.5f);
            if (f5 >= 0.0f) {
                f4 = f5;
            }
        } else {
            f4 = 1.0f;
        }
        Color color = f8960x;
        color.set(MaterialColor.LIGHT_BLUE.P200);
        color.f3889a = ((PMath.sin(this.f8964p * 5.0f) * 0.04f) + 0.16f) * f4;
        spriteBatch.setColor(color);
        TextureRegion textureRegion = Game.f8589i.abilityManager.f9538F.BALL_LIGHTNING.f8970d;
        Vector2 vector2 = this.f8961b;
        spriteBatch.draw(textureRegion, vector2.f5527x - 192.0f, vector2.f5528y - 192.0f, 384.0f, 384.0f);
        color.set(1.0f, 1.0f, 1.0f, f4);
        spriteBatch.setColor(color);
        TextureRegion textureRegion2 = Game.f8589i.abilityManager.f9538F.BALL_LIGHTNING.f8969c;
        Vector2 vector22 = this.f8961b;
        spriteBatch.draw(textureRegion2, vector22.f5527x - 32.0f, vector22.f5528y - 32.0f, 64.0f, 64.0f);
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        int i = 0;
        while (true) {
            DelayedRemovalArray<ChainLightning> delayedRemovalArray = this.f8968t;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.items[i].draw(spriteBatch);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.duration = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_BALL_LIGHTNING_DURATION);
        this.damage = (float) (this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_BALL_LIGHTNING_DAMAGE) * this.f8844S.enemy.getTowersMaxDps());
        this.f8965q = 0.0f;
        this.f8964p = 0.0f;
        this.f8961b.set(i, i2);
        this.launchedByTower = null;
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_BALL_LIGHTNING_COINS);
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray;
        Tower tower;
        DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray2;
        boolean z;
        GameSystemProvider gameSystemProvider;
        this.f8964p += f;
        Tower tower2 = this.launchedByTower;
        Enemy enemy = null;
        if (tower2 != null && !tower2.isRegistered()) {
            this.launchedByTower = null;
            this.f8964p = this.duration;
            return;
        }
        int i = 0;
        if (this.f8963k.enemy == null) {
            float f2 = Float.MAX_VALUE;
            int i2 = 0;
            while (true) {
                gameSystemProvider = this.f8844S;
                DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray3 = gameSystemProvider.map.spawnedEnemies;
                if (i2 >= delayedRemovalArray3.size) {
                    break;
                }
                Enemy enemy2 = delayedRemovalArray3.items[i2].enemy;
                if (enemy2 != null && enemy2.isVulnerableTo(DamageType.ELECTRICITY)) {
                    if (enemy == null) {
                        enemy = enemy2;
                    } else {
                        float dst2 = this.f8961b.dst2(enemy2.getPosition());
                        if (dst2 < f2) {
                            enemy = enemy2;
                            f2 = dst2;
                        }
                    }
                }
                i2++;
            }
            if (enemy != null) {
                this.f8963k = gameSystemProvider.enemy.getReference(enemy);
            }
        }
        Enemy enemy3 = this.f8963k.enemy;
        if (enemy3 != null) {
            Vector2 vector2 = f8959w;
            vector2.set(enemy3.getPosition());
            vector2.sub(this.f8961b);
            vector2.nor();
            vector2.scl(10.0f * f);
            this.f8962d.add(vector2);
            this.f8962d.limit2(100.0f);
        } else {
            this.f8962d.scl(0.9f);
        }
        this.f8961b.add(this.f8962d);
        float f3 = this.f8965q + f;
        this.f8965q = f3;
        float f4 = this.attackInterval;
        if (f3 >= f4) {
            this.f8965q = f3 - f4;
            this.f8966r.begin();
            int i3 = 0;
            while (true) {
                delayedRemovalArray = this.f8966r;
                if (i3 >= delayedRemovalArray.size) {
                    break;
                }
                if (delayedRemovalArray.items[i3].enemy == null) {
                    delayedRemovalArray.removeIndex(i3);
                }
                i3++;
            }
            delayedRemovalArray.end();
            int i4 = this.f8966r.size;
            if (i4 < 3 && i4 < this.f8844S.map.spawnedEnemies.size) {
                FloatSorter floatSorter = FloatSorter.getInstance();
                floatSorter.begin();
                int i5 = 0;
                while (true) {
                    DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray4 = this.f8844S.map.spawnedEnemies;
                    if (i5 >= delayedRemovalArray4.size) {
                        break;
                    }
                    Enemy.EnemyReference enemyReference = delayedRemovalArray4.items[i5];
                    Enemy enemy4 = enemyReference.enemy;
                    if (enemy4 != null) {
                        floatSorter.add(enemyReference, this.f8961b.dst2(enemy4.getPosition()));
                    }
                    i5++;
                }
                Array<FloatSorter.Entity> sort = floatSorter.sort();
                for (int i6 = 0; i6 < sort.size; i6++) {
                    Enemy.EnemyReference enemyReference2 = (Enemy.EnemyReference) sort.items[i6].object;
                    Enemy enemy5 = enemyReference2.enemy;
                    if (enemy5.getAbilityVulnerability(AbilityType.BALL_LIGHTNING) != 0.0f && enemy5.isVulnerableTo(DamageType.ELECTRICITY) && ((tower = this.launchedByTower) == null || tower.canAttackEnemy(enemy5))) {
                        int i7 = 0;
                        while (true) {
                            delayedRemovalArray2 = this.f8966r;
                            if (i7 < delayedRemovalArray2.size) {
                                if (delayedRemovalArray2.items[i7].enemy == enemy5) {
                                    z = true;
                                    break;
                                }
                                i7++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (!z) {
                            delayedRemovalArray2.add(enemyReference2);
                            if (this.f8966r.size == 3) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                floatSorter.end();
            }
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray5 = this.f8966r;
            int i8 = delayedRemovalArray5.size;
            if (i8 != 0) {
                if (this.f8967s >= i8) {
                    this.f8967s = 0;
                }
                Enemy enemy6 = delayedRemovalArray5.items[this.f8967s].enemy;
                ChainLightningProjectile chainLightningProjectile = (ChainLightningProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.CHAIN_LIGHTNING).obtain();
                this.f8844S.projectile.register(chainLightningProjectile);
                float abilityVulnerability = this.damage * enemy6.getAbilityVulnerability(AbilityType.BALL_LIGHTNING);
                chainLightningProjectile.setup(null, enemy6, abilityVulnerability, abilityVulnerability * 0.1f, 0.0f, 0.0f, this.f8961b);
                this.f8967s++;
            }
        }
        if (Game.f8589i.settingsManager.isParticlesDrawing()) {
            if (this.f8964p < this.duration) {
                int i9 = FastRandom.getInt(3) + 1;
                for (int i10 = 0; i10 < i9; i10++) {
                    ChainLightning obtain = Game.f8589i.shapeManager.f10141F.CHAIN_LIGHTNING.obtain();
                    obtain.setTexture(Game.f8589i.abilityManager.f9538F.BALL_LIGHTNING.f8971e, true, true);
                    Color color = f8960x;
                    color.set(MaterialColor.LIGHT_BLUE.P200);
                    color.f3889a = 0.56f;
                    obtain.setFadingToEnd(true);
                    obtain.setColor(color);
                    Vector2 vector22 = this.f8961b;
                    float f5 = vector22.f5527x;
                    obtain.setup(f5, vector22.f5528y, f5 + ((FastRandom.getFloat() - 0.5f) * 2.0f * 100.0f), this.f8961b.f5528y + ((FastRandom.getFloat() - 0.5f) * 2.0f * 100.0f), 2.0f, 0.1f, false, 6.7200003f, 33.6f, 8.0f);
                    this.f8968t.add(obtain);
                }
            }
            this.f8968t.begin();
            while (true) {
                DelayedRemovalArray<ChainLightning> delayedRemovalArray6 = this.f8968t;
                if (i < delayedRemovalArray6.size) {
                    ChainLightning chainLightning = delayedRemovalArray6.items[i];
                    chainLightning.update(f);
                    if (chainLightning.isFinished()) {
                        this.f8968t.removeIndex(i);
                        chainLightning.free();
                    }
                    i++;
                } else {
                    delayedRemovalArray6.end();
                    return;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8961b = (Vector2) kryo.readObject(input, Vector2.class);
        this.f8962d = (Vector2) kryo.readObject(input, Vector2.class);
        this.f8963k = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.duration = input.readFloat();
        this.damage = input.readFloat();
        this.launchedByTower = (Tower) kryo.readClassAndObject(input);
        this.attackInterval = input.readFloat();
        this.f8964p = input.readFloat();
        this.f8965q = input.readFloat();
        this.f8966r = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f8967s = input.readVarInt(true);
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f8961b);
        kryo.writeObject(output, this.f8962d);
        kryo.writeObject(output, this.f8963k);
        output.writeFloat(this.duration);
        output.writeFloat(this.damage);
        kryo.writeClassAndObject(output, this.launchedByTower);
        output.writeFloat(this.attackInterval);
        output.writeFloat(this.f8964p);
        output.writeFloat(this.f8965q);
        kryo.writeObject(output, this.f8966r);
        output.writeVarInt(this.f8967s, true);
    }
}
