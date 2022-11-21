package com.badlogic.gdx.math;

import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.math.collision.Ray;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class Octree<T> {

    /* renamed from: e */
    public static final Vector3 f5472e = new Vector3();

    /* renamed from: a */
    public final int f5473a;

    /* renamed from: b */
    public final Pool<Octree<T>.OctreeNode> f5474b = new Pool<Octree<T>.OctreeNode>() { // from class: com.badlogic.gdx.math.Octree.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public Octree<T>.OctreeNode newObject() {
            return new OctreeNode();
        }
    };

    /* renamed from: c */
    public Octree<T>.OctreeNode f5475c;

    /* renamed from: d */
    public final Collider<T> f5476d;

    /* loaded from: classes.dex */
    public interface Collider<T> {
        float intersects(Ray ray, T t);

        boolean intersects(Frustum frustum, T t);

        boolean intersects(BoundingBox boundingBox, T t);
    }

    /* loaded from: classes.dex */
    public class OctreeNode {

        /* renamed from: a */
        public int f5478a;

        /* renamed from: b */
        public final BoundingBox f5479b = new BoundingBox();

        /* renamed from: c */
        public boolean f5480c;

        /* renamed from: d */
        public OctreeNode[] f5481d;

        /* renamed from: e */
        public final Array<T> f5482e;

        /* renamed from: b */
        public final void m23912b() {
            for (int i = 0; i < 8; i++) {
                this.f5481d[i].m23911c();
                this.f5481d[i] = null;
            }
        }

        public OctreeNode() {
            this.f5482e = new Array<>(Math.min(16, Octree.this.f5473a));
        }

        /* renamed from: a */
        public void m23913a(T t) {
            if (!Octree.this.f5476d.intersects(this.f5479b, (BoundingBox) t)) {
                return;
            }
            int i = 0;
            if (!this.f5480c) {
                OctreeNode[] octreeNodeArr = this.f5481d;
                int length = octreeNodeArr.length;
                while (i < length) {
                    octreeNodeArr[i].m23913a(t);
                    i++;
                }
                return;
            }
            Array<T> array = this.f5482e;
            if (array.size >= Octree.this.f5473a && this.f5478a > 0) {
                m23903k();
                OctreeNode[] octreeNodeArr2 = this.f5481d;
                int length2 = octreeNodeArr2.length;
                while (i < length2) {
                    octreeNodeArr2[i].m23913a(t);
                    i++;
                }
                return;
            }
            array.add(t);
        }

        /* renamed from: c */
        public final void m23911c() {
            this.f5482e.clear();
            if (!this.f5480c) {
                m23912b();
            }
            Octree.this.f5474b.free(this);
        }

        /* renamed from: d */
        public void m23910d(ObjectSet<T> objectSet) {
            if (!this.f5480c) {
                for (OctreeNode octreeNode : this.f5481d) {
                    octreeNode.m23910d(objectSet);
                }
            }
            objectSet.addAll(this.f5482e);
        }

        /* renamed from: e */
        public void m23909e(ObjectSet<BoundingBox> objectSet) {
            if (!this.f5480c) {
                for (OctreeNode octreeNode : this.f5481d) {
                    octreeNode.m23909e(objectSet);
                }
            }
            objectSet.add(this.f5479b);
        }

        /* renamed from: g */
        public void m23907g(Frustum frustum, ObjectSet<T> objectSet) {
            if (!Intersector.intersectFrustumBounds(frustum, this.f5479b)) {
                return;
            }
            if (!this.f5480c) {
                for (OctreeNode octreeNode : this.f5481d) {
                    octreeNode.m23907g(frustum, objectSet);
                }
                return;
            }
            Array.ArrayIterator<T> it = this.f5482e.iterator();
            while (it.hasNext()) {
                T next = it.next();
                if (Octree.this.f5476d.intersects(frustum, (Frustum) next)) {
                    objectSet.add(next);
                }
            }
        }

        /* renamed from: h */
        public void m23906h(BoundingBox boundingBox, ObjectSet<T> objectSet) {
            if (!boundingBox.intersects(this.f5479b)) {
                return;
            }
            if (!this.f5480c) {
                for (OctreeNode octreeNode : this.f5481d) {
                    octreeNode.m23906h(boundingBox, objectSet);
                }
                return;
            }
            Array.ArrayIterator<T> it = this.f5482e.iterator();
            while (it.hasNext()) {
                T next = it.next();
                if (Octree.this.f5476d.intersects(this.f5479b, (BoundingBox) next)) {
                    objectSet.add(next);
                }
            }
        }

        /* renamed from: i */
        public void m23905i(Ray ray, RayCastResult<T> rayCastResult) {
            BoundingBox boundingBox = this.f5479b;
            Vector3 vector3 = Octree.f5472e;
            if (!Intersector.intersectRayBounds(ray, boundingBox, vector3) || vector3.dst2(ray.origin) >= rayCastResult.f5486c) {
                return;
            }
            if (!this.f5480c) {
                for (OctreeNode octreeNode : this.f5481d) {
                    octreeNode.m23905i(ray, rayCastResult);
                }
                return;
            }
            Array.ArrayIterator<T> it = this.f5482e.iterator();
            while (it.hasNext()) {
                T next = it.next();
                float intersects = Octree.this.f5476d.intersects(ray, (Ray) next);
                if (rayCastResult.f5484a == null || intersects < rayCastResult.f5485b) {
                    rayCastResult.f5484a = next;
                    rayCastResult.f5485b = intersects;
                }
            }
        }

        /* renamed from: j */
        public boolean m23904j(T t) {
            if (!this.f5480c) {
                boolean z = false;
                for (OctreeNode octreeNode : this.f5481d) {
                    z |= octreeNode.m23904j(t);
                }
                if (z) {
                    ObjectSet<T> objectSet = new ObjectSet<>();
                    for (OctreeNode octreeNode2 : this.f5481d) {
                        octreeNode2.m23910d(objectSet);
                    }
                    if (objectSet.size <= Octree.this.f5473a) {
                        ObjectSet.ObjectSetIterator<T> it = objectSet.iterator();
                        while (it.hasNext()) {
                            this.f5482e.add(it.next());
                        }
                        m23908f();
                    }
                }
                return z;
            }
            return this.f5482e.removeValue(t, true);
        }

        /* renamed from: k */
        public final void m23903k() {
            OctreeNode[] octreeNodeArr;
            BoundingBox boundingBox = this.f5479b;
            Vector3 vector3 = boundingBox.max;
            float f = vector3.f5533x;
            Vector3 vector32 = boundingBox.min;
            float f2 = (f + vector32.f5533x) * 0.5f;
            float f3 = (vector3.f5534y + vector32.f5534y) * 0.5f;
            float f4 = (vector3.f5535z + vector32.f5535z) * 0.5f;
            int i = this.f5478a - 1;
            this.f5480c = false;
            if (this.f5481d == null) {
                this.f5481d = new OctreeNode[8];
            }
            OctreeNode[] octreeNodeArr2 = this.f5481d;
            Octree octree = Octree.this;
            Vector3 vector33 = new Vector3(this.f5479b.min.f5533x, f3, f4);
            Vector3 vector34 = this.f5479b.max;
            octreeNodeArr2[0] = octree.m23915a(vector33, new Vector3(f2, vector34.f5534y, vector34.f5535z), i);
            OctreeNode[] octreeNodeArr3 = this.f5481d;
            Octree octree2 = Octree.this;
            Vector3 vector35 = new Vector3(f2, f3, f4);
            Vector3 vector36 = this.f5479b.max;
            octreeNodeArr3[1] = octree2.m23915a(vector35, new Vector3(vector36.f5533x, vector36.f5534y, vector36.f5535z), i);
            OctreeNode[] octreeNodeArr4 = this.f5481d;
            Octree octree3 = Octree.this;
            Vector3 vector37 = new Vector3(f2, f3, this.f5479b.min.f5535z);
            Vector3 vector38 = this.f5479b.max;
            octreeNodeArr4[2] = octree3.m23915a(vector37, new Vector3(vector38.f5533x, vector38.f5534y, f4), i);
            OctreeNode[] octreeNodeArr5 = this.f5481d;
            Octree octree4 = Octree.this;
            Vector3 vector39 = this.f5479b.min;
            octreeNodeArr5[3] = octree4.m23915a(new Vector3(vector39.f5533x, f3, vector39.f5535z), new Vector3(f2, this.f5479b.max.f5534y, f4), i);
            OctreeNode[] octreeNodeArr6 = this.f5481d;
            Octree octree5 = Octree.this;
            Vector3 vector310 = this.f5479b.min;
            octreeNodeArr6[4] = octree5.m23915a(new Vector3(vector310.f5533x, vector310.f5534y, f4), new Vector3(f2, f3, this.f5479b.max.f5535z), i);
            OctreeNode[] octreeNodeArr7 = this.f5481d;
            Octree octree6 = Octree.this;
            Vector3 vector311 = new Vector3(f2, this.f5479b.min.f5534y, f4);
            Vector3 vector312 = this.f5479b.max;
            octreeNodeArr7[5] = octree6.m23915a(vector311, new Vector3(vector312.f5533x, f3, vector312.f5535z), i);
            OctreeNode[] octreeNodeArr8 = this.f5481d;
            Octree octree7 = Octree.this;
            Vector3 vector313 = this.f5479b.min;
            octreeNodeArr8[6] = octree7.m23915a(new Vector3(f2, vector313.f5534y, vector313.f5535z), new Vector3(this.f5479b.max.f5533x, f3, f4), i);
            OctreeNode[] octreeNodeArr9 = this.f5481d;
            Octree octree8 = Octree.this;
            Vector3 vector314 = this.f5479b.min;
            octreeNodeArr9[7] = octree8.m23915a(new Vector3(vector314.f5533x, vector314.f5534y, vector314.f5535z), new Vector3(f2, f3, f4), i);
            for (OctreeNode octreeNode : this.f5481d) {
                Array.ArrayIterator<T> it = this.f5482e.iterator();
                while (it.hasNext()) {
                    octreeNode.m23913a(it.next());
                }
            }
            this.f5482e.clear();
        }

        /* renamed from: f */
        public final void m23908f() {
            m23912b();
            this.f5480c = true;
        }
    }

    /* loaded from: classes.dex */
    public static class RayCastResult<T> {

        /* renamed from: a */
        public T f5484a;

        /* renamed from: b */
        public float f5485b;

        /* renamed from: c */
        public float f5486c = Float.MAX_VALUE;
    }

    public void add(T t) {
        this.f5475c.m23913a(t);
    }

    public ObjectSet<T> getAll(ObjectSet<T> objectSet) {
        this.f5475c.m23910d(objectSet);
        return objectSet;
    }

    public ObjectSet<BoundingBox> getNodesBoxes(ObjectSet<BoundingBox> objectSet) {
        this.f5475c.m23909e(objectSet);
        return objectSet;
    }

    public ObjectSet<T> query(BoundingBox boundingBox, ObjectSet<T> objectSet) {
        this.f5475c.m23906h(boundingBox, objectSet);
        return objectSet;
    }

    public void remove(T t) {
        this.f5475c.m23904j(t);
    }

    /* renamed from: a */
    public Octree<T>.OctreeNode m23915a(Vector3 vector3, Vector3 vector32, int i) {
        Octree<T>.OctreeNode obtain = this.f5474b.obtain();
        obtain.f5479b.set(vector3, vector32);
        obtain.f5478a = i;
        obtain.f5480c = true;
        return obtain;
    }

    public ObjectSet<T> query(Frustum frustum, ObjectSet<T> objectSet) {
        this.f5475c.m23907g(frustum, objectSet);
        return objectSet;
    }

    public T rayCast(Ray ray, RayCastResult<T> rayCastResult) {
        rayCastResult.f5485b = rayCastResult.f5486c;
        this.f5475c.m23905i(ray, rayCastResult);
        return rayCastResult.f5484a;
    }

    public void update(T t) {
        this.f5475c.m23904j(t);
        this.f5475c.m23913a(t);
    }

    public Octree(Vector3 vector3, Vector3 vector32, int i, int i2, Collider<T> collider) {
        this.f5475c = m23915a(new Vector3(Math.min(vector3.f5533x, vector32.f5533x), Math.min(vector3.f5534y, vector32.f5534y), Math.min(vector3.f5535z, vector32.f5535z)), new Vector3(Math.max(vector3.f5533x, vector32.f5533x), Math.max(vector3.f5534y, vector32.f5534y), Math.max(vector3.f5535z, vector32.f5535z)), i);
        this.f5476d = collider;
        this.f5473a = i2;
    }
}
