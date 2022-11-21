package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.model.Animation;
import com.badlogic.gdx.graphics.g3d.model.Node;
import com.badlogic.gdx.graphics.g3d.model.NodeAnimation;
import com.badlogic.gdx.graphics.g3d.model.NodeKeyframe;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class BaseAnimationController {

    /* renamed from: c */
    public static final ObjectMap<Node, Transform> f4810c = new ObjectMap<>();

    /* renamed from: d */
    public static final Transform f4811d = new Transform();

    /* renamed from: a */
    public final Pool<Transform> f4812a = new Pool<Transform>() { // from class: com.badlogic.gdx.graphics.g3d.utils.BaseAnimationController.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public Transform newObject() {
            return new Transform();
        }
    };

    /* renamed from: b */
    public boolean f4813b = false;
    public final ModelInstance target;

    /* loaded from: classes.dex */
    public static final class Transform implements Pool.Poolable {
        public final Vector3 translation = new Vector3();
        public final Quaternion rotation = new Quaternion();
        public final Vector3 scale = new Vector3(1.0f, 1.0f, 1.0f);

        public Transform lerp(Transform transform, float f) {
            return lerp(transform.translation, transform.rotation, transform.scale, f);
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            idt();
        }

        public Transform set(Vector3 vector3, Quaternion quaternion, Vector3 vector32) {
            this.translation.set(vector3);
            this.rotation.set(quaternion);
            this.scale.set(vector32);
            return this;
        }

        public Matrix4 toMatrix4(Matrix4 matrix4) {
            return matrix4.set(this.translation, this.rotation, this.scale);
        }

        public String toString() {
            return this.translation.toString() + " - " + this.rotation.toString() + " - " + this.scale.toString();
        }

        public Transform idt() {
            this.translation.set(0.0f, 0.0f, 0.0f);
            this.rotation.idt();
            this.scale.set(1.0f, 1.0f, 1.0f);
            return this;
        }

        public Transform lerp(Vector3 vector3, Quaternion quaternion, Vector3 vector32, float f) {
            this.translation.lerp(vector3, f);
            this.rotation.slerp(quaternion, f);
            this.scale.lerp(vector32, f);
            return this;
        }

        public Transform set(Transform transform) {
            return set(transform.translation, transform.rotation, transform.scale);
        }
    }

    /* renamed from: c */
    public static void m24077c(ObjectMap<Node, Transform> objectMap, Pool<Transform> pool, float f, Animation animation, float f2) {
        if (objectMap == null) {
            Array.ArrayIterator<NodeAnimation> it = animation.nodeAnimations.iterator();
            while (it.hasNext()) {
                m24074f(it.next(), f2);
            }
            return;
        }
        ObjectMap.Keys<Node> it2 = objectMap.keys().iterator();
        while (it2.hasNext()) {
            it2.next().isAnimated = false;
        }
        Array.ArrayIterator<NodeAnimation> it3 = animation.nodeAnimations.iterator();
        while (it3.hasNext()) {
            m24075e(it3.next(), objectMap, pool, f, f2);
        }
        ObjectMap.Entries<Node, Transform> it4 = objectMap.entries().iterator();
        while (it4.hasNext()) {
            ObjectMap.Entry next = it4.next();
            K k = next.key;
            if (!((Node) k).isAnimated) {
                ((Node) k).isAnimated = true;
                ((Transform) next.value).lerp(((Node) k).translation, ((Node) k).rotation, ((Node) k).scale, f);
            }
        }
    }

    /* renamed from: e */
    public static final void m24075e(NodeAnimation nodeAnimation, ObjectMap<Node, Transform> objectMap, Pool<Transform> pool, float f, float f2) {
        Node node = nodeAnimation.node;
        node.isAnimated = true;
        Transform m24070j = m24070j(nodeAnimation, f2);
        Transform transform = objectMap.get(node, null);
        if (transform != null) {
            if (f > 0.999999f) {
                transform.set(m24070j);
            } else {
                transform.lerp(m24070j, f);
            }
        } else if (f > 0.999999f) {
            objectMap.put(node, pool.obtain().set(m24070j));
        } else {
            objectMap.put(node, pool.obtain().set(node.translation, node.rotation, node.scale).lerp(m24070j, f));
        }
    }

    /* renamed from: f */
    public static final void m24074f(NodeAnimation nodeAnimation, float f) {
        Node node = nodeAnimation.node;
        node.isAnimated = true;
        m24070j(nodeAnimation, f).toMatrix4(node.localTransform);
    }

    /* renamed from: i */
    public static final <T> int m24071i(Array<NodeKeyframe<T>> array, float f) {
        int i = array.size - 1;
        int i2 = 0;
        if (i > 0 && f >= array.get(0).keytime && f <= array.get(i).keytime) {
            while (i2 < i) {
                int i3 = (i2 + i) / 2;
                int i4 = i3 + 1;
                if (f > array.get(i4).keytime) {
                    i2 = i4;
                } else if (f < array.get(i3).keytime) {
                    i = i3 - 1;
                } else {
                    return i3;
                }
            }
        }
        return i2;
    }

    /* renamed from: j */
    public static final Transform m24070j(NodeAnimation nodeAnimation, float f) {
        Transform transform = f4811d;
        m24067m(nodeAnimation, f, transform.translation);
        m24069k(nodeAnimation, f, transform.rotation);
        m24068l(nodeAnimation, f, transform.scale);
        return transform;
    }

    /* renamed from: k */
    public static final Quaternion m24069k(NodeAnimation nodeAnimation, float f, Quaternion quaternion) {
        Array<NodeKeyframe<Quaternion>> array = nodeAnimation.rotation;
        if (array == null) {
            return quaternion.set(nodeAnimation.node.rotation);
        }
        if (array.size == 1) {
            return quaternion.set(array.get(0).value);
        }
        int m24071i = m24071i(array, f);
        NodeKeyframe<Quaternion> nodeKeyframe = nodeAnimation.rotation.get(m24071i);
        quaternion.set(nodeKeyframe.value);
        int i = m24071i + 1;
        Array<NodeKeyframe<Quaternion>> array2 = nodeAnimation.rotation;
        if (i < array2.size) {
            NodeKeyframe<Quaternion> nodeKeyframe2 = array2.get(i);
            float f2 = nodeKeyframe.keytime;
            quaternion.slerp(nodeKeyframe2.value, (f - f2) / (nodeKeyframe2.keytime - f2));
        }
        return quaternion;
    }

    /* renamed from: l */
    public static final Vector3 m24068l(NodeAnimation nodeAnimation, float f, Vector3 vector3) {
        Array<NodeKeyframe<Vector3>> array = nodeAnimation.scaling;
        if (array == null) {
            return vector3.set(nodeAnimation.node.scale);
        }
        if (array.size == 1) {
            return vector3.set(array.get(0).value);
        }
        int m24071i = m24071i(array, f);
        NodeKeyframe<Vector3> nodeKeyframe = nodeAnimation.scaling.get(m24071i);
        vector3.set(nodeKeyframe.value);
        int i = m24071i + 1;
        Array<NodeKeyframe<Vector3>> array2 = nodeAnimation.scaling;
        if (i < array2.size) {
            NodeKeyframe<Vector3> nodeKeyframe2 = array2.get(i);
            float f2 = nodeKeyframe.keytime;
            vector3.lerp(nodeKeyframe2.value, (f - f2) / (nodeKeyframe2.keytime - f2));
        }
        return vector3;
    }

    /* renamed from: m */
    public static final Vector3 m24067m(NodeAnimation nodeAnimation, float f, Vector3 vector3) {
        Array<NodeKeyframe<Vector3>> array = nodeAnimation.translation;
        if (array == null) {
            return vector3.set(nodeAnimation.node.translation);
        }
        if (array.size == 1) {
            return vector3.set(array.get(0).value);
        }
        int m24071i = m24071i(array, f);
        NodeKeyframe<Vector3> nodeKeyframe = nodeAnimation.translation.get(m24071i);
        vector3.set(nodeKeyframe.value);
        int i = m24071i + 1;
        Array<NodeKeyframe<Vector3>> array2 = nodeAnimation.translation;
        if (i < array2.size) {
            NodeKeyframe<Vector3> nodeKeyframe2 = array2.get(i);
            float f2 = nodeKeyframe.keytime;
            vector3.lerp(nodeKeyframe2.value, (f - f2) / (nodeKeyframe2.keytime - f2));
        }
        return vector3;
    }

    /* renamed from: a */
    public void m24079a(Animation animation, float f, float f2) {
        if (this.f4813b) {
            m24077c(f4810c, this.f4812a, f2, animation, f);
            return;
        }
        throw new GdxRuntimeException("You must call begin() before adding an animation");
    }

    /* renamed from: b */
    public void m24078b(Animation animation, float f) {
        if (!this.f4813b) {
            m24077c(null, null, 1.0f, animation, f);
            this.target.calculateTransforms();
            return;
        }
        throw new GdxRuntimeException("Call end() first");
    }

    /* renamed from: d */
    public void m24076d(Animation animation, float f, Animation animation2, float f2, float f3) {
        if (animation2 != null && f3 != 0.0f) {
            if (animation != null && f3 != 1.0f) {
                if (!this.f4813b) {
                    m24073g();
                    m24079a(animation, f, 1.0f);
                    m24079a(animation2, f2, f3);
                    m24072h();
                    return;
                }
                throw new GdxRuntimeException("Call end() first");
            }
            m24078b(animation2, f2);
            return;
        }
        m24078b(animation, f);
    }

    /* renamed from: g */
    public void m24073g() {
        if (!this.f4813b) {
            this.f4813b = true;
            return;
        }
        throw new GdxRuntimeException("You must call end() after each call to being()");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public void m24072h() {
        if (this.f4813b) {
            ObjectMap.Entries<Node, Transform> it = f4810c.entries().iterator();
            while (it.hasNext()) {
                ObjectMap.Entry next = it.next();
                ((Transform) next.value).toMatrix4(((Node) next.key).localTransform);
                this.f4812a.free(next.value);
            }
            f4810c.clear();
            this.target.calculateTransforms();
            this.f4813b = false;
            return;
        }
        throw new GdxRuntimeException("You must call begin() first");
    }

    /* renamed from: n */
    public void m24066n(Animation animation) {
        Array.ArrayIterator<NodeAnimation> it = animation.nodeAnimations.iterator();
        while (it.hasNext()) {
            it.next().node.isAnimated = false;
        }
    }

    public BaseAnimationController(ModelInstance modelInstance) {
        this.target = modelInstance;
    }
}
