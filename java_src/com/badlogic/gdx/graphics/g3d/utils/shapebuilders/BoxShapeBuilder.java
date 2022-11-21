package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
/* loaded from: classes.dex */
public class BoxShapeBuilder extends BaseShapeBuilder {
    public static void build(MeshPartBuilder meshPartBuilder, BoundingBox boundingBox) {
        meshPartBuilder.box(boundingBox.getCorner000(BaseShapeBuilder.m24046c()), boundingBox.getCorner010(BaseShapeBuilder.m24046c()), boundingBox.getCorner100(BaseShapeBuilder.m24046c()), boundingBox.getCorner110(BaseShapeBuilder.m24046c()), boundingBox.getCorner001(BaseShapeBuilder.m24046c()), boundingBox.getCorner011(BaseShapeBuilder.m24046c()), boundingBox.getCorner101(BaseShapeBuilder.m24046c()), boundingBox.getCorner111(BaseShapeBuilder.m24046c()));
        BaseShapeBuilder.m24048a();
    }

    public static void build(MeshPartBuilder meshPartBuilder, MeshPartBuilder.VertexInfo vertexInfo, MeshPartBuilder.VertexInfo vertexInfo2, MeshPartBuilder.VertexInfo vertexInfo3, MeshPartBuilder.VertexInfo vertexInfo4, MeshPartBuilder.VertexInfo vertexInfo5, MeshPartBuilder.VertexInfo vertexInfo6, MeshPartBuilder.VertexInfo vertexInfo7, MeshPartBuilder.VertexInfo vertexInfo8) {
        meshPartBuilder.ensureVertices(8);
        short vertex = meshPartBuilder.vertex(vertexInfo);
        short vertex2 = meshPartBuilder.vertex(vertexInfo3);
        short vertex3 = meshPartBuilder.vertex(vertexInfo4);
        short vertex4 = meshPartBuilder.vertex(vertexInfo2);
        short vertex5 = meshPartBuilder.vertex(vertexInfo5);
        short vertex6 = meshPartBuilder.vertex(vertexInfo7);
        short vertex7 = meshPartBuilder.vertex(vertexInfo8);
        short vertex8 = meshPartBuilder.vertex(vertexInfo6);
        int primitiveType = meshPartBuilder.getPrimitiveType();
        if (primitiveType == 1) {
            meshPartBuilder.ensureIndices(24);
            meshPartBuilder.rect(vertex, vertex2, vertex3, vertex4);
            meshPartBuilder.rect(vertex6, vertex5, vertex8, vertex7);
            meshPartBuilder.index(vertex, vertex5, vertex4, vertex8, vertex3, vertex7, vertex2, vertex6);
        } else if (primitiveType == 0) {
            meshPartBuilder.ensureRectangleIndices(2);
            meshPartBuilder.rect(vertex, vertex2, vertex3, vertex4);
            meshPartBuilder.rect(vertex6, vertex5, vertex8, vertex7);
        } else {
            meshPartBuilder.ensureRectangleIndices(6);
            meshPartBuilder.rect(vertex, vertex2, vertex3, vertex4);
            meshPartBuilder.rect(vertex6, vertex5, vertex8, vertex7);
            meshPartBuilder.rect(vertex, vertex4, vertex8, vertex5);
            meshPartBuilder.rect(vertex6, vertex7, vertex3, vertex2);
            meshPartBuilder.rect(vertex6, vertex2, vertex, vertex5);
            meshPartBuilder.rect(vertex3, vertex7, vertex8, vertex4);
        }
    }

