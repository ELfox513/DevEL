package com.badlogic.gdx.graphics.g3d.model;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ArrayMap;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class Node {

    /* renamed from: a */
    public Node f4488a;

    /* renamed from: id */
    public String f4490id;
    public boolean isAnimated;
    public boolean inheritTransform = true;
    public final Vector3 translation = new Vector3();
    public final Quaternion rotation = new Quaternion(0.0f, 0.0f, 0.0f, 1.0f);
    public final Vector3 scale = new Vector3(1.0f, 1.0f, 1.0f);
    public final Matrix4 localTransform = new Matrix4();
    public final Matrix4 globalTransform = new Matrix4();
    public Array<NodePart> parts = new Array<>(2);

    /* renamed from: b */
    public final Array<Node> f4489b = new Array<>(2);

    public <T extends Node> int addChild(T t) {
        return insertChild(-1, t);
    }

    public <T extends Node> int addChildren(Iterable<T> iterable) {
        return insertChildren(-1, iterable);
    }

    public <T extends Node> void attachTo(T t) {
        t.addChild(this);
    }

    public BoundingBox calculateBoundingBox(BoundingBox boundingBox) {
        boundingBox.inf();
        return extendBoundingBox(boundingBox);
    }

    public Node copy() {
        return new Node().m24125a(this);
    }

    public BoundingBox extendBoundingBox(BoundingBox boundingBox) {
        return extendBoundingBox(boundingBox, true);
    }

    public Node getChild(int i) {
        return this.f4489b.get(i);
    }

    public int getChildCount() {
        return this.f4489b.size;
    }

    public Iterable<Node> getChildren() {
        return this.f4489b;
    }

    public Node getParent() {
        return this.f4488a;
    }

    public boolean hasChildren() {
        Array<Node> array = this.f4489b;
        return array != null && array.size > 0;
    }

    public boolean hasParent() {
        return this.f4488a != null;
    }

    public <T extends Node> int insertChild(int i, T t) {
        for (Node node = this; node != null; node = node.getParent()) {
            if (node == t) {
                throw new GdxRuntimeException("Cannot add a parent as a child");
            }
        }
        Node parent = t.getParent();
        if (parent != null && !parent.removeChild(t)) {
            throw new GdxRuntimeException("Could not remove child from its current parent");
        }
        if (i >= 0) {
            Array<Node> array = this.f4489b;
            if (i < array.size) {
                array.insert(i, t);
                t.f4488a = this;
                return i;
            }
        }
        Array<Node> array2 = this.f4489b;
        int i2 = array2.size;
        array2.add(t);
        i = i2;
        t.f4488a = this;
        return i;
    }

    public static Node getNode(Array<Node> array, String str, boolean z, boolean z2) {
        int i = array.size;
        if (z2) {
            for (int i2 = 0; i2 < i; i2++) {
                Node node = array.get(i2);
                if (node.f4490id.equalsIgnoreCase(str)) {
                    return node;
                }
            }
        } else {
            for (int i3 = 0; i3 < i; i3++) {
                Node node2 = array.get(i3);
                if (node2.f4490id.equals(str)) {
                    return node2;
                }
            }
        }
        if (z) {
            for (int i4 = 0; i4 < i; i4++) {
                Node node3 = getNode(array.get(i4).f4489b, str, true, z2);
                if (node3 != null) {
                    return node3;
                }
            }
            return null;
        }
        return null;
    }

    public void calculateBoneTransforms(boolean z) {
        Matrix4[] matrix4Arr;
        int i;
        Array.ArrayIterator<NodePart> it = this.parts.iterator();
        while (it.hasNext()) {
            NodePart next = it.next();
            ArrayMap<Node, Matrix4> arrayMap = next.invBoneBindTransforms;
            if (arrayMap != null && (matrix4Arr = next.bones) != null && (i = arrayMap.size) == matrix4Arr.length) {
                for (int i2 = 0; i2 < i; i2++) {
                    next.bones[i2].set(next.invBoneBindTransforms.keys[i2].globalTransform).mul(next.invBoneBindTransforms.values[i2]);
                }
            }
        }
        if (z) {
            Array.ArrayIterator<Node> it2 = this.f4489b.iterator();
            while (it2.hasNext()) {
                it2.next().calculateBoneTransforms(true);
            }
        }
    }

    public Matrix4 calculateLocalTransform() {
        if (!this.isAnimated) {
            this.localTransform.set(this.translation, this.rotation, this.scale);
        }
        return this.localTransform;
    }

    public Matrix4 calculateWorldTransform() {
        Node node;
        if (this.inheritTransform && (node = this.f4488a) != null) {
            this.globalTransform.set(node.globalTransform).mul(this.localTransform);
        } else {
            this.globalTransform.set(this.localTransform);
        }
        return this.globalTransform;
    }

    public void detach() {
        Node node = this.f4488a;
        if (node != null) {
            node.removeChild(this);
            this.f4488a = null;
        }
    }

    public BoundingBox extendBoundingBox(BoundingBox boundingBox, boolean z) {
        int i = this.parts.size;
        for (int i2 = 0; i2 < i; i2++) {
            NodePart nodePart = this.parts.get(i2);
            if (nodePart.enabled) {
                MeshPart meshPart = nodePart.meshPart;
                if (z) {
                    meshPart.mesh.extendBoundingBox(boundingBox, meshPart.offset, meshPart.size, this.globalTransform);
                } else {
                    meshPart.mesh.extendBoundingBox(boundingBox, meshPart.offset, meshPart.size);
                }
            }
        }
        int i3 = this.f4489b.size;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f4489b.get(i4).extendBoundingBox(boundingBox);
        }
        return boundingBox;
    }

    public Node getChild(String str, boolean z, boolean z2) {
        return getNode(this.f4489b, str, z, z2);
    }

    public <T extends Node> int insertChildren(int i, Iterable<T> iterable) {
        if (i < 0 || i > this.f4489b.size) {
            i = this.f4489b.size;
        }
        int i2 = i;
        for (T t : iterable) {
            insertChild(i2, t);
            i2++;
        }
        return i;
    }

    public <T extends Node> boolean removeChild(T t) {
        if (!this.f4489b.removeValue(t, true)) {
            return false;
        }
        t.f4488a = null;
        return true;
    }

    /* renamed from: a */
    public Node m24125a(Node node) {
        detach();
        this.f4490id = node.f4490id;
        this.isAnimated = node.isAnimated;
        this.inheritTransform = node.inheritTransform;
        this.translation.set(node.translation);
        this.rotation.set(node.rotation);
        this.scale.set(node.scale);
        this.localTransform.set(node.localTransform);
        this.globalTransform.set(node.globalTransform);
        this.parts.clear();
        Array.ArrayIterator<NodePart> it = node.parts.iterator();
        while (it.hasNext()) {
            this.parts.add(it.next().copy());
        }
        this.f4489b.clear();
        for (Node node2 : node.getChildren()) {
            addChild(node2.copy());
        }
        return this;
    }

    public BoundingBox calculateBoundingBox(BoundingBox boundingBox, boolean z) {
        boundingBox.inf();
        return extendBoundingBox(boundingBox, z);
    }

    public void calculateTransforms(boolean z) {
        calculateLocalTransform();
        calculateWorldTransform();
        if (z) {
            Array.ArrayIterator<Node> it = this.f4489b.iterator();
            while (it.hasNext()) {
                it.next().calculateTransforms(true);
            }
        }
    }
}
