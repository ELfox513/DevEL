package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import java.util.Comparator;
/* loaded from: classes.dex */
public class DefaultRenderableSorter implements RenderableSorter, Comparator<Renderable> {

    /* renamed from: a */
    public Camera f4831a;

    /* renamed from: b */
    public final Vector3 f4832b = new Vector3();

    /* renamed from: d */
    public final Vector3 f4833d = new Vector3();

    @Override // java.util.Comparator
    public int compare(Renderable renderable, Renderable renderable2) {
        Material material = renderable.material;
        long j = BlendingAttribute.Type;
        int i = 0;
        boolean z = material.has(j) && ((BlendingAttribute) renderable.material.get(j)).blended;
        if (z != (renderable2.material.has(j) && ((BlendingAttribute) renderable2.material.get(j)).blended)) {
            return z ? 1 : -1;
        }
        m24062a(renderable.worldTransform, renderable.meshPart.center, this.f4832b);
        m24062a(renderable2.worldTransform, renderable2.meshPart.center, this.f4833d);
        float dst2 = ((int) (this.f4831a.position.dst2(this.f4832b) * 1000.0f)) - ((int) (this.f4831a.position.dst2(this.f4833d) * 1000.0f));
        if (dst2 < 0.0f) {
            i = -1;
        } else if (dst2 > 0.0f) {
            i = 1;
        }
        return z ? -i : i;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.RenderableSorter
    public void sort(Camera camera, Array<Renderable> array) {
        this.f4831a = camera;
        array.sort(this);
    }

    /* renamed from: a */
    public final Vector3 m24062a(Matrix4 matrix4, Vector3 vector3, Vector3 vector32) {
        if (vector3.isZero()) {
            matrix4.getTranslation(vector32);
        } else if (!matrix4.hasRotationOrScaling()) {
            matrix4.getTranslation(vector32).add(vector3);
        } else {
            vector32.set(vector3).mul(matrix4);
        }
        return vector32;
    }
}