    public static void build(MeshPartBuilder meshPartBuilder, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, Vector3 vector35, Vector3 vector36, Vector3 vector37, Vector3 vector38) {
        if ((meshPartBuilder.getAttributes().getMask() & 408) == 0) {
            build(meshPartBuilder, BaseShapeBuilder.f4927o.set(vector3, null, null, null), BaseShapeBuilder.f4928p.set(vector32, null, null, null), BaseShapeBuilder.f4929q.set(vector33, null, null, null), BaseShapeBuilder.f4930r.set(vector34, null, null, null), BaseShapeBuilder.f4931s.set(vector35, null, null, null), BaseShapeBuilder.f4932t.set(vector36, null, null, null), BaseShapeBuilder.f4933u.set(vector37, null, null, null), BaseShapeBuilder.f4934v.set(vector38, null, null, null));
            return;
        }
        meshPartBuilder.ensureVertices(24);
        meshPartBuilder.ensureRectangleIndices(6);
        Vector3 vector39 = BaseShapeBuilder.f4919g;
        Vector3 lerp = vector39.set(vector3).lerp(vector34, 0.5f);
        Vector3 vector310 = BaseShapeBuilder.f4920h;
        Vector3 nor = lerp.sub(vector310.set(vector35).lerp(vector38, 0.5f)).nor();
        meshPartBuilder.rect(vector3, vector32, vector34, vector33, nor);
        meshPartBuilder.rect(vector36, vector35, vector37, vector38, nor.scl(-1.0f));
        Vector3 nor2 = vector39.set(vector3).lerp(vector37, 0.5f).sub(vector310.set(vector32).lerp(vector38, 0.5f)).nor();
        meshPartBuilder.rect(vector35, vector3, vector33, vector37, nor2);
        meshPartBuilder.rect(vector32, vector36, vector38, vector34, nor2.scl(-1.0f));
        Vector3 nor3 = vector39.set(vector3).lerp(vector36, 0.5f).sub(vector310.set(vector33).lerp(vector38, 0.5f)).nor();
        meshPartBuilder.rect(vector35, vector36, vector32, vector3, nor3);
        meshPartBuilder.rect(vector33, vector34, vector38, vector37, nor3.scl(-1.0f));
    }

    public static void build(MeshPartBuilder meshPartBuilder, Matrix4 matrix4) {
        build(meshPartBuilder, BaseShapeBuilder.m24046c().set(-0.5f, -0.5f, -0.5f).mul(matrix4), BaseShapeBuilder.m24046c().set(-0.5f, 0.5f, -0.5f).mul(matrix4), BaseShapeBuilder.m24046c().set(0.5f, -0.5f, -0.5f).mul(matrix4), BaseShapeBuilder.m24046c().set(0.5f, 0.5f, -0.5f).mul(matrix4), BaseShapeBuilder.m24046c().set(-0.5f, -0.5f, 0.5f).mul(matrix4), BaseShapeBuilder.m24046c().set(-0.5f, 0.5f, 0.5f).mul(matrix4), BaseShapeBuilder.m24046c().set(0.5f, -0.5f, 0.5f).mul(matrix4), BaseShapeBuilder.m24046c().set(0.5f, 0.5f, 0.5f).mul(matrix4));
        BaseShapeBuilder.m24048a();
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3) {
        build(meshPartBuilder, 0.0f, 0.0f, 0.0f, f, f2, f3);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f4 * 0.5f;
        float f8 = f5 * 0.5f;
        float f9 = 0.5f * f6;
        float f10 = f - f7;
        float f11 = f2 - f8;
        float f12 = f3 - f9;
        float f13 = f + f7;
        float f14 = f2 + f8;
        float f15 = f3 + f9;
        build(meshPartBuilder, BaseShapeBuilder.m24046c().set(f10, f11, f12), BaseShapeBuilder.m24046c().set(f10, f14, f12), BaseShapeBuilder.m24046c().set(f13, f11, f12), BaseShapeBuilder.m24046c().set(f13, f14, f12), BaseShapeBuilder.m24046c().set(f10, f11, f15), BaseShapeBuilder.m24046c().set(f10, f14, f15), BaseShapeBuilder.m24046c().set(f13, f11, f15), BaseShapeBuilder.m24046c().set(f13, f14, f15));
        BaseShapeBuilder.m24048a();
    }
}
