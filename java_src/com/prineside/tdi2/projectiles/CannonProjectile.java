package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyFollowingExplosiveProjectile;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.explosions.CannonExplosion;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.towers.CannonTower;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class CannonProjectile extends EnemyFollowingExplosiveProjectile {

    /* renamed from: B */
    public static final Color f10421B;

    /* renamed from: A */
    public CannonExplosion f10422A;
    @NAGS

    /* renamed from: y */
    public TrailMultiLine f10423y;
    @NAGS

    /* renamed from: z */
    public int f10424z;

    /* loaded from: classes2.dex */
    public static class CannonProjectileFactory extends Projectile.Factory<CannonProjectile> {

        /* renamed from: b */
        public TextureRegion f10425b;

        /* renamed from: d */
        public TextureRegion f10426d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public CannonProjectile mo21367a() {
            return new CannonProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10425b = Game.f8589i.assetManager.getTextureRegion("projectile-cannon");
            this.f10426d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
        }
    }

    static {
        Color color = MaterialColor.RED.P500;
        f10421B = new Color(color.f3892r, color.f3891g, color.f3890b, 0.56f);
    }

    public void setup(Tower tower, Enemy enemy, float f, float f2, Vector2 vector2, float f3, int i, float f4, float f5) {
        CannonExplosion cannonExplosion = (CannonExplosion) Game.f8589i.explosionManager.getFactory(ExplosionType.CANNON).obtain();
        this.f10422A = cannonExplosion;
        cannonExplosion.setup(tower, enemy.getPosition().f5527x, enemy.getPosition().f5528y, f, f2, i, f4, f5);
        if (tower.isRegistered() && tower.type == TowerType.CANNON && ((CannonTower) tower).isAbilityInstalled(2)) {
            this.f10422A.piercingMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_FOUNDATION_PIERCING);
        }
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            TrailMultiLine obtain = Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.obtain();
            this.f10423y = obtain;
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.CANNON.f10426d);
            this.f10423y.setup(f10421B, 5, 0.09f, 36.0f);
            this.f10423y.setStartPoint(vector2.f5527x, vector2.f5528y);
            this.f8844S._projectileTrail.addTrail(this.f10423y);
            this.f10424z = this.f10423y.getUsageId();
        }
        super.m22017c(vector2, enemy, tower.angle, f3, this.f10422A, 1800.0f, 120.0f);
    }

    public CannonProjectile() {
        super(ProjectileType.CANNON);
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TrailMultiLine trailMultiLine = this.f10423y;
        if (trailMultiLine != null && this.f10424z == trailMultiLine.getUsageId()) {
            TrailMultiLine trailMultiLine2 = this.f10423y;
            Vector2 vector2 = this.drawPosition;
            trailMultiLine2.updateStartPos(f, vector2.f5527x, vector2.f5528y);
        }
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.CANNON.f10425b;
        Vector2 vector22 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector22.f5527x - 7.0f, vector22.f5528y - 7.0f, 14.0f, 14.0f);
    }

    @Override // com.prineside.tdi2.EnemyFollowingExplosiveProjectile, com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10422A = (CannonExplosion) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.EnemyFollowingExplosiveProjectile, com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10423y = null;
        this.f10422A = null;
    }

    @Override // com.prineside.tdi2.EnemyFollowingExplosiveProjectile, com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f10422A);
    }
}
