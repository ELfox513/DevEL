package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class PooledLinkedList<T> {

    /* renamed from: a */
    public Item<T> f6698a;

    /* renamed from: b */
    public Item<T> f6699b;

    /* renamed from: c */
    public Item<T> f6700c;

    /* renamed from: d */
    public Item<T> f6701d;

    /* renamed from: e */
    public int f6702e = 0;

    /* renamed from: f */
    public final Pool<Item<T>> f6703f;

    /* loaded from: classes.dex */
    public static final class Item<T> {
        public Item<T> next;
        public T payload;
        public Item<T> prev;
    }

    public void iter() {
        this.f6700c = this.f6698a;
    }

    public void iterReverse() {
        this.f6700c = this.f6699b;
    }

    public int size() {
        return this.f6702e;
    }

    public void add(T t) {
        Item<T> obtain = this.f6703f.obtain();
        obtain.payload = t;
        obtain.next = null;
        obtain.prev = null;
        if (this.f6698a == null) {
            this.f6698a = obtain;
            this.f6699b = obtain;
            this.f6702e++;
            return;
        }
        Item<T> item = this.f6699b;
        obtain.prev = item;
        item.next = obtain;
        this.f6699b = obtain;
        this.f6702e++;
    }

    public void addFirst(T t) {
        Item<T> obtain = this.f6703f.obtain();
        obtain.payload = t;
        Item<T> item = this.f6698a;
        obtain.next = item;
        obtain.prev = null;
        if (item != null) {
            item.prev = obtain;
        } else {
            this.f6699b = obtain;
        }
        this.f6698a = obtain;
        this.f6702e++;
    }

    @Null
    public T next() {
        Item<T> item = this.f6700c;
        if (item == null) {
            return null;
        }
        T t = item.payload;
        this.f6701d = item;
        this.f6700c = item.next;
        return t;
    }

    @Null
    public T previous() {
        Item<T> item = this.f6700c;
        if (item == null) {
            return null;
        }
        T t = item.payload;
        this.f6701d = item;
        this.f6700c = item.prev;
        return t;
    }

    public void remove() {
        Item<T> item = this.f6701d;
        if (item == null) {
            return;
        }
        this.f6702e--;
        Item<T> item2 = item.next;
        Item<T> item3 = item.prev;
        this.f6703f.free(item);
        this.f6701d = null;
        if (this.f6702e == 0) {
            this.f6698a = null;
            this.f6699b = null;
        } else if (item == this.f6698a) {
            item2.prev = null;
            this.f6698a = item2;
        } else if (item == this.f6699b) {
            item3.next = null;
            this.f6699b = item3;
        } else {
            item3.next = item2;
            item2.prev = item3;
        }
    }

    @Null
    public T removeLast() {
        Item<T> item = this.f6699b;
        if (item == null) {
            return null;
        }
        T t = item.payload;
        this.f6702e--;
        Item<T> item2 = item.prev;
        this.f6703f.free(item);
        if (this.f6702e == 0) {
            this.f6698a = null;
            this.f6699b = null;
        } else {
            this.f6699b = item2;
            item2.next = null;
        }
        return t;
    }

    public PooledLinkedList(int i) {
        this.f6703f = new Pool<Item<T>>(16, i) { // from class: com.badlogic.gdx.utils.PooledLinkedList.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public Item<T> newObject() {
                return new Item<>();
            }
        };
    }

    public void clear() {
        iter();
        while (next() != null) {
            remove();
        }
    }
}
