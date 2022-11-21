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
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.projectiles.SplinterProjectile;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class CannonExplosion extends Explosion {

    /* renamed from: u */
    public int f9330u;

    /* renamed from: v */
    public float f9331v;

    /* renamed from: w */
    public float f9332w;

    /* renamed from: x */
    public static final Color f9327x = MaterialColor.RED.P400;

    /* renamed from: y */
    public static final Vector2 f9328y = new Vector2();

    /* renamed from: z */
    public static final Vector2 f9329z = new Vector2();

    /* renamed from: A */
    public static final Vector2 f9326A = new Vector2();

    /* loaded from: classes2.dex */
    public static class CannonExplosionFactory extends Explosion.Factory<CannonExplosion> {
        @Override // com.prineside.tdi2.Explosion.Factory
        /* renamed from: b */
        public CannonExplosion mo21770a() {
            return new CannonExplosion();
        }
    }

    @Override // com.prineside.tdi2.Explosion
    public boolean isDone() {
        return super.isDone() && this.f9330u == 0;
    }

    public void setup(Tower tower, float f, float f2, float f3, float f4, int i, float f5, float f6) {
        super.m22014a(tower, f, f2, f3, f4, (0.08f * f4) + 0.25f, null);
        this.f9330u = i;
        this.f9331v = f5;
        this.f9332w = f6;
    }

    public CannonExplosion() {
        super(ExplosionType.CANNON);
    }

    @Override // com.prineside.tdi2.Explosion
    public void enemyAffected(Enemy enemy, float f, float f2) {
        Tower tower = getTower();
        if (tower == null || !tower.isRegistered() || !tower.canAttackEnemy(enemy)) {
            return;
        }
        if (tower.isAbilityInstalled(3) && enemy.getHealth() / enemy.maxHealth < this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_PRESSURE_HEALTH)) {
            this.f8844S.enemy.giveDamage(enemy, tower, Explosion.calculateDamage(this.damage * (((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CANNON_A_PRESSURE_DAMAGE)) + 1.0f), f, f2), DamageType.EXPLOSION, this.fromAbility, true, null);
        } else {
            this.f8844S.enemy.giveDamage(enemy, tower, Explosion.calculateDamage(this.damage, f, f2), DamageType.EXPLOSION, this.fromAbility, true, null);
        }
    }

    @Override // com.prineside.tdi2.Explosion
    public void explode() {
        super.explode();
        addExplosionParticle(f9327x, LimitedParticleType.EXPLOSION_CANNON);
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playExplosionSound(this.position.f5527x);
        }
    }

    @Override // com.prineside.tdi2.Explosion, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9330u = input.readVarInt(true);
        this.f9331v = input.readFloat();
        this.f9332w = input.readFloat();
    }

    @Override // com.prineside.tdi2.Explosion
    public void update(float f) {
        Tower tower;
        super.update(f);
        if (this.f9330u > 0 && (tower = getTower()) != null && tower.isRegistered()) {
            SplinterProjectile splinterProjectile = (SplinterProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.SPLINTER).obtain();
            this.f8844S.projectile.register(splinterProjectile);
            float randomFloat = this.f8844S.gameState.randomFloat() * 6.2831855f;
            Vector2 vector2 = f9326A;
            vector2.set(PMath.cos(randomFloat), PMath.sin(randomFloat));
            vector2.scl(32.0f);
            Vector2 vector22 = f9328y;
            vector22.set(vector2).add(this.position);
            vector2.scl((this.f9332w + 32.0f) / 32.0f);
            Vector2 vector23 = f9329z;
            vector23.set(vector2).add(this.position);
            splinterProjectile.setup(tower, this.f9331v * this.damage, vector22, vector23, 2.0f, null);
            this.f9330u--;
        }
    }

    @Override // com.prineside.tdi2.Explosion, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f9330u, true);
        output.writeFloat(this.f9331v);
        output.writeFloat(this.f9332w);
    }
}
