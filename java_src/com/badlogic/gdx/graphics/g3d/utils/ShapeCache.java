package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.RenderableProvider;
import com.badlogic.gdx.graphics.g3d.model.MeshPart;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class ShapeCache implements Disposable, RenderableProvider {

    /* renamed from: a */
    public final MeshBuilder f4903a;

    /* renamed from: b */
    public final Mesh f4904b;

    /* renamed from: d */
    public boolean f4905d;

    /* renamed from: k */
    public final String f4906k;

    /* renamed from: p */
    public final Renderable f4907p;

    public ShapeCache() {
        this(5000, 5000, new VertexAttributes(new VertexAttribute(1, 3, ShaderProgram.POSITION_ATTRIBUTE), new VertexAttribute(4, 4, ShaderProgram.COLOR_ATTRIBUTE)), 1);
    }

    public MeshPartBuilder begin() {
        return begin(1);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f4904b.dispose();
    }

    public Material getMaterial() {
        return this.f4907p.material;
    }

    @Override // com.badlogic.gdx.graphics.g3d.RenderableProvider
    public void getRenderables(Array<Renderable> array, Pool<Renderable> pool) {
        array.add(this.f4907p);
    }

    public Matrix4 getWorldTransform() {
        return this.f4907p.worldTransform;
    }

    public ShapeCache(int i, int i2, VertexAttributes vertexAttributes, int i3) {
        this.f4906k = "id";
        Renderable renderable = new Renderable();
        this.f4907p = renderable;
        Mesh mesh = new Mesh(false, i, i2, vertexAttributes);
        this.f4904b = mesh;
        this.f4903a = new MeshBuilder();
        MeshPart meshPart = renderable.meshPart;
        meshPart.mesh = mesh;
        meshPart.primitiveType = i3;
        renderable.material = new Material();
    }

    public MeshPartBuilder begin(int i) {
        if (!this.f4905d) {
            this.f4905d = true;
            this.f4903a.begin(this.f4904b.getVertexAttributes());
            this.f4903a.part("id", i, this.f4907p.meshPart);
            return this.f4903a;
        }
        throw new GdxRuntimeException("Call end() after calling begin()");
    }

    public void end() {
        if (this.f4905d) {
            this.f4905d = false;
            this.f4903a.end(this.f4904b);
            return;
        }
        throw new GdxRuntimeException("Call begin() prior to calling end()");
    }
}
