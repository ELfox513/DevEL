package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.FlushablePool;
/* loaded from: classes.dex */
public class BaseShapeBuilder {

    /* renamed from: a */
    public static final Color f4913a = new Color();

    /* renamed from: b */
    public static final Color f4914b = new Color();

    /* renamed from: c */
    public static final Color f4915c = new Color();

    /* renamed from: d */
    public static final Color f4916d = new Color();

    /* renamed from: e */
    public static final Color f4917e = new Color();

    /* renamed from: f */
    public static final Vector3 f4918f = new Vector3();

    /* renamed from: g */
    public static final Vector3 f4919g = new Vector3();

    /* renamed from: h */
    public static final Vector3 f4920h = new Vector3();

    /* renamed from: i */
    public static final Vector3 f4921i = new Vector3();

    /* renamed from: j */
    public static final Vector3 f4922j = new Vector3();

    /* renamed from: k */
    public static final Vector3 f4923k = new Vector3();

    /* renamed from: l */
    public static final Vector3 f4924l = new Vector3();

    /* renamed from: m */
    public static final Vector3 f4925m = new Vector3();

    /* renamed from: n */
    public static final MeshPartBuilder.VertexInfo f4926n = new MeshPartBuilder.VertexInfo();

    /* renamed from: o */
    public static final MeshPartBuilder.VertexInfo f4927o = new MeshPartBuilder.VertexInfo();

    /* renamed from: p */
    public static final MeshPartBuilder.VertexInfo f4928p = new MeshPartBuilder.VertexInfo();

    /* renamed from: q */
    public static final MeshPartBuilder.VertexInfo f4929q = new MeshPartBuilder.VertexInfo();

    /* renamed from: r */
    public static final MeshPartBuilder.VertexInfo f4930r = new MeshPartBuilder.VertexInfo();

    /* renamed from: s */
    public static final MeshPartBuilder.VertexInfo f4931s = new MeshPartBuilder.VertexInfo();

    /* renamed from: t */
    public static final MeshPartBuilder.VertexInfo f4932t = new MeshPartBuilder.VertexInfo();

    /* renamed from: u */
    public static final MeshPartBuilder.VertexInfo f4933u = new MeshPartBuilder.VertexInfo();

    /* renamed from: v */
    public static final MeshPartBuilder.VertexInfo f4934v = new MeshPartBuilder.VertexInfo();

    /* renamed from: w */
    public static final Matrix4 f4935w = new Matrix4();

    /* renamed from: x */
    public static final FlushablePool<Vector3> f4936x = new FlushablePool<Vector3>() { // from class: com.badlogic.gdx.graphics.g3d.utils.shapebuilders.BaseShapeBuilder.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public Vector3 newObject() {
            return new Vector3();
        }
    };

    /* renamed from: y */
    public static final FlushablePool<Matrix4> f4937y = new FlushablePool<Matrix4>() { // from class: com.badlogic.gdx.graphics.g3d.utils.shapebuilders.BaseShapeBuilder.2
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public Matrix4 newObject() {
            return new Matrix4();
        }
    };

    /* renamed from: b */
    public static Matrix4 m24047b() {
        return f4937y.obtain();
    }

    /* renamed from: c */
    public static Vector3 m24046c() {
        return f4936x.obtain();
    }

    /* renamed from: a */
    public static void m24048a() {
        f4936x.flush();
        f4937y.flush();
    }
}
