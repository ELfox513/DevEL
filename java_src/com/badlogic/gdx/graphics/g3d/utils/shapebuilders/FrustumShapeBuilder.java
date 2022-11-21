package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class FrustumShapeBuilder extends BaseShapeBuilder {
    public static void build(MeshPartBuilder meshPartBuilder, Camera camera) {
        build(meshPartBuilder, camera, BaseShapeBuilder.f4913a.set(1.0f, 0.66f, 0.0f, 1.0f), BaseShapeBuilder.f4914b.set(1.0f, 0.0f, 0.0f, 1.0f), BaseShapeBuilder.f4915c.set(0.0f, 0.66f, 1.0f, 1.0f), BaseShapeBuilder.f4916d.set(1.0f, 1.0f, 1.0f, 1.0f), BaseShapeBuilder.f4917e.set(0.2f, 0.2f, 0.2f, 1.0f));
    }

    /* renamed from: d */
    public static Vector3 m24043d(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        Vector3 vector34 = BaseShapeBuilder.f4918f;
        vector34.set(vector32).sub(vector3).scl(0.5f);
        Vector3 vector35 = BaseShapeBuilder.f4919g;
        vector35.set(vector3).add(vector34);
        vector34.set(vector33).sub(vector32).scl(0.5f);
        return vector35.add(vector34);
    }

    /* renamed from: e */
    public static Vector3 m24042e(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = BaseShapeBuilder.f4918f;
        vector33.set(vector32).sub(vector3).scl(0.5f);
        return BaseShapeBuilder.f4919g.set(vector3).add(vector33);
    }

    public static void build(MeshPartBuilder meshPartBuilder, Camera camera, Color color, Color color2, Color color3, Color color4, Color color5) {
        Frustum frustum = camera.frustum;
        Vector3[] vector3Arr = frustum.planePoints;
        build(meshPartBuilder, frustum, color, color5);
        meshPartBuilder.line(vector3Arr[0], color2, camera.position, color2);
        meshPartBuilder.line(vector3Arr[1], color2, camera.position, color2);
        meshPartBuilder.line(vector3Arr[2], color2, camera.position, color2);
        meshPartBuilder.line(vector3Arr[3], color2, camera.position, color2);
        meshPartBuilder.line(camera.position, color4, m24043d(vector3Arr[4], vector3Arr[5], vector3Arr[6]), color4);
        Vector3 vector3 = BaseShapeBuilder.f4918f;
        float len = vector3.set(vector3Arr[1]).sub(vector3Arr[0]).scl(0.5f).len();
        Vector3 m24043d = m24043d(vector3Arr[0], vector3Arr[1], vector3Arr[2]);
        vector3.set(camera.f3888up).scl(len * 2.0f);
        m24043d.add(vector3);
        meshPartBuilder.line(m24043d, color3, vector3Arr[2], color3);
        meshPartBuilder.line(vector3Arr[2], color3, vector3Arr[3], color3);
        meshPartBuilder.line(vector3Arr[3], color3, m24043d, color3);
    }

    public static void build(MeshPartBuilder meshPartBuilder, Frustum frustum, Color color, Color color2) {
        Vector3[] vector3Arr = frustum.planePoints;
        meshPartBuilder.line(vector3Arr[0], color, vector3Arr[1], color);
        meshPartBuilder.line(vector3Arr[1], color, vector3Arr[2], color);
        meshPartBuilder.line(vector3Arr[2], color, vector3Arr[3], color);
        meshPartBuilder.line(vector3Arr[3], color, vector3Arr[0], color);
        meshPartBuilder.line(vector3Arr[4], color, vector3Arr[5], color);
        meshPartBuilder.line(vector3Arr[5], color, vector3Arr[6], color);
        meshPartBuilder.line(vector3Arr[6], color, vector3Arr[7], color);
        meshPartBuilder.line(vector3Arr[7], color, vector3Arr[4], color);
        meshPartBuilder.line(vector3Arr[0], color, vector3Arr[4], color);
        meshPartBuilder.line(vector3Arr[1], color, vector3Arr[5], color);
        meshPartBuilder.line(vector3Arr[2], color, vector3Arr[6], color);
        meshPartBuilder.line(vector3Arr[3], color, vector3Arr[7], color);
        meshPartBuilder.line(m24042e(vector3Arr[1], vector3Arr[0]), color2, m24042e(vector3Arr[3], vector3Arr[2]), color2);
        meshPartBuilder.line(m24042e(vector3Arr[2], vector3Arr[1]), color2, m24042e(vector3Arr[3], vector3Arr[0]), color2);
        meshPartBuilder.line(m24042e(vector3Arr[5], vector3Arr[4]), color2, m24042e(vector3Arr[7], vector3Arr[6]), color2);
        meshPartBuilder.line(m24042e(vector3Arr[6], vector3Arr[5]), color2, m24042e(vector3Arr[7], vector3Arr[4]), color2);
    }
}
