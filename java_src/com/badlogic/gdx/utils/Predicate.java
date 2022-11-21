package com.badlogic.gdx.utils;

import java.util.Iterator;
/* loaded from: classes.dex */
public interface Predicate<T> {

    /* loaded from: classes.dex */
    public static class PredicateIterable<T> implements Iterable<T> {
        public Iterable<T> iterable;
        public PredicateIterator<T> iterator = null;
        public Predicate<T> predicate;

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            if (Collections.allocateIterators) {
                return new PredicateIterator(this.iterable.iterator(), this.predicate);
            }
            PredicateIterator<T> predicateIterator = this.iterator;
            if (predicateIterator == null) {
                this.iterator = new PredicateIterator<>(this.iterable.iterator(), this.predicate);
            } else {
                predicateIterator.set(this.iterable.iterator(), this.predicate);
            }
            return this.iterator;
        }

        public void set(Iterable<T> iterable, Predicate<T> predicate) {
            this.iterable = iterable;
            this.predicate = predicate;
        }

        public PredicateIterable(Iterable<T> iterable, Predicate<T> predicate) {
            set(iterable, predicate);
        }
    }

    /* loaded from: classes.dex */
    public static class PredicateIterator<T> implements Iterator<T> {
        public boolean end;
        public Iterator<T> iterator;
        public T next;
        public boolean peeked;
        public Predicate<T> predicate;

        public PredicateIterator(Iterable<T> iterable, Predicate<T> predicate) {
            this(iterable.iterator(), predicate);
        }

        public void set(Iterable<T> iterable, Predicate<T> predicate) {
            set(iterable.iterator(), predicate);
        }

        public PredicateIterator(Iterator<T> it, Predicate<T> predicate) {
            this.end = false;
            this.peeked = false;
            this.next = null;
            set(it, predicate);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.end) {
                return false;
            }
            if (this.next != null) {
                return true;
            }
            this.peeked = true;
            while (this.iterator.hasNext()) {
                T next = this.iterator.next();
                if (this.predicate.evaluate(next)) {
                    this.next = next;
                    return true;
                }
            }
            this.end = true;
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.next == null && !hasNext()) {
                return null;
            }
            T t = this.next;
            this.next = null;
            this.peeked = false;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.peeked) {
                this.iterator.remove();
                return;
            }
            throw new GdxRuntimeException("Cannot remove between a call to hasNext() and next().");
        }

        public void set(Iterator<T> it, Predicate<T> predicate) {
            this.iterator = it;
            this.predicate = predicate;
            this.peeked = false;
            this.end = false;
            this.next = null;
        }
    }

    boolean evaluate(T t);
}
