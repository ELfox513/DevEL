package com.badlogic.gdx.utils;

import java.util.Comparator;
/* loaded from: classes.dex */
public class Sort {

    /* renamed from: c */
    public static Sort f6740c;

    /* renamed from: a */
    public TimSort f6741a;

    /* renamed from: b */
    public ComparableTimSort f6742b;

    public <T extends Comparable> void sort(Array<T> array) {
        if (this.f6742b == null) {
            this.f6742b = new ComparableTimSort();
        }
        this.f6742b.doSort(array.items, 0, array.size);
    }

    public static Sort instance() {
        if (f6740c == null) {
            f6740c = new Sort();
        }
        return f6740c;
    }

    public void sort(Object[] objArr) {
        if (this.f6742b == null) {
            this.f6742b = new ComparableTimSort();
        }
        this.f6742b.doSort(objArr, 0, objArr.length);
    }

    public void sort(Object[] objArr, int i, int i2) {
        if (this.f6742b == null) {
            this.f6742b = new ComparableTimSort();
        }
        this.f6742b.doSort(objArr, i, i2);
    }

    public <T> void sort(Array<T> array, Comparator<? super T> comparator) {
        if (this.f6741a == null) {
            this.f6741a = new TimSort();
        }
        this.f6741a.doSort(array.items, comparator, 0, array.size);
    }

    public <T> void sort(T[] tArr, Comparator<? super T> comparator) {
        if (this.f6741a == null) {
            this.f6741a = new TimSort();
        }
        this.f6741a.doSort(tArr, comparator, 0, tArr.length);
    }

    public <T> void sort(T[] tArr, Comparator<? super T> comparator, int i, int i2) {
        if (this.f6741a == null) {
            this.f6741a = new TimSort();
        }
        this.f6741a.doSort(tArr, comparator, i, i2);
    }
}
