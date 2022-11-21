package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.CollidingProjectile;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.abilities.BulletWallAbility;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BulletWallProjectile extends CollidingProjectile {

    /* renamed from: A */
    public static final Vector2 f10413A;

    /* renamed from: y */
    public static final Color f10414y = Color.WHITE.cpy();

    /* renamed from: z */
    public static final Color f10415z;

    /* renamed from: v */
    public boolean f10416v;
    @NAGS

    /* renamed from: w */
    public TrailMultiLine f10417w;
    @NAGS

    /* renamed from: x */
    public int f10418x;

    /* loaded from: classes2.dex */
    public static class MultishotProjectileFactory extends Projectile.Factory<BulletWallProjectile> {

        /* renamed from: b */
        public TextureRegion f10419b;

        /* renamed from: d */
        public TextureRegion f10420d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public BulletWallProjectile mo21367a() {
            return new BulletWallProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10419b = Game.f8589i.assetManager.getTextureRegion("projectile-bullet-wall");
            this.f10420d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
        }
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile
    public boolean isDone() {
        return this.f10416v || super.isDone();
    }

    @Override // com.prineside.tdi2.Projectile
    public void multiplyDamage(float f, Ability ability) {
        if (ability == null) {
            super.multiplyDamage(f, ability);
        }
    }

    static {
        Color color = MaterialColor.TEAL.P500;
        f10415z = new Color(color.f3892r, color.f3891g, color.f3890b, 0.56f);
        f10413A = new Vector2();
    }

    public BulletWallProjectile() {
        super(ProjectileType.BULLET_WALL);
    }

    @Override // com.prineside.tdi2.CollidingProjectile
    /* renamed from: b */
    public void mo21369b(Enemy enemy) {
        float f = this.f8833a;
        if (Game.f8589i.enemyManager.getMainEnemyType(enemy.type) == EnemyType.BOSS) {
            f *= 0.1f;
        }
        this.f8844S.enemy.giveDamage(enemy, null, f, DamageType.BULLET, this.affectedByAbility, false, this);
        this.f10416v = true;
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TrailMultiLine trailMultiLine = this.f10417w;
        if (trailMultiLine != null && this.f10418x == trailMultiLine.getUsageId()) {
            Vector2 vector2 = f10413A;
            Vector2 vector22 = this.f8537k;
            vector2.set(-vector22.f5527x, -vector22.f5528y).scl(6.0f).add(this.drawPosition);
            this.f10417w.updateStartPos(f, vector2.f5527x, vector2.f5528y);
        }
        if (m22027d() < 0.2f) {
            Color color = f10414y;
            color.f3889a = m22027d() / 0.2f;
            spriteBatch.setColor(color);
        }
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.BULLET_WALL.f10419b;
        Vector2 vector23 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector23.f5527x - 7.5f, vector23.f5528y - 15.0f, 7.5f, 15.0f, 15.0f, 30.0f, 1.0f, 1.0f, this.drawAngle);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10416v = input.readBoolean();
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10416v = false;
        this.f10417w = null;
    }

    public void setup(float f, Vector2 vector2, Vector2 vector22, float f2, BulletWallAbility bulletWallAbility) {
        super.m22024g(vector2, f2, vector22);
        this.f8833a = f;
        this.affectedByAbility = bulletWallAbility;
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            TrailMultiLine obtain = Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.obtain();
            this.f10417w = obtain;
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.BULLET_WALL.f10420d);
            this.f10417w.setup(f10415z, 4, 0.2f, 30.0f);
            this.f10417w.setStartPoint(vector2.f5527x, vector2.f5528y);
            this.f8844S._projectileTrail.addTrail(this.f10417w);
            this.f10418x = this.f10417w.getUsageId();
        }
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f10416v);
    }
}
