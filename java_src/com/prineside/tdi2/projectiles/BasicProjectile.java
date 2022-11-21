package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyFollowingProjectile;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.towers.BasicTower;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BasicProjectile extends EnemyFollowingProjectile {

    /* renamed from: A */
    public static final Color f10403A;

    /* renamed from: x */
    public Tower f10404x;
    @NAGS

    /* renamed from: y */
    public TrailMultiLine f10405y;
    @NAGS

    /* renamed from: z */
    public int f10406z;

    /* loaded from: classes2.dex */
    public static class BasicProjectileFactory extends Projectile.Factory<BasicProjectile> {

        /* renamed from: b */
        public TextureRegion f10407b;

        /* renamed from: d */
        public TextureRegion f10408d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public BasicProjectile mo21367a() {
            return new BasicProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10407b = Game.f8589i.assetManager.getTextureRegion("projectile-basic");
            this.f10408d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
        }
    }

    static {
        Color color = MaterialColor.TEAL.P500;
        f10403A = new Color(color.f3892r, color.f3891g, color.f3890b, 0.56f);
    }

    public BasicProjectile() {
        super(ProjectileType.BASIC);
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TrailMultiLine trailMultiLine = this.f10405y;
        if (trailMultiLine != null && this.f10406z == trailMultiLine.getUsageId()) {
            TrailMultiLine trailMultiLine2 = this.f10405y;
            Vector2 vector2 = this.drawPosition;
            trailMultiLine2.updateStartPos(f, vector2.f5527x, vector2.f5528y);
        }
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.BASIC.f10407b;
        Vector2 vector22 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector22.f5527x - 9.0f, vector22.f5528y - 9.0f, 18.0f, 18.0f);
    }

    public void setup(Tower tower, Enemy enemy, float f, Vector2 vector2, float f2) {
        this.f10404x = tower;
        this.f8833a = f;
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            TrailMultiLine obtain = Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.obtain();
            this.f10405y = obtain;
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.BASIC.f10408d);
            this.f10405y.setup(f10403A, 5, 0.09f, 30.0f);
            this.f10405y.setStartPoint(vector2.f5527x, vector2.f5528y);
            this.f8844S._projectileTrail.addTrail(this.f10405y);
            this.f10406z = this.f10405y.getUsageId();
        }
        super.setup(vector2, enemy, f2);
    }

    @Override // com.prineside.tdi2.Projectile
    public void hit() {
        super.hit();
        Tower tower = this.f10404x;
        if (tower != null && tower.isRegistered()) {
            Enemy target = getTarget();
            boolean z = false;
            if (target != null) {
                z = !target.isVulnerableToSpecial(SpecialDamageType.CHAINING);
                this.f8844S.enemy.giveDamage(getTarget(), this.f10404x, this.f8833a, DamageType.BULLET, this.affectedByAbility, true, this);
            }
            Tower tower2 = this.f10404x;
            if (tower2.type == TowerType.BASIC) {
                BasicTower basicTower = (BasicTower) tower2;
                if (!z && basicTower.isAbilityInstalled(2)) {
                    if (this.f8844S.gameState.randomFloat() < ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_FOUNDATION_RICOCHET_CHANCE))) {
                        double d = this.speed;
                        double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_BASIC_A_FOUNDATION_RICOCHET_SPEED);
                        Double.isNaN(d);
                        float f = (float) (d * percentValueAsMultiplier);
                        this.speed = f;
                        if (f > 192.0f) {
                            Array<Enemy> array = Projectile.f8832b;
                            array.clear();
                            this.f8844S.map.getEnemiesNearPoint(array, getPosition().f5527x, getPosition().f5528y, 256.0f);
                            for (int i = array.size - 1; i >= 0; i--) {
                                Array<Enemy> array2 = Projectile.f8832b;
                                Enemy enemy = array2.items[i];
                                if (enemy == target || !this.f10404x.canAttackEnemy(enemy)) {
                                    array2.removeIndex(i);
                                }
                            }
                            Array<Enemy> array3 = Projectile.f8832b;
                            int i2 = array3.size;
                            if (i2 != 0) {
                                setup(this.f10404x, array3.items[this.f8844S.gameState.randomInt(i2)], this.f8833a, getPosition(), this.speed / 128.0f);
                                this.maxRotationSpeed = 0.0f;
                                this.maxRotationSpeedDynamic = 0.0f;
                            }
                            array3.clear();
                        }
                    }
                }
            }
        }
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10404x = (Tower) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10404x = null;
        this.f10405y = null;
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f10404x);
    }
}
