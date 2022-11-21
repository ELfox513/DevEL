package com.badlogic.gdx.graphics.g3d.model.data;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class ModelData {

    /* renamed from: id */
    public String f4492id;
    public final short[] version = new short[2];
    public final Array<ModelMesh> meshes = new Array<>();
    public final Array<ModelMaterial> materials = new Array<>();
    public final Array<ModelNode> nodes = new Array<>();
    public final Array<ModelAnimation> animations = new Array<>();

    public void addMesh(ModelMesh modelMesh) {
        Array.ArrayIterator<ModelMesh> it = this.meshes.iterator();
        while (it.hasNext()) {
            ModelMesh next = it.next();
            if (next.f4495id.equals(modelMesh.f4495id)) {
                throw new GdxRuntimeException("Mesh with id '" + next.f4495id + "' already in model");
            }
        }
        this.meshes.add(modelMesh);
    }
}
