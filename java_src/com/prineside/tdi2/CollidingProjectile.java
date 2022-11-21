package com.prineside.tdi2;

import com.badlogic.gdx.math.Intersector;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectSet;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.utils.FloatSorter;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectFilter;
/* loaded from: classes2.dex */
public abstract class CollidingProjectile extends Projectile {

    /* renamed from: t */
    public static final Array<Tile> f8534t = new Array<>(Tile.class);

    /* renamed from: u */
    public static final Vector2 f8535u = new Vector2();

    /* renamed from: d */
    public float f8536d;
    @NAGS
    public float drawAngle;
    @NAGS
    public Vector2 drawPosition;
    public float flyTime;

    /* renamed from: k */
    public Vector2 f8537k;

    /* renamed from: p */
    public float f8538p;

    /* renamed from: q */
    public Vector2 f8539q;

    /* renamed from: r */
    public float f8540r;

    /* renamed from: s */
    public ObjectSet<Enemy.EnemyReference> f8541s;
    public float totalFlyTime;

    @Override // com.prineside.tdi2.Projectile
    public void applyDrawInterpolation(float f) {
        if (f == 0.0f) {
            this.drawPosition.set(this.position);
            this.drawAngle = m22028c();
            return;
        }
        this.drawPosition.set(this.position);
        Vector2 vector2 = this.drawPosition;
        float f2 = vector2.f5527x;
        Vector2 vector22 = this.f8537k;
        float f3 = vector22.f5527x;
        float f4 = this.f8538p;
        vector2.f5527x = f2 + (f3 * f4 * f);
        vector2.f5528y += vector22.f5528y * f4 * f;
        this.drawAngle = m22028c();
    }

    /* renamed from: b */
    public abstract void mo21369b(Enemy enemy);

    /* renamed from: c */
    public float m22028c() {
        return this.f8537k.angleDeg() - 90.0f;
    }

    /* renamed from: d */
    public float m22027d() {
        float f = this.totalFlyTime - this.flyTime;
        if (f < 0.0f) {
            return 0.0f;
        }
        return f;
    }

    /* renamed from: h */
    public void m22023h(Vector2 vector2, Vector2 vector22, float f) {
        this.f8540r = 0.0f;
        this.position.set(vector2);
        this.f8538p = vector22.len() * 128.0f;
        this.f8537k.set(vector22).nor();
        this.totalFlyTime = f;
        this.f8539q.set(vector2);
    }

    @Override // com.prineside.tdi2.Projectile
    public boolean hasReachedTarget() {
        return false;
    }

    @Override // com.prineside.tdi2.Projectile
    public boolean isDone() {
        return this.flyTime >= this.totalFlyTime;
    }

    @Override // com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f8540r = 0.0f;
        this.flyTime = 0.0f;
        this.totalFlyTime = 0.0f;
        this.drawAngle = 0.0f;
        this.f8536d = 1.0f;
        this.f8537k.setZero();
        this.f8539q.setZero();
        this.drawPosition.setZero();
        this.f8541s.clear();
        super.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ boolean m22025f(FloatSorter floatSorter, MapSystem.AabbEnemyEntry aabbEnemyEntry) {
        float dst2 = this.f8539q.dst2(aabbEnemyEntry.position);
        if (dst2 <= 4777.5747f) {
            float f = aabbEnemyEntry.size;
            float f2 = this.f8536d;
            if (Intersector.intersectSegmentCircle(this.f8539q, this.position, aabbEnemyEntry.position, f * f * f2 * f2) && !this.f8541s.contains(aabbEnemyEntry.enemyReference)) {
                floatSorter.add(aabbEnemyEntry.enemyReference, dst2);
                this.f8541s.add(aabbEnemyEntry.enemyReference);
                return true;
            }
            return true;
        }
        return true;
    }

    /* renamed from: e */
    public final boolean m22026e(float f) {
        Vector2 vector2 = this.position;
        float f2 = vector2.f5527x;
        Vector2 vector22 = this.f8537k;
        float f3 = vector22.f5527x;
        float f4 = this.f8538p;
        vector2.f5527x = f2 + (f3 * f4 * f);
        vector2.f5528y += vector22.f5528y * f4 * f;
        float f5 = this.f8540r + (f * f4);
        this.f8540r = f5;
        if (f5 > 32.0f) {
            this.f8540r = 0.0f;
            final FloatSorter floatSorter = FloatSorter.getInstance();
            floatSorter.begin();
            this.f8844S.map.getEnemiesAABB(this.f8539q, this.position, this.f8536d, new ObjectFilter() { // from class: com.prineside.tdi2.m1
                @Override // com.prineside.tdi2.utils.ObjectFilter
                public final boolean passes(Object obj) {
                    boolean m22025f;
                    m22025f = CollidingProjectile.this.m22025f(floatSorter, (MapSystem.AabbEnemyEntry) obj);
                    return m22025f;
                }
            });
            Array<FloatSorter.Entity> sort = floatSorter.sort();
            for (int i = 0; i < sort.size && !isDone(); i++) {
                Enemy enemy = ((Enemy.EnemyReference) sort.items[i].object).enemy;
                if (enemy != null) {
                    mo21369b(enemy);
                }
            }
            floatSorter.end();
            this.f8539q.set(this.position);
        }
        return false;
    }

    @Override // com.prineside.tdi2.Projectile
    public void flyOnEnemy(Enemy enemy) {
        this.f8537k.set(enemy.getPosition());
        this.f8537k.sub(this.position).nor();
    }

    public CollidingProjectile(ProjectileType projectileType) {
        super(projectileType);
        this.flyTime = 0.0f;
        this.f8536d = 1.0f;
        this.f8537k = new Vector2();
        this.f8539q = new Vector2();
        this.f8541s = new ObjectSet<>();
        this.drawPosition = new Vector2();
    }

    /* renamed from: g */
    public void m22024g(Vector2 vector2, float f, Vector2 vector22) {
        Vector2 vector23 = f8535u;
        vector23.set(vector22);
        vector23.sub(vector2).nor().scl(f);
        m22023h(vector2, vector23, (vector2.dst(vector22) / f) / 128.0f);
    }

    @Override // com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.flyTime = input.readFloat();
        this.totalFlyTime = input.readFloat();
        this.f8536d = input.readFloat();
        this.f8537k = (Vector2) kryo.readObject(input, Vector2.class);
        this.f8538p = input.readFloat();
        this.f8539q = (Vector2) kryo.readObject(input, Vector2.class);
        this.f8540r = input.readFloat();
        this.f8541s = (ObjectSet) kryo.readObject(input, ObjectSet.class);
    }

    @Override // com.prineside.tdi2.Projectile
    public void update(float f) {
        if (isDone()) {
            return;
        }
        float f2 = this.flyTime;
        float f3 = this.totalFlyTime;
        if (f2 + f >= f3) {
            this.flyTime = f3;
            this.f8540r = 64.0f;
            m22026e(f3 - f2);
            return;
        }
        this.flyTime = f2 + f;
        int ceil = MathUtils.ceil((this.f8538p * f) / 69.12f);
        if (ceil == 1) {
            m22026e(f);
            return;
        }
        float f4 = f / ceil;
        for (int i = 0; i < ceil && !m22026e(f4); i++) {
        }
    }

    @Override // com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.flyTime);
        output.writeFloat(this.totalFlyTime);
        output.writeFloat(this.f8536d);
        kryo.writeObject(output, this.f8537k);
        output.writeFloat(this.f8538p);
        kryo.writeObject(output, this.f8539q);
        output.writeFloat(this.f8540r);
        kryo.writeObject(output, this.f8541s);
    }
}
