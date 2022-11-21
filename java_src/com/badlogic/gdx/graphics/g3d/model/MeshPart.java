package com.badlogic.gdx.graphics.g3d.model;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
/* loaded from: classes.dex */
public class MeshPart {

    /* renamed from: a */
    public static final BoundingBox f4486a = new BoundingBox();

    /* renamed from: id */
    public String f4487id;
    public Mesh mesh;
    public int offset;
    public int primitiveType;
    public int size;
    public final Vector3 center = new Vector3();
    public final Vector3 halfExtents = new Vector3();
    public float radius = -1.0f;

    public MeshPart() {
    }

    public boolean equals(MeshPart meshPart) {
        return meshPart == this || (meshPart != null && meshPart.mesh == this.mesh && meshPart.primitiveType == this.primitiveType && meshPart.offset == this.offset && meshPart.size == this.size);
    }

    public void render(ShaderProgram shaderProgram, boolean z) {
        this.mesh.render(shaderProgram, this.primitiveType, this.offset, this.size, z);
    }

    public MeshPart set(MeshPart meshPart) {
        this.f4487id = meshPart.f4487id;
        this.mesh = meshPart.mesh;
        this.offset = meshPart.offset;
        this.size = meshPart.size;
        this.primitiveType = meshPart.primitiveType;
        this.center.set(meshPart.center);
        this.halfExtents.set(meshPart.halfExtents);
        this.radius = meshPart.radius;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof MeshPart) {
            return equals((MeshPart) obj);
        }
        return false;
    }

    public void render(ShaderProgram shaderProgram) {
        this.mesh.render(shaderProgram, this.primitiveType, this.offset, this.size);
    }

    public void update() {
        Mesh mesh = this.mesh;
        BoundingBox boundingBox = f4486a;
        mesh.calculateBoundingBox(boundingBox, this.offset, this.size);
        boundingBox.getCenter(this.center);
        boundingBox.getDimensions(this.halfExtents).scl(0.5f);
        this.radius = this.halfExtents.len();
    }

    public MeshPart(String str, Mesh mesh, int i, int i2, int i3) {
        set(str, mesh, i, i2, i3);
    }

    public MeshPart set(String str, Mesh mesh, int i, int i2, int i3) {
        this.f4487id = str;
        this.mesh = mesh;
        this.offset = i;
        this.size = i2;
        this.primitiveType = i3;
        this.center.set(0.0f, 0.0f, 0.0f);
        this.halfExtents.set(0.0f, 0.0f, 0.0f);
        this.radius = -1.0f;
        return this;
    }

    public MeshPart(MeshPart meshPart) {
        set(meshPart);
    }
}
