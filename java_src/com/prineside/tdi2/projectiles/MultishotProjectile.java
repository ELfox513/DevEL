package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.CollidingProjectile;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MultishotProjectile extends CollidingProjectile {

    /* renamed from: D */
    public static final Color f10477D = Color.WHITE.cpy();

    /* renamed from: E */
    public static final Color f10478E;

    /* renamed from: F */
    public static final Vector2 f10479F;

    /* renamed from: A */
    public boolean f10480A;

    /* renamed from: B */
    public boolean f10481B;

    /* renamed from: C */
    public boolean f10482C;
    public boolean flyingBack;
    @NAGS

    /* renamed from: v */
    public TrailMultiLine f10483v;
    @NAGS

    /* renamed from: w */
    public int f10484w;

    /* renamed from: x */
    public Tower f10485x;

    /* renamed from: y */
    public boolean f10486y;

    /* renamed from: z */
    public boolean f10487z;

    /* loaded from: classes2.dex */
    public static class MultishotProjectileFactory extends Projectile.Factory<MultishotProjectile> {

        /* renamed from: b */
        public TextureRegion f10488b;

        /* renamed from: d */
        public TextureRegion f10489d;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public MultishotProjectile mo21367a() {
            return new MultishotProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10488b = Game.f8589i.assetManager.getTextureRegion("projectile-multishot");
            this.f10489d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
        }
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile
    public boolean isDone() {
        return this.f10486y || super.isDone();
    }

    static {
        Color color = MaterialColor.YELLOW.P500;
        f10478E = new Color(color.f3892r, color.f3891g, color.f3890b, 0.4f);
        f10479F = new Vector2();
    }

    public MultishotProjectile() {
        super(ProjectileType.MULTISHOT);
    }

    @Override // com.prineside.tdi2.CollidingProjectile
    /* renamed from: b */
    public void mo21369b(Enemy enemy) {
        if (!this.f10480A && enemy.isAir()) {
            return;
        }
        float f = this.f8833a;
        if (this.f10481B && enemy.getBuffedSpeed() > this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_MULTISHOT_A_COUNTER_SPEED)) {
            double d = f;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MULTISHOT_A_COUNTER_DAMAGE);
            Double.isNaN(d);
            f = (float) (d * percentValueAsMultiplier);
        }
        float f2 = f;
        if (!enemy.isVulnerableToSpecial(SpecialDamageType.PIERCING)) {
            this.f10486y = true;
        }
        Tower tower = this.f10485x;
        if (tower != null && tower.isRegistered()) {
            this.f8844S.enemy.giveDamage(enemy, this.f10485x, f2, DamageType.BULLET, this.affectedByAbility, true, this);
        }
        if (this.f10487z && !this.f10482C) {
            double d2 = this.f8833a;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MULTISHOT_A_PENETRATING_DAMAGE);
            Double.isNaN(d2);
            this.f8833a = (float) (d2 * percentValueAsMultiplier2);
            this.f10482C = true;
            return;
        }
        this.f10486y = true;
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TrailMultiLine trailMultiLine = this.f10483v;
        if (trailMultiLine != null && trailMultiLine.getUsageId() == this.f10484w) {
            Vector2 vector2 = f10479F;
            Vector2 vector22 = this.f8537k;
            vector2.set(-vector22.f5527x, -vector22.f5528y).scl(6.0f).add(this.drawPosition);
            this.f10483v.updateStartPos(f, vector2.f5527x, vector2.f5528y);
        }
        if (m22027d() < 0.2f) {
            Color color = f10477D;
            color.f3889a = m22027d() / 0.2f;
            spriteBatch.setColor(color);
        }
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.MULTISHOT.f10488b;
        Vector2 vector23 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector23.f5527x - 4.5f, vector23.f5528y - 12.0f, 4.5f, 12.0f, 9.0f, 24.0f, 1.0f, 1.0f, this.drawAngle);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10485x = (Tower) kryo.readClassAndObject(input);
        this.f10486y = input.readBoolean();
        this.f10487z = input.readBoolean();
        this.f10480A = input.readBoolean();
        this.f10481B = input.readBoolean();
        this.f10482C = input.readBoolean();
        this.flyingBack = input.readBoolean();
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.flyingBack = false;
        this.f10482C = false;
        this.f10486y = false;
        this.f10487z = false;
        this.f10480A = false;
        this.f10481B = false;
        this.f10485x = null;
        this.f10483v = null;
    }

    public void setup(Tower tower, float f, Vector2 vector2, Vector2 vector22, float f2, boolean z, boolean z2, boolean z3) {
        super.m22024g(vector2, f2, vector22);
        this.f10485x = tower;
        this.f8833a = f;
        this.f10487z = z;
        this.f10480A = z2;
        this.f10481B = z3;
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            TrailMultiLine obtain = Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.obtain();
            this.f10483v = obtain;
            obtain.setTexture(Game.f8589i.projectileManager.f9990F.MULTISHOT.f10489d);
            this.f10483v.setup(f10478E, 3, 0.22f, 24.0f);
            this.f10483v.setStartPoint(vector2.f5527x, vector2.f5528y);
            this.f8844S._projectileTrail.addTrail(this.f10483v);
            this.f10484w = this.f10483v.getUsageId();
        }
    }

    @Override // com.prineside.tdi2.CollidingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f10485x);
        output.writeBoolean(this.f10486y);
        output.writeBoolean(this.f10487z);
        output.writeBoolean(this.f10480A);
        output.writeBoolean(this.f10481B);
        output.writeBoolean(this.f10482C);
        output.writeBoolean(this.flyingBack);
    }
}
