package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.CollidingProjectile;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class SplinterProjectile extends CollidingProjectile {

    /* renamed from: A */
    public static final Color f10502A;

    /* renamed from: B */
    public static final Vector2 f10503B;

    /* renamed from: z */
    public static final Color f10504z = Color.WHITE.cpy();

    /* renamed from: v */
    public Tower f10505v;

    /* renamed from: w */
    public boolean f10506w;
    @NAGS

    /* renamed from: x */
    public TrailMultiLine f10507x;
    @NAGS

    /* renamed from: y */
    public int f10508y;

    /* loaded from: classes2.dex */
    public static class SplinterProjectileFactory extends Projectile.Factory<SplinterProjectile> {

        /* renamed from: b */
        public TextureRegion f10509b;

        /* renamed from: d */
        public TextureRegion f10510d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public SplinterProjectile mo21367a() {
            return new SplinterProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10509b = Game.f8589i.assetManager.getTextureRegion("projectile-cannon-splinter");
            this.f10510d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
        }
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile
    public boolean isDone() {
        return this.f10506w || super.isDone();
    }

    static {
        Color color = MaterialColor.RED.P500;
        f10502A = new Color(color.f3892r, color.f3891g, color.f3890b, 0.56f);
        f10503B = new Vector2();
    }

    public SplinterProjectile() {
        super(ProjectileType.SPLINTER);
        this.f10506w = false;
    }

    @Override // com.prineside.tdi2.CollidingProjectile
    /* renamed from: b */
    public void mo21369b(Enemy enemy) {
        if (!this.f10506w) {
            Tower tower = this.f10505v;
            if (tower == null || tower.isRegistered()) {
                Tower tower2 = this.f10505v;
                if (tower2 != null && !tower2.canAttackEnemy(enemy)) {
                    return;
                }
                Tower tower3 = this.f10505v;
                if (tower3 != null && tower3.type == TowerType.CANNON) {
                    if (tower3.isAbilityInstalled(3) && enemy.getHealth() / enemy.maxHealth < 0.25f) {
                        this.f8844S.enemy.giveDamage(enemy, this.f10505v, this.f8833a * 1.25f, DamageType.BULLET, this.affectedByAbility, true, this);
                    } else {
                        this.f8844S.enemy.giveDamage(enemy, this.f10505v, this.f8833a, DamageType.BULLET, this.affectedByAbility, true, this);
                    }
                } else {
                    this.f8844S.enemy.giveDamage(enemy, tower3, this.f8833a, DamageType.BULLET, this.affectedByAbility, true, this);
                }
                this.f10506w = true;
            }
        }
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TrailMultiLine trailMultiLine = this.f10507x;
        if (trailMultiLine != null && this.f10508y == trailMultiLine.getUsageId()) {
            Vector2 vector2 = f10503B;
            Vector2 vector22 = this.f8537k;
            vector2.set(-vector22.f5527x, -vector22.f5528y).scl(6.0f).add(this.drawPosition);
            this.f10507x.updateStartPos(f, vector2.f5527x, vector2.f5528y);
        }
        if (m22027d() < 0.1f) {
            Color color = f10504z;
            color.f3889a = m22027d() / 0.1f;
            spriteBatch.setColor(color);
        }
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.SPLINTER.f10509b;
        Vector2 vector23 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector23.f5527x - 4.5f, vector23.f5528y - 9.0f, 4.5f, 9.0f, 9.0f, 18.0f, 1.0f, 1.0f, this.drawAngle);
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    public void setup(Tower tower, float f, Vector2 vector2, Vector2 vector22, float f2, Color color) {
        this.f10505v = tower;
        this.f8833a = f;
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            TrailMultiLine obtain = Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.obtain();
            this.f10507x = obtain;
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.SPLINTER.f10510d);
            TrailMultiLine trailMultiLine = this.f10507x;
            if (color == null) {
                color = f10502A;
            }
            trailMultiLine.setup(color, 3, 0.22f, 29.0f);
            this.f10507x.setStartPoint(vector2.f5527x, vector2.f5528y);
            this.f8844S._projectileTrail.addTrail(this.f10507x);
            this.f10508y = this.f10507x.getUsageId();
        }
        super.m22024g(vector2, f2, vector22);
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10505v = (Tower) kryo.readClassAndObject(input);
        this.f10506w = input.readBoolean();
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10505v = null;
        this.f10507x = null;
        this.f10506w = false;
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f10505v);
        output.writeBoolean(this.f10506w);
    }
}
