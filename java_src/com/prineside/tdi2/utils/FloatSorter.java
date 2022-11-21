package com.prineside.tdi2.utils;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Sort;
import com.prineside.tdi2.utils.FloatSorter;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class FloatSorter {
    public static final Comparator<Entity> COMPARATOR = new Comparator() { // from class: com.prineside.tdi2.utils.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m19850c;
            m19850c = FloatSorter.m19850c((FloatSorter.Entity) obj, (FloatSorter.Entity) obj2);
            return m19850c;
        }
    };

    /* renamed from: d */
    public static FloatSorter f15079d;

    /* renamed from: a */
    public final Array<Entity> f15080a = new Array<>(true, 1, Entity.class);

    /* renamed from: b */
    public final Pool<Entity> f15081b = new Pool<Entity>() { // from class: com.prineside.tdi2.utils.FloatSorter.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public Entity newObject() {
            return new Entity();
        }
    };

    /* renamed from: c */
    public boolean f15082c;

    /* loaded from: classes2.dex */
    public static class Entity implements Pool.Poolable {
        public Object object;
        public float value;

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.object = null;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ int m19850c(Entity entity, Entity entity2) {
        return Float.compare(entity.value, entity2.value);
    }

    /* renamed from: b */
    public final void m19851b() {
        if (!this.f15082c) {
            throw new IllegalStateException("begin() has not been called yet");
        }
    }

    public static FloatSorter getInstance() {
        if (f15079d == null) {
            f15079d = new FloatSorter();
        }
        return f15079d;
    }

    public void begin() {
        if (!this.f15082c) {
            this.f15080a.clear();
            this.f15082c = true;
            return;
        }
        throw new IllegalStateException("Previous sorting not finished, call end() before starting another one");
    }

    public void add(Object obj, float f) {
        m19851b();
        Entity obtain = this.f15081b.obtain();
        obtain.object = obj;
        obtain.value = f;
        this.f15080a.add(obtain);
    }

    public void end() {
        m19851b();
        int i = 0;
        while (true) {
            Array<Entity> array = this.f15080a;
            if (i < array.size) {
                this.f15081b.free(array.items[i]);
                i++;
            } else {
                array.clear();
                this.f15082c = false;
                return;
            }
        }
    }

    public Array<Entity> sort() {
        m19851b();
        Sort.instance().sort(this.f15080a, COMPARATOR);
        return this.f15080a;
    }
}
