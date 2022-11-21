package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class ArrowShapeBuilder extends BaseShapeBuilder {
    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i) {
        Vector3 vector3 = BaseShapeBuilder.m24046c().set(f, f2, f3);
        Vector3 vector32 = BaseShapeBuilder.m24046c().set(f4, f5, f6);
        float dst = vector3.dst(vector32);
        float f9 = dst * f7;
        double d = f9;
        double sqrt = Math.sqrt(0.3333333432674408d);
        Double.isNaN(d);
        float f10 = ((float) (d * sqrt)) * 2.0f;
        float f11 = dst - f9;
        float f12 = f10 * f8;
        Vector3 nor = BaseShapeBuilder.m24046c().set(vector32).sub(vector3).nor();
        Vector3 crs = BaseShapeBuilder.m24046c().set(nor).crs(Vector3.f5531Z);
        if (crs.isZero()) {
            crs.set(Vector3.f5529X);
        }
        crs.crs(nor).nor();
        Vector3 nor2 = BaseShapeBuilder.m24046c().set(nor).crs(crs).nor();
        Vector3 nor3 = BaseShapeBuilder.m24046c().set(vector32).sub(vector3).nor();
        Matrix4 vertexTransform = meshPartBuilder.getVertexTransform(BaseShapeBuilder.m24047b());
        Matrix4 m24047b = BaseShapeBuilder.m24047b();
        float[] fArr = m24047b.val;
        fArr[0] = nor2.f5533x;
        fArr[4] = nor.f5533x;
        fArr[8] = crs.f5533x;
        fArr[1] = nor2.f5534y;
        fArr[5] = nor.f5534y;
        fArr[9] = crs.f5534y;
        fArr[2] = nor2.f5535z;
        fArr[6] = nor.f5535z;
        fArr[10] = crs.f5535z;
        Matrix4 m24047b2 = BaseShapeBuilder.m24047b();
        m24047b.setTranslation(BaseShapeBuilder.m24046c().set(nor3).scl(f11 / 2.0f).add(f, f2, f3));
        meshPartBuilder.setVertexTransform(m24047b2.set(m24047b).mul(vertexTransform));
        CylinderShapeBuilder.build(meshPartBuilder, f12, f11, f12, i);
        m24047b.setTranslation(BaseShapeBuilder.m24046c().set(nor3).scl(f11).add(f, f2, f3));
        meshPartBuilder.setVertexTransform(m24047b2.set(m24047b).mul(vertexTransform));
        ConeShapeBuilder.build(meshPartBuilder, f10, f9, f10, i);
        meshPartBuilder.setVertexTransform(vertexTransform);
        BaseShapeBuilder.m24048a();
    }
}
