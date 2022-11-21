package com.prineside.tdi2;

import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.ProjectileType;
/* loaded from: classes2.dex */
public abstract class EnemyFollowingExplosiveProjectile extends EnemyFollowingProjectile {

    /* renamed from: x */
    public Explosion f8566x;

    public EnemyFollowingExplosiveProjectile(ProjectileType projectileType) {
        super(projectileType);
    }

    /* renamed from: c */
    public void m22017c(Vector2 vector2, Enemy enemy, float f, float f2, Explosion explosion, float f3, float f4) {
        super.setup(vector2, enemy, f, f2, f3, f4);
        this.f8566x = explosion;
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8566x = null;
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile
    @Deprecated
    public void setup(Vector2 vector2, Enemy enemy, float f) {
        throw new RuntimeException("Use method with Explosion");
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile
    @Deprecated
    public void setup(Vector2 vector2, Enemy enemy, float f, float f2, float f3, float f4) {
        throw new RuntimeException("Use method with Explosion");
    }

    @Override // com.prineside.tdi2.Projectile
    public void hit() {
        super.hit();
        this.f8566x.position.set(getPosition());
        this.f8844S.explosion.register(this.f8566x);
        this.f8566x.explode();
    }

    @Override // com.prineside.tdi2.Projectile
    public void multiplyDamage(float f, Ability ability) {
        super.multiplyDamage(f, ability);
        this.f8566x.multiplyDamage(f, ability);
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8566x = (Explosion) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f8566x = null;
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f8566x);
    }
}
