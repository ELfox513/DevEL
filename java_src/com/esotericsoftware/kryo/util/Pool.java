package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.util.Pool;
import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public abstract class Pool<T> {

    /* renamed from: a */
    public final Queue<T> f7449a;

    /* renamed from: b */
    public int f7450b;

    /* loaded from: classes.dex */
    public interface Poolable {
        void reset();
    }

    /* loaded from: classes.dex */
    public static class SoftReferenceQueue<T> implements Queue<T> {

        /* renamed from: a */
        public final Queue<SoftReference<T>> f7456a;

        /* renamed from: i */
        public static /* synthetic */ boolean m23157i(SoftReference softReference) {
            return softReference.get() == null;
        }

        @Override // java.util.Queue, java.util.Collection
        public boolean add(T t) {
            return false;
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends T> collection) {
            return false;
        }

        @Override // java.util.Collection
        public void clear() {
            this.f7456a.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return false;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection collection) {
            return false;
        }

        /* renamed from: e */
        public void m23159e() {
            this.f7456a.removeIf(new Predicate() { // from class: com.esotericsoftware.kryo.util.b
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m23157i;
                    m23157i = Pool.SoftReferenceQueue.m23157i((SoftReference) obj);
                    return m23157i;
                }
            });
        }

        @Override // java.util.Queue
        public T element() {
            return null;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<T> iterator() {
            return null;
        }

        @Override // java.util.Queue
        public boolean offer(T t) {
            return this.f7456a.add(new SoftReference<>(t));
        }

        @Override // java.util.Queue
        public T peek() {
            return null;
        }

        @Override // java.util.Queue
        public T remove() {
            return null;
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection collection) {
            return false;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection collection) {
            return false;
        }

        @Override // java.util.Collection
        public int size() {
            return this.f7456a.size();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return null;
        }

        @Override // java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return null;
        }

        /* renamed from: g */
        public void m23158g() {
            Iterator<SoftReference<T>> it = this.f7456a.iterator();
            while (it.hasNext()) {
                if (it.next().get() == null) {
                    it.remove();
                    return;
                }
            }
        }

        @Override // java.util.Queue
        public T poll() {
            T t;
            do {
                SoftReference<T> poll = this.f7456a.poll();
                if (poll == null) {
                    return null;
                }
                t = poll.get();
            } while (t == null);
            return t;
        }

        public SoftReferenceQueue(Queue<SoftReference<T>> queue) {
            this.f7456a = queue;
        }
    }

    public Pool(boolean z, boolean z2) {
        this(z, z2, Integer.MAX_VALUE);
    }

    public void clean() {
        Queue<T> queue = this.f7449a;
        if (queue instanceof SoftReferenceQueue) {
            ((SoftReferenceQueue) queue).m23159e();
        }
    }

    public void clear() {
        this.f7449a.clear();
    }

    public abstract T create();

    public int getFree() {
        return this.f7449a.size();
    }

    public int getPeak() {
        return this.f7450b;
    }

    public void reset(T t) {
        if (t instanceof Poolable) {
            ((Poolable) t).reset();
        }
    }

    public void resetPeak() {
        this.f7450b = 0;
    }

    public Pool(boolean z, boolean z2, final int i) {
        SoftReferenceQueue softReferenceQueue;
        if (z) {
            softReferenceQueue = new LinkedBlockingQueue<T>(i) { // from class: com.esotericsoftware.kryo.util.Pool.1
                @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue, java.util.concurrent.BlockingQueue
                public boolean add(T t) {
                    return super.offer(t);
                }
            };
        } else if (z2) {
            softReferenceQueue = new LinkedList<T>() { // from class: com.esotericsoftware.kryo.util.Pool.2
                @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
                public boolean add(T t) {
                    if (size() >= i) {
                        return false;
                    }
                    super.add(t);
                    return true;
                }
            };
        } else {
            softReferenceQueue = new ArrayDeque<T>() { // from class: com.esotericsoftware.kryo.util.Pool.3
                @Override // java.util.ArrayDeque, java.util.Deque, java.util.Queue
                public boolean offer(T t) {
                    if (size() >= i) {
                        return false;
                    }
                    super.offer(t);
                    return true;
                }
            };
        }
        this.f7449a = z2 ? new SoftReferenceQueue(softReferenceQueue) : softReferenceQueue;
    }

    public void free(T t) {
        if (t != null) {
            reset(t);
            if (!this.f7449a.offer(t)) {
                Queue<T> queue = this.f7449a;
                if (queue instanceof SoftReferenceQueue) {
                    ((SoftReferenceQueue) queue).m23158g();
                    this.f7449a.offer(t);
                }
            }
            this.f7450b = Math.max(this.f7450b, this.f7449a.size());
            return;
        }
        throw new IllegalArgumentException("object cannot be null.");
    }

    public T obtain() {
        T poll = this.f7449a.poll();
        if (poll == null) {
            return create();
        }
        return poll;
    }
}
