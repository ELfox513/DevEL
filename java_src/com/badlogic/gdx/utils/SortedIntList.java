package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class SortedIntList<E> implements Iterable<Node<E>> {

    /* renamed from: b */
    public transient SortedIntList<E>.Iterator f6744b;

    /* renamed from: k */
    public Node<E> f6746k;

    /* renamed from: a */
    public NodePool<E> f6743a = new NodePool<>();

    /* renamed from: d */
    public int f6745d = 0;

    /* loaded from: classes.dex */
    public class Iterator implements java.util.Iterator<Node<E>> {

        /* renamed from: a */
        public Node<E> f6747a;

        /* renamed from: b */
        public Node<E> f6748b;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f6747a != null;
        }

        public Iterator() {
            reset();
        }

        @Override // java.util.Iterator
        public Node<E> next() {
            Node<E> node = this.f6747a;
            this.f6748b = node;
            this.f6747a = node.f6751b;
            return node;
        }

        @Override // java.util.Iterator
        public void remove() {
            Node<E> node = this.f6748b;
            if (node != null) {
                SortedIntList sortedIntList = SortedIntList.this;
                if (node == sortedIntList.f6746k) {
                    sortedIntList.f6746k = this.f6747a;
                } else {
                    Node<E> node2 = node.f6750a;
                    Node<E> node3 = this.f6747a;
                    node2.f6751b = node3;
                    if (node3 != null) {
                        node3.f6750a = node2;
                    }
                }
                sortedIntList.f6745d--;
            }
        }

        public SortedIntList<E>.Iterator reset() {
            this.f6747a = SortedIntList.this.f6746k;
            this.f6748b = null;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class Node<E> {

        /* renamed from: a */
        public Node<E> f6750a;

        /* renamed from: b */
        public Node<E> f6751b;
        public int index;
        public E value;
    }

    public boolean isEmpty() {
        return this.f6745d == 0;
    }

    public boolean notEmpty() {
        return this.f6745d > 0;
    }

    public int size() {
        return this.f6745d;
    }

    /* loaded from: classes.dex */
    public static class NodePool<E> extends Pool<Node<E>> {
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public Node<E> newObject() {
            return new Node<>();
        }

        public Node<E> obtain(Node<E> node, Node<E> node2, E e, int i) {
            Node<E> node3 = (Node) super.obtain();
            node3.f6750a = node;
            node3.f6751b = node2;
            node3.value = e;
            node3.index = i;
            return node3;
        }
    }

    public void clear() {
        while (true) {
            Node<E> node = this.f6746k;
            if (node != null) {
                this.f6743a.free(node);
                this.f6746k = this.f6746k.f6751b;
            } else {
                this.f6745d = 0;
                return;
            }
        }
    }

    public E get(int i) {
        Node<E> node = this.f6746k;
        if (node != null) {
            while (true) {
                Node<E> node2 = node.f6751b;
                if (node2 == null || node.index >= i) {
                    break;
                }
                node = node2;
            }
            if (node.index == i) {
                return node.value;
            }
        }
        return null;
    }

    @Null
    public E insert(int i, E e) {
        Node<E> node;
        Node<E> node2 = this.f6746k;
        if (node2 != null) {
            while (true) {
                node = node2.f6751b;
                if (node == null || node.index > i) {
                    break;
                }
                node2 = node;
            }
            int i2 = node2.index;
            if (i > i2) {
                Node<E> obtain = this.f6743a.obtain(node2, node, e, i);
                node2.f6751b = obtain;
                Node<E> node3 = obtain.f6751b;
                if (node3 != null) {
                    node3.f6750a = obtain;
                }
                this.f6745d++;
            } else if (i < i2) {
                Node<E> obtain2 = this.f6743a.obtain(null, this.f6746k, e, i);
                this.f6746k.f6750a = obtain2;
                this.f6746k = obtain2;
                this.f6745d++;
            } else {
                node2.value = e;
            }
        } else {
            this.f6746k = this.f6743a.obtain(null, null, e, i);
            this.f6745d++;
        }
        return null;
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<Node<E>> iterator() {
        if (Collections.allocateIterators) {
            return new Iterator();
        }
        SortedIntList<E>.Iterator iterator = this.f6744b;
        if (iterator == null) {
            SortedIntList<E>.Iterator iterator2 = new Iterator();
            this.f6744b = iterator2;
            return iterator2;
        }
        return iterator.reset();
    }
}
