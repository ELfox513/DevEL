package com.badlogic.gdx.graphics.g3d.model;

import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.ArrayMap;
/* loaded from: classes.dex */
public class NodePart {
    public Matrix4[] bones;
    public boolean enabled = true;
    public ArrayMap<Node, Matrix4> invBoneBindTransforms;
    public Material material;
    public MeshPart meshPart;

    public NodePart() {
    }

    public NodePart copy() {
        return new NodePart().m24124a(this);
    }

    /* renamed from: a */
    public NodePart m24124a(NodePart nodePart) {
        this.meshPart = new MeshPart(nodePart.meshPart);
        this.material = nodePart.material;
        this.enabled = nodePart.enabled;
        ArrayMap<Node, Matrix4> arrayMap = nodePart.invBoneBindTransforms;
        if (arrayMap == null) {
            this.invBoneBindTransforms = null;
            this.bones = null;
        } else {
            ArrayMap<Node, Matrix4> arrayMap2 = this.invBoneBindTransforms;
            if (arrayMap2 == null) {
                this.invBoneBindTransforms = new ArrayMap<>(true, arrayMap.size, Node.class, Matrix4.class);
            } else {
                arrayMap2.clear();
            }
            this.invBoneBindTransforms.putAll(nodePart.invBoneBindTransforms);
            Matrix4[] matrix4Arr = this.bones;
            if (matrix4Arr == null || matrix4Arr.length != this.invBoneBindTransforms.size) {
                this.bones = new Matrix4[this.invBoneBindTransforms.size];
            }
            int i = 0;
            while (true) {
                Matrix4[] matrix4Arr2 = this.bones;
                if (i >= matrix4Arr2.length) {
                    break;
                }
                if (matrix4Arr2[i] == null) {
                    matrix4Arr2[i] = new Matrix4();
                }
                i++;
            }
        }
        return this;
    }

    public Renderable setRenderable(Renderable renderable) {
        renderable.material = this.material;
        renderable.meshPart.set(this.meshPart);
        renderable.bones = this.bones;
        return renderable;
    }

    public NodePart(MeshPart meshPart, Material material) {
        this.meshPart = meshPart;
        this.material = material;
    }
}
