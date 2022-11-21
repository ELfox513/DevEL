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
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class SplashProjectile extends CollidingProjectile {

    /* renamed from: A */
    public static final Color f10490A = Color.WHITE.cpy();

    /* renamed from: B */
    public static final Color f10491B;

    /* renamed from: C */
    public static final Vector2 f10492C;

    /* renamed from: D */
    public static final Vector2 f10493D;

    /* renamed from: E */
    public static final Vector2 f10494E;
    public int chainKillGeneration;

    /* renamed from: v */
    public Tower f10495v;

    /* renamed from: w */
    public boolean f10496w;

    /* renamed from: x */
    public boolean f10497x;
    @NAGS

    /* renamed from: y */
    public TrailMultiLine f10498y;
    @NAGS

    /* renamed from: z */
    public int f10499z;

    /* loaded from: classes2.dex */
    public static class SplashProjectileFactory extends Projectile.Factory<SplashProjectile> {

        /* renamed from: b */
        public TextureRegion f10500b;

        /* renamed from: d */
        public TextureRegion f10501d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public SplashProjectile mo21367a() {
            return new SplashProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10500b = Game.f8589i.assetManager.getTextureRegion("projectile-splash");
            this.f10501d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
        }
    }

    static {
        Color color = MaterialColor.DEEP_ORANGE.P500;
        f10491B = new Color(color.f3892r, color.f3891g, color.f3890b, 0.56f);
        f10492C = new Vector2();
        f10493D = new Vector2();
        f10494E = new Vector2();
    }

    public SplashProjectile() {
        super(ProjectileType.SPLASH);
        this.chainKillGeneration = 0;
    }

    @Override // com.prineside.tdi2.CollidingProjectile
    /* renamed from: b */
    public void mo21369b(Enemy enemy) {
        double d;
        double percentValueAsMultiplier;
        Tower tower = this.f10495v;
        if (tower != null && tower.isRegistered() && this.f10495v.canAttackEnemy(enemy)) {
            float f = this.f8833a;
            if (this.f10495v.isAbilityInstalled(3) && enemy.getBuffedSpeed() < this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_SPLASH_A_RIFFLED_SPEED_MARK)) {
                double d2 = f;
                double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_RIFFLED_DAMAGE);
                Double.isNaN(d2);
                f = (float) (d2 * percentValueAsMultiplier2);
            }
            float f2 = f;
            if (!enemy.isVulnerableToSpecial(SpecialDamageType.PIERCING)) {
                this.f10497x = true;
            }
            float f3 = enemy.getPosition().f5527x;
            float f4 = enemy.getPosition().f5528y;
            if (this.f8844S.enemy.giveDamage(enemy, this.f10495v, f2, DamageType.BULLET, this.affectedByAbility, true, this) && this.f10495v.isAbilityInstalled(4) && this.chainKillGeneration < 10) {
                int intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_SPLASH_A_ULTIMATE_SPLINTERS);
                if (this.chainKillGeneration == 0) {
                    d = 1.0f;
                    percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_ULTIMATE_BASE_DAMAGE);
                    Double.isNaN(d);
                } else {
                    d = 1.0f;
                    percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_ULTIMATE_CHAIN_DAMAGE);
                    Double.isNaN(d);
                }
                float f5 = (float) (d * percentValueAsMultiplier);
                for (int i = 0; i < intValue; i++) {
                    SplashProjectile splashProjectile = (SplashProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.SPLASH).obtain();
                    this.f8844S.projectile.register(splashProjectile);
                    float randomFloat = this.f8844S.gameState.randomFloat() * 6.2831855f;
                    Vector2 vector2 = f10494E;
                    vector2.set(PMath.cos(randomFloat), PMath.sin(randomFloat));
                    vector2.scl(32.0f);
                    Vector2 vector22 = f10492C;
                    vector22.set(vector2).add(f3, f4);
                    vector2.scl(13.0f);
                    Vector2 vector23 = f10493D;
                    vector23.set(vector2).add(f3, f4);
                    splashProjectile.setup(this.f10495v, this.f8833a * f5, 1.0f, vector22, vector23, 2.0f);
                    splashProjectile.chainKillGeneration = this.chainKillGeneration + 1;
                }
                if (this.f8844S.achievement.isActive()) {
                    Game.f8589i.achievementManager.setProgress(AchievementType.SPLASH_CHAIN_KILL, this.chainKillGeneration);
                }
            }
            this.f10496w = true;
            double d3 = this.f8833a;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SPLASH_A_PENETRATING_DAMAGE_CHAIN);
            Double.isNaN(d3);
            this.f8833a = (float) (d3 * percentValueAsMultiplier3);
        }
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TrailMultiLine trailMultiLine = this.f10498y;
        if (trailMultiLine != null && this.f10499z == trailMultiLine.getUsageId()) {
            Vector2 vector2 = f10492C;
            Vector2 vector22 = this.f8537k;
            vector2.set(-vector22.f5527x, -vector22.f5528y).scl(6.0f).add(this.drawPosition);
            this.f10498y.updateStartPos(f, vector2.f5527x, vector2.f5528y);
        }
        if (m22027d() < 0.2f) {
            Color color = f10490A;
            color.f3889a = m22027d() / 0.2f;
            spriteBatch.setColor(color);
        }
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.SPLASH.f10500b;
        Vector2 vector23 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector23.f5527x - 4.5f, vector23.f5528y - 9.0f, 4.5f, 9.0f, 9.0f, 18.0f, 1.0f, 1.0f, this.drawAngle);
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile
    public boolean isDone() {
        boolean z;
        Tower tower = this.f10495v;
        if (tower != null && tower.isRegistered() && this.f10495v.isAbilityInstalled(0)) {
            z = true;
        } else {
            z = false;
        }
        if (super.isDone() || this.f10497x) {
            return true;
        }
        if (!z && this.f10496w) {
            return true;
        }
        return false;
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.chainKillGeneration = input.readVarInt(true);
        this.f10495v = (Tower) kryo.readClassAndObject(input);
        this.f10496w = input.readBoolean();
        this.f10497x = input.readBoolean();
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.chainKillGeneration = 0;
        this.f10495v = null;
        this.f10498y = null;
        this.f10496w = false;
        this.f10497x = false;
    }

    public void setup(Tower tower, float f, float f2, Vector2 vector2, Vector2 vector22, float f3) {
        super.m22024g(vector2, f3, vector22);
        this.f8536d = f2;
        this.f10495v = tower;
        this.f8833a = f;
        this.f10496w = false;
        this.f10497x = false;
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            TrailMultiLine obtain = Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.obtain();
            this.f10498y = obtain;
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.SPLASH.f10501d);
            this.f10498y.setup(f10491B, 3, 0.22f, 24.0f);
            this.f10498y.setStartPoint(vector2.f5527x, vector2.f5528y);
            this.f8844S._projectileTrail.addTrail(this.f10498y);
            this.f10499z = this.f10498y.getUsageId();
        }
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.chainKillGeneration, true);
        kryo.writeClassAndObject(output, this.f10495v);
        output.writeBoolean(this.f10496w);
        output.writeBoolean(this.f10497x);
    }
}
