package com.badlogic.gdx.utils;

import com.badlogic.gdx.utils.BinaryHeap.Node;
import java.util.Arrays;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class BinaryHeap<T extends Node> {

    /* renamed from: a */
    public Node[] f6423a;

    /* renamed from: b */
    public final boolean f6424b;
    public int size;

    public BinaryHeap() {
        this(16, false);
    }

    public T add(T t) {
        int i = this.size;
        Node[] nodeArr = this.f6423a;
        if (i == nodeArr.length) {
            Node[] nodeArr2 = new Node[i << 1];
            System.arraycopy(nodeArr, 0, nodeArr2, 0, i);
            this.f6423a = nodeArr2;
        }
        int i2 = this.size;
        t.f6426b = i2;
        this.f6423a[i2] = t;
        this.size = i2 + 1;
        m23688b(i2);
        return t;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    /* loaded from: classes.dex */
    public static class Node {

        /* renamed from: a */
        public float f6425a;

        /* renamed from: b */
        public int f6426b;

        public float getValue() {
            return this.f6425a;
        }

        public String toString() {
            return Float.toString(this.f6425a);
        }

        public Node(float f) {
            this.f6425a = f;
        }
    }

    public BinaryHeap(int i, boolean z) {
        this.f6424b = z;
        this.f6423a = new Node[i];
    }

    /* renamed from: a */
    public final void m23689a(int i) {
        Node node;
        float f;
        boolean z;
        Node[] nodeArr = this.f6423a;
        int i2 = this.size;
        Node node2 = nodeArr[i];
        float f2 = node2.f6425a;
        while (true) {
            boolean z2 = true;
            int i3 = (i << 1) + 1;
            if (i3 >= i2) {
                break;
            }
            int i4 = i3 + 1;
            Node node3 = nodeArr[i3];
            float f3 = node3.f6425a;
            if (i4 >= i2) {
                node = null;
                if (this.f6424b) {
                    f = -3.4028235E38f;
                } else {
                    f = Float.MAX_VALUE;
                }
            } else {
                node = nodeArr[i4];
                f = node.f6425a;
            }
            if (f3 < f) {
                z = true;
            } else {
                z = false;
            }
            boolean z3 = this.f6424b;
            if (z ^ z3) {
                if (f3 == f2) {
                    break;
                }
                if (f3 <= f2) {
                    z2 = false;
                }
                if (z2 ^ z3) {
                    break;
                }
                nodeArr[i] = node3;
                node3.f6426b = i;
                i = i3;
            } else if (f == f2) {
                break;
            } else {
                if (f <= f2) {
                    z2 = false;
                }
                if (z2 ^ z3) {
                    break;
                }
                nodeArr[i] = node;
                if (node != null) {
                    node.f6426b = i;
                }
                i = i4;
            }
        }
        nodeArr[i] = node2;
        node2.f6426b = i;
    }

    /* renamed from: b */
    public final void m23688b(int i) {
        Node[] nodeArr = this.f6423a;
        Node node = nodeArr[i];
        float f = node.f6425a;
        while (i > 0) {
            boolean z = true;
            int i2 = (i - 1) >> 1;
            Node node2 = nodeArr[i2];
            if (f >= node2.f6425a) {
                z = false;
            }
            if (!(z ^ this.f6424b)) {
                break;
            }
            nodeArr[i] = node2;
            node2.f6426b = i;
            i = i2;
        }
        nodeArr[i] = node;
        node.f6426b = i;
    }

    public void clear() {
        Arrays.fill(this.f6423a, 0, this.size, (Object) null);
        this.size = 0;
    }

    public boolean contains(T t, boolean z) {
        if (t != null) {
            if (z) {
                for (Node node : this.f6423a) {
                    if (node == t) {
                        return true;
                    }
                }
            } else {
                for (Node node2 : this.f6423a) {
                    if (node2.equals(t)) {
                        return true;
                    }
                }
            }
            return false;
        }
        throw new IllegalArgumentException("node cannot be null.");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BinaryHeap)) {
            return false;
        }
        BinaryHeap binaryHeap = (BinaryHeap) obj;
        int i = binaryHeap.size;
        int i2 = this.size;
        if (i != i2) {
            return false;
        }
        Node[] nodeArr = this.f6423a;
        Node[] nodeArr2 = binaryHeap.f6423a;
        for (int i3 = 0; i3 < i2; i3++) {
            if (nodeArr[i3].f6425a != nodeArr2[i3].f6425a) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        Node[] nodeArr = this.f6423a;
        int i = this.size;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + Float.floatToIntBits(nodeArr[i3].f6425a);
        }
        return i2;
    }

    public T peek() {
        if (this.size != 0) {
            return (T) this.f6423a[0];
        }
        throw new IllegalStateException("The heap is empty.");
    }

    public T pop() {
        Node[] nodeArr = this.f6423a;
        T t = (T) nodeArr[0];
        int i = this.size - 1;
        this.size = i;
        if (i > 0) {
            nodeArr[0] = nodeArr[i];
            nodeArr[i] = null;
            m23689a(0);
        } else {
            nodeArr[0] = null;
        }
        return t;
    }

    public T remove(T t) {
        boolean z = true;
        int i = this.size - 1;
        this.size = i;
        if (i > 0) {
            Node[] nodeArr = this.f6423a;
            Node node = nodeArr[i];
            nodeArr[i] = null;
            int i2 = t.f6426b;
            nodeArr[i2] = node;
            if (node.f6425a >= t.f6425a) {
                z = false;
            }
            if (z ^ this.f6424b) {
                m23688b(i2);
            } else {
                m23689a(i2);
            }
        } else {
            this.f6423a[0] = null;
        }
        return t;
    }

    public void setValue(T t, float f) {
        boolean z;
        float f2 = t.f6425a;
        t.f6425a = f;
        if (f < f2) {
            z = true;
        } else {
            z = false;
        }
        if (z ^ this.f6424b) {
            m23688b(t.f6426b);
        } else {
            m23689a(t.f6426b);
        }
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        Node[] nodeArr = this.f6423a;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        stringBuilder.append(nodeArr[0].f6425a);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(", ");
            stringBuilder.append(nodeArr[i].f6425a);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public T add(T t, float f) {
        t.f6425a = f;
        return add(t);
    }
}
