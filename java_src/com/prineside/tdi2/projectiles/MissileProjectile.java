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
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.explosions.MissileExplosion;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.towers.MissileTower;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MissileProjectile extends EnemyFollowingExplosiveProjectile {

    /* renamed from: J */
    public static final Color f10462J;

    /* renamed from: K */
    public static final Vector2 f10463K;
    @NAGS

    /* renamed from: A */
    public float f10464A;

    /* renamed from: B */
    public MissileTower f10465B;

    /* renamed from: C */
    public MissileExplosion f10466C;

    /* renamed from: D */
    public boolean f10467D;

    /* renamed from: E */
    public float f10468E;

    /* renamed from: F */
    public float f10469F;

    /* renamed from: G */
    public float f10470G;

    /* renamed from: H */
    public float f10471H;

    /* renamed from: I */
    public float f10472I;
    @NAGS

    /* renamed from: y */
    public TrailMultiLine f10473y;
    @NAGS

    /* renamed from: z */
    public int f10474z;

    /* loaded from: classes2.dex */
    public static class MissileProjectileFactory extends Projectile.Factory<MissileProjectile> {

        /* renamed from: b */
        public TextureRegion f10475b;

        /* renamed from: d */
        public TextureRegion f10476d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public MissileProjectile mo21367a() {
            return new MissileProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10475b = Game.f8589i.assetManager.getTextureRegion("projectile-missile");
            this.f10476d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
        }
    }

    public MissileTower getTower() {
        return this.f10465B;
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile
    public void setTarget(Enemy enemy) {
        this.f10467D = false;
        super.setTarget(enemy);
    }

    public void setup(MissileTower missileTower, Enemy enemy, float f, float f2, Vector2 vector2, float f3, float f4, float f5, float f6) {
        MissileExplosion missileExplosion = (MissileExplosion) Game.f8589i.explosionManager.getFactory(ExplosionType.MISSILE).obtain();
        this.f10466C = missileExplosion;
        missileExplosion.setup(missileTower, enemy.getPosition().f5527x, enemy.getPosition().f5528y, f, f2);
        this.f10465B = missileTower;
        this.f10464A = f6;
        this.f10469F = f3;
        float f7 = 0.5f * f3;
        this.f10470G = f7;
        this.f10471H = f7;
        this.f10472I = Float.MAX_VALUE;
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            TrailMultiLine obtain = Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.obtain();
            this.f10473y = obtain;
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.MISSILE.f10476d);
            this.f10473y.setup(f10462J, 6, 0.168f, f6 * 28.0f);
            this.f10473y.setStartPoint(vector2.f5527x, vector2.f5528y);
            this.f8844S._projectileTrail.addTrail(this.f10473y);
            this.f10474z = this.f10473y.getUsageId();
        }
        super.m22017c(vector2, enemy, f5, f3, this.f10466C, f4, f4 * 0.05f);
    }

    static {
        Color color = MaterialColor.RED.P500;
        f10462J = new Color(color.f3892r, color.f3891g, color.f3890b, 0.56f);
        f10463K = new Vector2();
    }

    public MissileProjectile() {
        super(ProjectileType.MISSILE);
        this.f10464A = 1.0f;
        this.f10467D = false;
        this.f10472I = Float.MAX_VALUE;
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TrailMultiLine trailMultiLine = this.f10473y;
        if (trailMultiLine != null && trailMultiLine.getUsageId() == this.f10474z) {
            Vector2 vector2 = f10463K;
            vector2.set(9.0f, 0.0f).rotateDeg(this.drawAngle - 90.0f).add(this.drawPosition);
            this.f10473y.updateStartPos(f, vector2.f5527x, vector2.f5528y);
        }
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.MISSILE.f10475b;
        Vector2 vector22 = this.drawPosition;
        float f2 = vector22.f5527x;
        float f3 = this.f10464A;
        spriteBatch.draw(textureRegion, f2 - (f3 * 10.5f), vector22.f5528y - (f3 * 21.0f), f3 * 10.5f, f3 * 21.0f, f3 * 21.0f, f3 * 42.0f, 1.0f, 1.0f, this.drawAngle);
    }

    @Override // com.prineside.tdi2.EnemyFollowingExplosiveProjectile, com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10465B = (MissileTower) kryo.readObjectOrNull(input, MissileTower.class);
        this.f10466C = (MissileExplosion) kryo.readObjectOrNull(input, MissileExplosion.class);
        this.f10467D = input.readBoolean();
        this.f10468E = input.readFloat();
        this.f10469F = input.readFloat();
        this.f10470G = input.readFloat();
        this.f10471H = input.readFloat();
        this.f10472I = input.readFloat();
    }

    @Override // com.prineside.tdi2.EnemyFollowingExplosiveProjectile, com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10467D = false;
        this.f10466C = null;
        this.f10468E = 0.0f;
        this.f10470G = 0.0f;
        this.f10469F = 0.0f;
        this.f10471H = 0.0f;
        this.f10465B = null;
        this.f10473y = null;
        this.f10472I = Float.MAX_VALUE;
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile
    public void update(float f) {
        Enemy target = getTarget();
        MissileTower missileTower = this.f10465B;
        if (missileTower != null && missileTower.isRegistered()) {
            if (!this.f10467D && target == null) {
                this.f10467D = true;
                this.f10465B.missileLostTarget(this);
            }
            if (target != null) {
                float dst2 = target.getPosition().dst2(getPosition());
                if (dst2 < this.f10472I) {
                    float f2 = this.f10471H + (0.5f * f);
                    this.f10471H = f2;
                    float f3 = this.f10469F;
                    if (f2 > f3) {
                        this.f10471H = f3;
                    }
                } else {
                    float f4 = this.f10471H - (0.75f * f);
                    this.f10471H = f4;
                    float f5 = this.f10470G;
                    if (f4 < f5) {
                        this.f10471H = f5;
                    }
                }
                this.f10472I = dst2;
            }
            this.speed = this.f10471H * 128.0f;
            super.update(f);
            float f6 = this.f10468E + f;
            this.f10468E = f6;
            if (f6 > 20.0f) {
                this.f8569k = true;
                return;
            }
            return;
        }
        this.f8569k = true;
    }

    @Override // com.prineside.tdi2.EnemyFollowingExplosiveProjectile, com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f10465B, MissileTower.class);
        kryo.writeObjectOrNull(output, this.f10466C, MissileExplosion.class);
        output.writeBoolean(this.f10467D);
        output.writeFloat(this.f10468E);
        output.writeFloat(this.f10469F);
        output.writeFloat(this.f10470G);
        output.writeFloat(this.f10471H);
        output.writeFloat(this.f10472I);
    }
}
