package com.prineside.tdi2;

import com.badlogic.gdx.math.Intersector;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public abstract class EnemyFollowingProjectile extends Projectile {
    public static final float DEFAULT_MAX_ROT_SPEED = 1800.0f;
    public static final float DEFAULT_MAX_ROT_SPEED_DYNAMIC = 120.0f;

    /* renamed from: w */
    public static final Vector2 f8567w = new Vector2();

    /* renamed from: d */
    public Enemy.EnemyReference f8568d;
    @NAGS
    public float drawAngle;
    @NAGS
    public Vector2 drawPosition;

    /* renamed from: k */
    public boolean f8569k;
    public float maxRotationSpeed;
    public float maxRotationSpeedDynamic;

    /* renamed from: p */
    public Vector2 f8570p;

    /* renamed from: q */
    public float f8571q;

    /* renamed from: r */
    public float f8572r;

    /* renamed from: s */
    public Vector2 f8573s;
    public float speed;
    public Vector2 start;

    /* renamed from: t */
    public float f8574t;

    /* renamed from: u */
    public float f8575u;

    /* renamed from: v */
    public float f8576v;

    @Override // com.prineside.tdi2.Projectile
    public void applyDrawInterpolation(float f) {
        if (f == 0.0f) {
            this.drawPosition.set(this.position);
            this.drawAngle = this.f8576v;
            return;
        }
        this.drawAngle = m22016a(f);
        Vector2 vector2 = f8567w;
        vector2.set(this.speed * f, 0.0f);
        vector2.rotateDeg(this.drawAngle + 90.0f);
        this.drawPosition.set(this.position).add(vector2);
    }

    @Override // com.prineside.tdi2.Projectile
    public void flyOnEnemy(Enemy enemy) {
        setTarget(enemy);
    }

    @Override // com.prineside.tdi2.Projectile
    public Vector2 getPosition() {
        return this.position;
    }

    public Enemy getTarget() {
        return this.f8568d.enemy;
    }

    @Override // com.prineside.tdi2.Projectile
    public boolean hasReachedTarget() {
        return this.f8569k;
    }

    @Override // com.prineside.tdi2.Projectile
    public boolean isDone() {
        return this.f8569k;
    }

    public void setTarget(Enemy enemy) {
        this.f8568d = this.f8844S.enemy.getReference(enemy);
    }

    public void setup(Vector2 vector2, Enemy enemy, float f) {
        setup(vector2, enemy, PMath.getAngleBetweenPoints(vector2, enemy.getPosition()), f, 1800.0f, 120.0f);
    }

    /* renamed from: a */
    public final float m22016a(float f) {
        float f2;
        float angleBetweenPoints = PMath.getAngleBetweenPoints(this.position, this.f8570p);
        float f3 = this.maxRotationSpeed;
        if (f3 == 0.0f) {
            f2 = 1200.0f;
        } else {
            f2 = f * f3;
        }
        float distanceBetweenAngles = PMath.getDistanceBetweenAngles(this.f8576v, angleBetweenPoints);
        if (StrictMath.abs(distanceBetweenAngles) > f2) {
            return this.f8576v + (distanceBetweenAngles * (f2 / StrictMath.abs(distanceBetweenAngles)));
        }
        return angleBetweenPoints;
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8568d = Enemy.EnemyReference.NULL;
        super.setUnregistered();
    }

    public EnemyFollowingProjectile(ProjectileType projectileType) {
        super(projectileType);
        this.start = new Vector2();
        this.f8568d = Enemy.EnemyReference.NULL;
        this.f8570p = new Vector2();
        this.f8573s = new Vector2();
        this.f8574t = 0.0f;
        this.f8575u = 0.0f;
        this.drawPosition = new Vector2();
    }

    /* renamed from: b */
    public final boolean m22015b(float f) {
        float m22016a = m22016a(f);
        float f2 = f * this.speed;
        Vector2 vector2 = f8567w;
        vector2.set(f2, 0.0f);
        vector2.rotateDeg(90.0f + m22016a);
        this.position.add(vector2);
        this.f8576v = m22016a;
        float dst2 = this.position.dst2(this.f8570p);
        float f3 = this.f8571q;
        float f4 = (f3 + 32.0f) * (f3 + 32.0f);
        if (dst2 < f4) {
            float f5 = this.f8574t + f2;
            this.f8574t = f5;
            float f6 = this.f8575u + f2;
            this.f8575u = f6;
            if ((f5 > 32.0f || f6 * f6 > f4) && Intersector.intersectSegmentCircle(this.f8573s, this.position, this.f8570p, this.f8572r) && !this.f8569k) {
                this.f8569k = true;
                hit();
                return true;
            }
            this.f8573s.set(this.position);
            this.f8574t = 0.0f;
            return false;
        }
        return false;
    }

    @Override // com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.start = (Vector2) kryo.readObject(input, Vector2.class);
        this.f8568d = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.speed = input.readFloat();
        this.maxRotationSpeed = input.readFloat();
        this.maxRotationSpeedDynamic = input.readFloat();
        this.f8569k = input.readBoolean();
        this.f8570p = (Vector2) kryo.readObject(input, Vector2.class);
        this.f8571q = input.readFloat();
        this.f8572r = input.readFloat();
        this.f8573s = (Vector2) kryo.readObject(input, Vector2.class);
        this.f8574t = input.readFloat();
        this.f8575u = input.readFloat();
        this.position = (Vector2) kryo.readObject(input, Vector2.class);
        this.f8576v = input.readFloat();
    }

    @Override // com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f8568d = Enemy.EnemyReference.NULL;
        this.speed = 0.0f;
        this.f8571q = 0.0f;
        this.f8572r = 0.0f;
        this.f8574t = 0.0f;
        this.f8575u = 0.0f;
        this.f8576v = 0.0f;
        this.drawAngle = 0.0f;
        this.maxRotationSpeed = 0.0f;
        this.maxRotationSpeedDynamic = 120.0f;
        this.f8569k = false;
        this.start.setZero();
        this.f8570p.setZero();
        this.f8573s.setZero();
        this.drawPosition.setZero();
    }

    public void setup(Vector2 vector2, Enemy enemy, float f, float f2, float f3, float f4) {
        super.setup();
        setTarget(enemy);
        Vector2 vector22 = this.start;
        vector22.f5527x = vector2.f5527x;
        vector22.f5528y = vector2.f5528y;
        this.speed = f2 * 128.0f;
        this.maxRotationSpeed = f3;
        this.maxRotationSpeedDynamic = f4;
        this.f8571q = enemy.getSize();
        this.f8572r = enemy.getSquaredSize();
        this.f8570p.set(enemy.getPosition());
        this.f8569k = false;
        this.position.set(vector2);
        this.f8573s.set(vector2);
        this.f8574t = 0.0f;
        this.f8575u = 0.0f;
        this.f8576v = f;
    }

    @Override // com.prineside.tdi2.Projectile
    public void update(float f) {
        Enemy target = getTarget();
        if (target != null) {
            this.f8570p.set(target.getPosition());
            this.f8571q = target.getSize();
            this.f8572r = target.getSquaredSize();
        }
        this.maxRotationSpeed += this.maxRotationSpeedDynamic * f;
        int ceil = MathUtils.ceil((this.speed * f) / 69.12f);
        if (ceil == 1) {
            m22015b(f);
            return;
        }
        float f2 = f / ceil;
        for (int i = 0; i < ceil && !m22015b(f2); i++) {
        }
    }

    @Override // com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.start);
        kryo.writeObject(output, this.f8568d);
        output.writeFloat(this.speed);
        output.writeFloat(this.maxRotationSpeed);
        output.writeFloat(this.maxRotationSpeedDynamic);
        output.writeBoolean(this.f8569k);
        kryo.writeObject(output, this.f8570p);
        output.writeFloat(this.f8571q);
        output.writeFloat(this.f8572r);
        kryo.writeObject(output, this.f8573s);
        output.writeFloat(this.f8574t);
        output.writeFloat(this.f8575u);
        kryo.writeObject(output, this.position);
        output.writeFloat(this.f8576v);
    }
}
