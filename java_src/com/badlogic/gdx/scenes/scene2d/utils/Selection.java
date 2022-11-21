package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.OrderedSet;
import com.badlogic.gdx.utils.Pools;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Selection<T> implements Disableable, Iterable<T> {
    @Null

    /* renamed from: a */
    public Actor f6379a;

    /* renamed from: k */
    public boolean f6382k;

    /* renamed from: p */
    public boolean f6383p;

    /* renamed from: q */
    public boolean f6384q;

    /* renamed from: r */
    public boolean f6385r;
    @Null

    /* renamed from: t */
    public T f6387t;

    /* renamed from: b */
    public final OrderedSet<T> f6380b = new OrderedSet<>();

    /* renamed from: d */
    public final OrderedSet<T> f6381d = new OrderedSet<>();

    /* renamed from: s */
    public boolean f6386s = true;

    public boolean contains(@Null T t) {
        if (t == null) {
            return false;
        }
        return this.f6380b.contains(t);
    }

    /* renamed from: d */
    public void mo23697d() {
    }

    /* renamed from: e */
    public void m23696e() {
        this.f6381d.clear(32);
    }

    @Null
    public T first() {
        OrderedSet<T> orderedSet = this.f6380b;
        if (orderedSet.size == 0) {
            return null;
        }
        return orderedSet.first();
    }

    public boolean getMultiple() {
        return this.f6384q;
    }

    public boolean getRequired() {
        return this.f6385r;
    }

    public boolean getToggle() {
        return this.f6383p;
    }

    @Deprecated
    public boolean hasItems() {
        return this.f6380b.size > 0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public boolean isDisabled() {
        return this.f6382k;
    }

    public boolean isEmpty() {
        return this.f6380b.size == 0;
    }

    public OrderedSet<T> items() {
        return this.f6380b;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this.f6380b.iterator();
    }

    public boolean notEmpty() {
        return this.f6380b.size > 0;
    }

    public void setActor(@Null Actor actor) {
        this.f6379a = actor;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public void setDisabled(boolean z) {
        this.f6382k = z;
    }

    public void setMultiple(boolean z) {
        this.f6384q = z;
    }

    public void setProgrammaticChangeEvents(boolean z) {
        this.f6386s = z;
    }

    public void setRequired(boolean z) {
        this.f6385r = z;
    }

    public void setToggle(boolean z) {
        this.f6383p = z;
    }

    public int size() {
        return this.f6380b.size;
    }

    public Array<T> toArray() {
        return this.f6380b.iterator().toArray();
    }

    public String toString() {
        return this.f6380b.toString();
    }

    public void add(T t) {
        if (t != null) {
            if (!this.f6380b.add(t)) {
                return;
            }
            if (this.f6386s && fireChangeEvent()) {
                this.f6380b.remove(t);
                return;
            }
            this.f6387t = t;
            mo23697d();
            return;
        }
        throw new IllegalArgumentException("item cannot be null.");
    }

    public void choose(T t) {
        if (t != null) {
            if (this.f6382k) {
                return;
            }
            m23694i();
            try {
                boolean z = true;
                if ((this.f6383p || UIUtils.ctrl()) && this.f6380b.contains(t)) {
                    if (this.f6385r && this.f6380b.size == 1) {
                        return;
                    }
                    this.f6380b.remove(t);
                    this.f6387t = null;
                } else {
                    boolean z2 = false;
                    if (!this.f6384q || (!this.f6383p && !UIUtils.ctrl())) {
                        OrderedSet<T> orderedSet = this.f6380b;
                        if (orderedSet.size == 1 && orderedSet.contains(t)) {
                            return;
                        }
                        OrderedSet<T> orderedSet2 = this.f6380b;
                        if (orderedSet2.size <= 0) {
                            z = false;
                        }
                        orderedSet2.clear(8);
                        z2 = z;
                    }
                    if (!this.f6380b.add(t) && !z2) {
                        return;
                    }
                    this.f6387t = t;
                }
                if (fireChangeEvent()) {
                    m23695g();
                } else {
                    mo23697d();
                }
                return;
            } finally {
                m23696e();
            }
        }
        throw new IllegalArgumentException("item cannot be null.");
    }

    public void clear() {
        if (this.f6380b.size == 0) {
            this.f6387t = null;
            return;
        }
        m23694i();
        this.f6380b.clear(8);
        if (this.f6386s && fireChangeEvent()) {
            m23695g();
        } else {
            this.f6387t = null;
            mo23697d();
        }
        m23696e();
    }

    public boolean fireChangeEvent() {
        if (this.f6379a == null) {
            return false;
        }
        ChangeListener.ChangeEvent changeEvent = (ChangeListener.ChangeEvent) Pools.obtain(ChangeListener.ChangeEvent.class);
        try {
            return this.f6379a.fire(changeEvent);
        } finally {
            Pools.free(changeEvent);
        }
    }

    /* renamed from: g */
    public void m23695g() {
        this.f6380b.clear(this.f6381d.size);
        this.f6380b.addAll((OrderedSet) this.f6381d);
    }

    @Null
    public T getLastSelected() {
        T t = this.f6387t;
        if (t != null) {
            return t;
        }
        OrderedSet<T> orderedSet = this.f6380b;
        if (orderedSet.size > 0) {
            return orderedSet.first();
        }
        return null;
    }

    /* renamed from: i */
    public void m23694i() {
        this.f6381d.clear(this.f6380b.size);
        this.f6381d.addAll((OrderedSet) this.f6380b);
    }

    public void remove(T t) {
        if (t != null) {
            if (!this.f6380b.remove(t)) {
                return;
            }
            if (this.f6386s && fireChangeEvent()) {
                this.f6380b.add(t);
                return;
            }
            this.f6387t = null;
            mo23697d();
            return;
        }
        throw new IllegalArgumentException("item cannot be null.");
    }

    public void set(T t) {
        if (t != null) {
            OrderedSet<T> orderedSet = this.f6380b;
            if (orderedSet.size == 1 && orderedSet.first() == t) {
                return;
            }
            m23694i();
            this.f6380b.clear(8);
            this.f6380b.add(t);
            if (this.f6386s && fireChangeEvent()) {
                m23695g();
            } else {
                this.f6387t = t;
                mo23697d();
            }
            m23696e();
            return;
        }
        throw new IllegalArgumentException("item cannot be null.");
    }

    public Array<T> toArray(Array<T> array) {
        return this.f6380b.iterator().toArray(array);
    }

    public void addAll(Array<T> array) {
        m23694i();
        int i = array.size;
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            T t = array.get(i2);
            if (t != null) {
                if (this.f6380b.add(t)) {
                    z = true;
                }
            } else {
                throw new IllegalArgumentException("item cannot be null.");
            }
        }
        if (z) {
            if (this.f6386s && fireChangeEvent()) {
                m23695g();
            } else {
                this.f6387t = array.peek();
                mo23697d();
            }
        }
        m23696e();
    }

    public void removeAll(Array<T> array) {
        m23694i();
        int i = array.size;
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            T t = array.get(i2);
            if (t != null) {
                if (this.f6380b.remove(t)) {
                    z = true;
                }
            } else {
                throw new IllegalArgumentException("item cannot be null.");
            }
        }
        if (z) {
            if (this.f6386s && fireChangeEvent()) {
                m23695g();
            } else {
                this.f6387t = null;
                mo23697d();
            }
        }
        m23696e();
    }

    public void setAll(Array<T> array) {
        m23694i();
        this.f6387t = null;
        this.f6380b.clear(array.size);
        int i = array.size;
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            T t = array.get(i2);
            if (t != null) {
                if (this.f6380b.add(t)) {
                    z = true;
                }
            } else {
                throw new IllegalArgumentException("item cannot be null.");
            }
        }
        if (z) {
            if (this.f6386s && fireChangeEvent()) {
                m23695g();
            } else if (array.size > 0) {
                this.f6387t = array.peek();
                mo23697d();
            }
        }
        m23696e();
    }
}
