package com.prineside.tdi2.explosions;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.projectiles.SplinterProjectile;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class GenericExplosion extends Explosion {

    /* renamed from: u */
    public int f9340u;

    /* renamed from: v */
    public float f9341v;

    /* renamed from: w */
    public float f9342w;
    @NAGS

    /* renamed from: x */
    public final Color f9343x;
    @NAGS

    /* renamed from: y */
    public Color f9344y;

    /* renamed from: z */
    public static final Vector2 f9339z = new Vector2();

    /* renamed from: A */
    public static final Vector2 f9337A = new Vector2();

    /* renamed from: B */
    public static final Vector2 f9338B = new Vector2();

    /* loaded from: classes2.dex */
    public static class GenericExplosionFactory extends Explosion.Factory<GenericExplosion> {
        @Override // com.prineside.tdi2.Explosion.Factory
        /* renamed from: b */
        public GenericExplosion mo21770a() {
            return new GenericExplosion();
        }
    }

    @Override // com.prineside.tdi2.Explosion
    public boolean isDone() {
        return super.isDone() && this.f9340u == 0;
    }

    public void setup(Tower tower, float f, float f2, float f3, float f4, int i, float f5, float f6, Color color, Color color2) {
        super.m22014a(tower, f, f2, f3, f4, (0.08f * f4) + 0.2f, null);
        this.f9340u = i;
        this.f9344y = color2;
        this.f9341v = f5;
        this.f9342w = f6;
        if (color == null) {
            this.f9343x.set(MaterialColor.RED.P400);
        } else {
            this.f9343x.set(color);
        }
    }

    public GenericExplosion() {
        super(ExplosionType.GENERIC);
        this.f9343x = new Color(MaterialColor.RED.P400);
        this.f9344y = null;
    }

    @Override // com.prineside.tdi2.Explosion
    public GenericExplosion cpy() {
        GenericExplosion genericExplosion = (GenericExplosion) Game.f8589i.explosionManager.getFactory(ExplosionType.GENERIC).obtain();
        Tower tower = getTower();
        Vector2 vector2 = this.position;
        genericExplosion.setup(tower, vector2.f5527x, vector2.f5528y, this.damage, this.f8580b, this.f9340u, this.f9341v, this.f9342w, this.f9343x, this.f9344y);
        return genericExplosion;
    }

    @Override // com.prineside.tdi2.Explosion
    public void enemyAffected(Enemy enemy, float f, float f2) {
        Tower tower = getTower();
        if (tower != null && tower.isRegistered() && tower.canAttackEnemy(enemy)) {
            this.f8844S.enemy.giveDamage(enemy, tower, Explosion.calculateDamage(this.damage, f, f2), DamageType.EXPLOSION, this.fromAbility, true, null);
        }
    }

    @Override // com.prineside.tdi2.Explosion
    public void explode() {
        super.explode();
        if (this.f8581d > 0.0f) {
            addExplosionParticle(this.f9343x, LimitedParticleType.EXPLOSION_CANNON);
            SoundSystem soundSystem = this.f8844S._sound;
            if (soundSystem != null) {
                soundSystem.playExplosionSound(this.position.f5527x);
            }
        }
    }

    @Override // com.prineside.tdi2.Explosion, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9340u = input.readVarInt(true);
        this.f9341v = input.readFloat();
        this.f9342w = input.readFloat();
    }

    @Override // com.prineside.tdi2.Explosion
    public void update(float f) {
        Tower tower;
        super.update(f);
        if (this.f9340u != 0 && (tower = getTower()) != null && tower.isRegistered()) {
            SplinterProjectile splinterProjectile = (SplinterProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.SPLINTER).obtain();
            this.f8844S.projectile.register(splinterProjectile);
            float randomFloat = this.f8844S.gameState.randomFloat() * 6.2831855f;
            Vector2 vector2 = f9338B;
            vector2.set(PMath.cos(randomFloat), PMath.sin(randomFloat));
            vector2.scl(32.0f);
            Vector2 vector22 = f9339z;
            Vector2 vector23 = vector22.set(vector2);
            Vector2 vector24 = this.position;
            vector23.add(vector24.f5527x, vector24.f5528y);
            vector2.scl(((this.f9342w * 128.0f) + 32.0f) / 32.0f);
            Vector2 vector25 = f9337A;
            Vector2 vector26 = vector25.set(vector2);
            Vector2 vector27 = this.position;
            vector26.add(vector27.f5527x, vector27.f5528y);
            splinterProjectile.setup(tower, this.f9341v, vector22, vector25, 2.0f, this.f9344y);
            this.f9340u--;
        }
    }

    @Override // com.prineside.tdi2.Explosion, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f9340u, true);
        output.writeFloat(this.f9341v);
        output.writeFloat(this.f9342w);
    }
}
