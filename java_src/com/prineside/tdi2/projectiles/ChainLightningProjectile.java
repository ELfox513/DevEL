package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.ObjectSet;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.abilities.BallLightningAbility;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.shapes.ChainLightning;
import com.prineside.tdi2.towers.TeslaTower;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ChainLightningProjectile extends Projectile {

    /* renamed from: d */
    public boolean f10427d;

    /* renamed from: k */
    public Tower f10428k;

    /* renamed from: p */
    public float f10429p;

    /* renamed from: q */
    public float f10430q;

    /* renamed from: r */
    public float f10431r;

    /* renamed from: s */
    public float f10432s;

    /* renamed from: t */
    public ObjectSet<Enemy.EnemyReference> f10433t;

    /* renamed from: u */
    public Vector2 f10434u;

    /* renamed from: v */
    public Tile f10435v;

    /* renamed from: w */
    public float f10436w;
    @NAGS

    /* renamed from: x */
    public final DelayedRemovalArray<ChainLightning> f10437x;

    /* loaded from: classes2.dex */
    public static class ChainLightningProjectileFactory extends Projectile.Factory<ChainLightningProjectile> {

        /* renamed from: b */
        public TextureRegion f10438b;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public ChainLightningProjectile mo21367a() {
            return new ChainLightningProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10438b = Game.f8589i.assetManager.getTextureRegion("chain-lightning");
        }
    }

    @Override // com.prineside.tdi2.Projectile
    public void applyDrawInterpolation(float f) {
    }

    @Override // com.prineside.tdi2.Projectile
    public boolean hasReachedTarget() {
        return this.f10432s <= 0.0f && this.f10436w > 0.2f;
    }

    @Override // com.prineside.tdi2.Projectile
    public boolean isDone() {
        return hasReachedTarget();
    }

    public void setup(Tower tower, Enemy enemy, float f, float f2, float f3, float f4, Vector2 vector2) {
        if (f4 >= 0.0f) {
            this.f10434u.set(vector2);
            this.f10428k = tower;
            this.f10429p = f;
            this.f10430q = f2;
            this.f10431r = f3;
            this.f10432s = f4;
            this.f10436w = 0.0f;
            m21377b(enemy);
            this.f10427d = true;
            return;
        }
        throw new IllegalArgumentException("chainLength is " + f4);
    }

    public ChainLightningProjectile() {
        super(ProjectileType.CHAIN_LIGHTNING);
        this.f10433t = new ObjectSet<>();
        this.f10434u = new Vector2();
        this.f10437x = new DelayedRemovalArray<>(false, 1, ChainLightning.class);
    }

    /* renamed from: a */
    public final boolean m21378a(float f) {
        Tower tower;
        float f2 = this.f10432s;
        if (f2 > 0.0f) {
            if (f2 < 1.0f && this.f8844S.gameState.randomFloat() > this.f10432s) {
                this.f10432s = 0.0f;
                return true;
            }
            Enemy enemy = null;
            float f3 = Float.MAX_VALUE;
            Array<Tile> neighbourTilesAndThis = this.f10435v.getNeighbourTilesAndThis();
            int i = neighbourTilesAndThis.size;
            for (int i2 = 0; i2 < i; i2++) {
                Tile tile = neighbourTilesAndThis.items[i2];
                tile.enemies.begin();
                int i3 = tile.enemies.size;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        break;
                    }
                    Enemy enemy2 = tile.enemies.items[i4].enemy;
                    if (enemy2 != null) {
                        float dst2 = enemy2.getPosition().dst2(this.f10434u);
                        if (dst2 < f3 && !this.f10433t.contains(this.f8844S.enemy.getReference(enemy2)) && (((tower = this.f10428k) == null || tower.canAttackEnemy(enemy2)) && enemy2.isVulnerableTo(DamageType.ELECTRICITY))) {
                            if (dst2 < 12.8f) {
                                enemy = enemy2;
                                f3 = dst2;
                                break;
                            }
                            enemy = enemy2;
                            f3 = dst2;
                        }
                    }
                    i4++;
                }
                tile.enemies.end();
            }
            if (enemy == null) {
                this.f10432s = 0.0f;
                return true;
            }
            float f4 = this.f10432s - (1.0f - (enemy.buffFreezingLightningLengthBonus * 0.01f));
            this.f10432s = f4;
            if (f4 < 0.0f) {
                this.f10432s = 0.0f;
            }
            m21377b(enemy);
            return false;
        }
        this.f10436w += f;
        return false;
    }

    /* renamed from: b */
    public final void m21377b(Enemy enemy) {
        float randomFloat = enemy.getPosition().f5527x + ((this.f8844S.gameState.randomFloat() - 0.5f) * enemy.getSize() * 0.8f);
        float randomFloat2 = enemy.getPosition().f5528y + ((this.f8844S.gameState.randomFloat() - 0.5f) * enemy.getSize() * 0.8f);
        GameSystemProvider gameSystemProvider = this.f8844S;
        if (gameSystemProvider._particle != null && !gameSystemProvider.gameState.canSkipMediaUpdate() && Game.f8589i.settingsManager.isProjectilesDrawing()) {
            ChainLightning obtain = Game.f8589i.shapeManager.f10141F.CHAIN_LIGHTNING.obtain();
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.CHAIN_LIGHTNING.f10438b, true, true);
            obtain.setColor(MaterialColor.BLUE.P300);
            Vector2 vector2 = this.f10434u;
            obtain.setup(vector2.f5527x, vector2.f5528y, randomFloat, randomFloat2, 0.5f, 0.25f, true, 13.440001f, 67.2f, 16.0f);
            this.f10437x.add(obtain);
        }
        this.f10434u.set(randomFloat, randomFloat2);
        this.f10435v = enemy.getCurrentTile();
        if (!enemy.isVulnerableToSpecial(SpecialDamageType.CHAINING)) {
            this.f10432s = 0.0f;
        }
        this.f10433t.add(this.f8844S.enemy.getReference(enemy));
        this.f8844S.enemy.giveDamage(enemy, this.f10428k, this.f10429p, DamageType.ELECTRICITY, this.affectedByAbility, true, this);
        Tower tower = this.f10428k;
        if (tower != null && tower.type == TowerType.TESLA) {
            float f = this.f8844S.enemy.lastDamageGiven;
            TeslaTower teslaTower = (TeslaTower) tower;
            if (teslaTower.isAbilityInstalled(4)) {
                teslaTower.damageSinceLastBallLightning += f;
                float intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_TESLA_A_ULTIMATE_KILL_INTERVAL) * enemy.maxHealth;
                float f2 = teslaTower.damageSinceLastBallLightning;
                if (f2 >= intValue) {
                    teslaTower.damageSinceLastBallLightning = f2 - intValue;
                    BallLightningAbility ballLightningAbility = (BallLightningAbility) this.f8844S.ability.startAbility(AbilityType.BALL_LIGHTNING, (int) randomFloat, (int) randomFloat2);
                    ballLightningAbility.damage = teslaTower.damage * 2.0f * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_ULTIMATE_DAMAGE));
                    ballLightningAbility.attackInterval = teslaTower.attackDelay * 2.0f;
                    ballLightningAbility.duration = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_TESLA_A_ULTIMATE_DURATION);
                    ballLightningAbility.launchedByTower = teslaTower;
                }
            }
        }
        float f3 = this.f10429p * this.f10431r;
        this.f10429p = f3;
        float f4 = this.f10430q;
        if (f3 < f4) {
            this.f10429p = f4;
        }
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        if (!this.f10427d) {
            return;
        }
        int i = 0;
        while (true) {
            DelayedRemovalArray<ChainLightning> delayedRemovalArray = this.f10437x;
            if (i < delayedRemovalArray.size) {
                ChainLightning chainLightning = delayedRemovalArray.items[i];
                chainLightning.update(f);
                if (chainLightning.isFinished()) {
                    this.f10437x.removeIndex(i);
                    chainLightning.free();
                } else {
                    chainLightning.draw(spriteBatch);
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Projectile
    public void update(float f) {
        if (!this.f10427d) {
            return;
        }
        Tower tower = this.f10428k;
        if (tower != null && tower.isRegistered()) {
            if (this.f10435v.getMap() == null) {
                this.f10432s = 0.0f;
            }
            int ceil = MathUtils.ceil(f / 0.03448276f);
            if (ceil == 1) {
                m21378a(f);
                return;
            }
            float f2 = f / ceil;
            for (int i = 0; i < ceil && !m21378a(f2); i++) {
            }
            return;
        }
        this.f10432s = 0.0f;
        this.f10436w += f;
    }

    @Override // com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10427d = input.readBoolean();
        this.f10428k = (Tower) kryo.readClassAndObject(input);
        this.f10429p = input.readFloat();
        this.f10430q = input.readFloat();
        this.f10431r = input.readFloat();
        this.f10432s = input.readFloat();
        this.f10433t = (ObjectSet) kryo.readObject(input, ObjectSet.class);
        this.f10434u = (Vector2) kryo.readObject(input, Vector2.class);
        this.f10435v = (Tile) kryo.readClassAndObject(input);
        this.f10436w = input.readFloat();
    }

    @Override // com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        int i = 0;
        this.f10427d = false;
        this.f10429p = 0.0f;
        this.f10430q = 0.0f;
        this.f10431r = 0.0f;
        this.f10432s = 0.0f;
        this.f10436w = 0.0f;
        this.f10428k = null;
        this.f10435v = null;
        this.f10433t.clear();
        while (true) {
            DelayedRemovalArray<ChainLightning> delayedRemovalArray = this.f10437x;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.items[i].free();
                i++;
            } else {
                delayedRemovalArray.clear();
                this.f10434u.setZero();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f10427d);
        kryo.writeClassAndObject(output, this.f10428k);
        output.writeFloat(this.f10429p);
        output.writeFloat(this.f10430q);
        output.writeFloat(this.f10431r);
        output.writeFloat(this.f10432s);
        kryo.writeObject(output, this.f10433t);
        kryo.writeObject(output, this.f10434u);
        kryo.writeClassAndObject(output, this.f10435v);
        output.writeFloat(this.f10436w);
    }
}
