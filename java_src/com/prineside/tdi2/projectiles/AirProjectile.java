package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyFollowingProjectile;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.buffs.BurnBuff;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.explosions.AirFallExplosion;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.towers.AirTower;
import com.prineside.tdi2.units.MineUnit;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class AirProjectile extends EnemyFollowingProjectile {

    /* renamed from: D */
    public static final Color f10393D;

    /* renamed from: E */
    public static final Vector2 f10394E;

    /* renamed from: A */
    public boolean f10395A;
    @NAGS

    /* renamed from: B */
    public TrailMultiLine f10396B;
    @NAGS

    /* renamed from: C */
    public int f10397C;

    /* renamed from: x */
    public AirTower f10398x;

    /* renamed from: y */
    public float f10399y;

    /* renamed from: z */
    public float f10400z;

    /* loaded from: classes2.dex */
    public static class AirProjectileFactory extends Projectile.Factory<AirProjectile> {

        /* renamed from: b */
        public TextureRegion f10401b;

        /* renamed from: d */
        public TextureRegion f10402d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public AirProjectile mo21367a() {
            return new AirProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10401b = Game.f8589i.assetManager.getTextureRegion("projectile-air");
            this.f10402d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
        }
    }

    static {
        Color color = MaterialColor.CYAN.P500;
        f10393D = new Color(color.f3892r, color.f3891g, color.f3890b, 0.56f);
        f10394E = new Vector2();
    }

    public AirProjectile() {
        super(ProjectileType.AIR);
    }

    /* renamed from: c */
    public final AirFallExplosion m21384c(Vector2 vector2, float f) {
        double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_AIMED_DROP_DAMAGE);
        if (this.f10398x.isRegistered() && this.f10398x.isAbilityInstalled(4)) {
            percentValueAsMultiplier += this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_ULTIMATE_DAMAGE);
        }
        AirFallExplosion airFallExplosion = (AirFallExplosion) Game.f8589i.explosionManager.getFactory(ExplosionType.AIR_FALL).obtain();
        airFallExplosion.setup(this.f10398x, vector2.f5527x, vector2.f5528y, f * ((float) percentValueAsMultiplier), 1.5f);
        return airFallExplosion;
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TrailMultiLine trailMultiLine = this.f10396B;
        if (trailMultiLine != null && this.f10397C == trailMultiLine.getUsageId()) {
            TrailMultiLine trailMultiLine2 = this.f10396B;
            Vector2 vector2 = this.drawPosition;
            trailMultiLine2.updateStartPos(f, vector2.f5527x, vector2.f5528y);
        }
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.AIR.f10401b;
        Vector2 vector22 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector22.f5527x - 9.0f, vector22.f5528y - 9.0f, 18.0f, 18.0f);
    }

    @Override // com.prineside.tdi2.Projectile
    public void hit() {
        Enemy target;
        float f;
        super.hit();
        AirTower airTower = this.f10398x;
        if (airTower != null && airTower.isRegistered() && (target = getTarget()) != null) {
            Vector2 vector2 = f10394E;
            vector2.set(target.getPosition());
            float f2 = target.maxHealth;
            if (this.f8844S.enemy.giveDamage(target, this.f10398x, this.f8833a, DamageType.BULLET, this.affectedByAbility, true, this)) {
                if (this.f10395A) {
                    AirFallExplosion m21384c = m21384c(vector2, f2);
                    if (this.f10398x.isAbilityInstalled(4)) {
                        MineUnit create = Game.f8589i.unitManager.f10234F.MINE.create();
                        create.setup(this.f10398x, getPosition().f5527x, getPosition().f5528y, vector2.f5527x, vector2.f5528y, m21384c, MaterialColor.CYAN.P500);
                        this.f8844S.unit.register(create);
                        this.f8844S.map.spawnUnit(create);
                        return;
                    }
                    this.f8844S.explosion.register(m21384c);
                    m21384c.explode();
                    return;
                }
                return;
            }
            Enemy target2 = getTarget();
            if (target2 != null && this.f8844S.gameState.randomFloat() < this.f10399y) {
                BurnBuff obtain = Game.f8589i.buffManager.f9699F.BURN.obtain();
                float f3 = target2.maxHealth * 0.02f;
                float f4 = this.f8833a;
                if (f3 > f4 * 10.0f) {
                    f = f4 * 10.0f;
                } else {
                    f = f3;
                }
                AirTower airTower2 = this.f10398x;
                float f5 = this.f10400z;
                obtain.setup(airTower2, f5, f5 * 10.0f, f, null);
                this.f8844S.buff.P_BURN.addBuff(target2, obtain);
                if (this.f10398x.getTarget() == target2) {
                    this.f10398x.currentTargetIgnited = true;
                }
            }
        }
    }

    public void setup(AirTower airTower, Enemy enemy, float f, Vector2 vector2, float f2, float f3, float f4, boolean z) {
        this.f10398x = airTower;
        this.f8833a = f;
        this.f10399y = f3;
        this.f10400z = f4;
        this.f10395A = z;
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            TrailMultiLine obtain = Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.obtain();
            this.f10396B = obtain;
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.AIR.f10402d);
            this.f10396B.setup(f10393D, 5, 0.09f, 30.0f);
            this.f10396B.setStartPoint(vector2.f5527x, vector2.f5528y);
            this.f8844S._projectileTrail.addTrail(this.f10396B);
            this.f10397C = this.f10396B.getUsageId();
        }
        super.setup(vector2, enemy, f2);
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10398x = (AirTower) kryo.readClassAndObject(input);
        this.f10399y = input.readFloat();
        this.f10400z = input.readFloat();
        this.f10395A = input.readBoolean();
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10398x = null;
        this.f10396B = null;
        this.f10399y = 0.0f;
        this.f10400z = 0.0f;
        this.f10395A = false;
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f10398x);
        output.writeFloat(this.f10399y);
        output.writeFloat(this.f10400z);
        output.writeBoolean(this.f10395A);
    }
}
