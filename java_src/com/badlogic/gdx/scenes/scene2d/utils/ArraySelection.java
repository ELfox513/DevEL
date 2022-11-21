package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.OrderedSet;
/* loaded from: classes.dex */
public class ArraySelection<T> extends Selection<T> {

    /* renamed from: u */
    public Array<T> f6289u;

    /* renamed from: v */
    public boolean f6290v = true;

    /* renamed from: w */
    public T f6291w;

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Selection
    /* renamed from: d */
    public void mo23697d() {
        this.f6291w = null;
    }

    public boolean getRangeSelect() {
        return this.f6290v;
    }

    public void setRangeSelect(boolean z) {
        this.f6290v = z;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Selection
    public void choose(T t) {
        int indexOf;
        if (t != null) {
            if (this.f6382k) {
                return;
            }
            if (this.f6290v && this.f6384q) {
                if (this.f6380b.size > 0 && UIUtils.shift()) {
                    T t2 = this.f6291w;
                    if (t2 == null) {
                        indexOf = -1;
                    } else {
                        indexOf = this.f6289u.indexOf(t2, false);
                    }
                    if (indexOf != -1) {
                        T t3 = this.f6291w;
                        m23694i();
                        int indexOf2 = this.f6289u.indexOf(t, false);
                        if (indexOf > indexOf2) {
                            int i = indexOf;
                            indexOf = indexOf2;
                            indexOf2 = i;
                        }
                        if (!UIUtils.ctrl()) {
                            this.f6380b.clear(8);
                        }
                        while (indexOf <= indexOf2) {
                            this.f6380b.add(this.f6289u.get(indexOf));
                            indexOf++;
                        }
                        if (fireChangeEvent()) {
                            m23695g();
                        } else {
                            mo23697d();
                        }
                        this.f6291w = t3;
                        m23696e();
                        return;
                    }
                }
                super.choose(t);
                this.f6291w = t;
                return;
            }
            super.choose(t);
            return;
        }
        throw new IllegalArgumentException("item cannot be null.");
    }

    public void validate() {
        Array<T> array = this.f6289u;
        if (array.size == 0) {
            clear();
            return;
        }
        OrderedSet.OrderedSetIterator<T> it = items().iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!array.contains(it.next(), false)) {
                it.remove();
                z = true;
            }
        }
        if (this.f6385r && this.f6380b.size == 0) {
            set(array.first());
        } else if (z) {
            mo23697d();
        }
    }

    public ArraySelection(Array<T> array) {
        this.f6289u = array;
    }
}
