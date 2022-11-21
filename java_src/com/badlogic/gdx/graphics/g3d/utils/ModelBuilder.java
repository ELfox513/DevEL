package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.model.MeshPart;
import com.badlogic.gdx.graphics.g3d.model.Node;
import com.badlogic.gdx.graphics.g3d.model.NodePart;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class ModelBuilder {

    /* renamed from: a */
    public Model f4891a;

    /* renamed from: b */
    public Node f4892b;

    /* renamed from: c */
    public Array<MeshBuilder> f4893c = new Array<>();

    /* renamed from: d */
    public Matrix4 f4894d = new Matrix4();

    public Model createArrow(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i, int i2, Material material, long j) {
        begin();
        part("arrow", i2, j, material).arrow(f, f2, f3, f4, f5, f6, f7, f8, i);
        return end();
    }

    public Model createBox(float f, float f2, float f3, Material material, long j) {
        return createBox(f, f2, f3, 4, material, j);
    }

    public Model createCapsule(float f, float f2, int i, Material material, long j) {
        return createCapsule(f, f2, i, 4, material, j);
    }

    public Model createCone(float f, float f2, float f3, int i, Material material, long j) {
        return createCone(f, f2, f3, i, 4, material, j);
    }

    public Model createCylinder(float f, float f2, float f3, int i, Material material, long j) {
        return createCylinder(f, f2, f3, i, 4, material, j);
    }

    public Model createRect(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, Material material, long j) {
        return createRect(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, 4, material, j);
    }

    public Model createSphere(float f, float f2, float f3, int i, int i2, Material material, long j) {
        return createSphere(f, f2, f3, i, i2, 4, material, j);
    }

    public Model createXYZCoordinates(float f, float f2, float f3, int i, int i2, Material material, long j) {
        begin();
        node();
        MeshPartBuilder part = part("xyz", i2, j, material);
        part.setColor(Color.RED);
        part.arrow(0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, f2, f3, i);
        part.setColor(Color.GREEN);
        part.arrow(0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, f2, f3, i);
        part.setColor(Color.BLUE);
        part.arrow(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, f2, f3, i);
        return end();
    }

    public Node node() {
        Node node = new Node();
        m24050c(node);
        node.f4490id = "node" + this.f4891a.nodes.size;
        return node;
    }

    public void part(MeshPart meshPart, Material material) {
        if (this.f4892b == null) {
            node();
        }
        this.f4892b.parts.add(new NodePart(meshPart, material));
    }

    /* renamed from: d */
    public static void m24049d(Model model, Node node) {
        Array.ArrayIterator<NodePart> it = node.parts.iterator();
        while (it.hasNext()) {
            NodePart next = it.next();
            if (!model.materials.contains(next.material, true)) {
                model.materials.add(next.material);
            }
            if (!model.meshParts.contains(next.meshPart, true)) {
                model.meshParts.add(next.meshPart);
                if (!model.meshes.contains(next.meshPart.mesh, true)) {
                    model.meshes.add(next.meshPart.mesh);
                }
                model.manageDisposable(next.meshPart.mesh);
            }
        }
        for (Node node2 : node.getChildren()) {
            m24049d(model, node2);
        }
    }

    public static void rebuildReferences(Model model) {
        model.materials.clear();
        model.meshes.clear();
        model.meshParts.clear();
        Array.ArrayIterator<Node> it = model.nodes.iterator();
        while (it.hasNext()) {
            m24049d(model, it.next());
        }
    }

    /* renamed from: a */
    public final void m24052a() {
        if (this.f4892b != null) {
            this.f4892b = null;
        }
    }

    /* renamed from: b */
    public final MeshBuilder m24051b(VertexAttributes vertexAttributes) {
        Array.ArrayIterator<MeshBuilder> it = this.f4893c.iterator();
        while (it.hasNext()) {
            MeshBuilder next = it.next();
            if (next.getAttributes().equals(vertexAttributes) && next.lastIndex() < 16383) {
                return next;
            }
        }
        MeshBuilder meshBuilder = new MeshBuilder();
        meshBuilder.begin(vertexAttributes);
        this.f4893c.add(meshBuilder);
        return meshBuilder;
    }

    public void begin() {
        if (this.f4891a == null) {
            this.f4892b = null;
            this.f4891a = new Model();
            this.f4893c.clear();
            return;
        }
        throw new GdxRuntimeException("Call end() first");
    }

    /* renamed from: c */
    public Node m24050c(Node node) {
        if (this.f4891a != null) {
            m24052a();
            this.f4891a.nodes.add(node);
            this.f4892b = node;
            return node;
        }
        throw new GdxRuntimeException("Call begin() first");
    }

    public Model createBox(float f, float f2, float f3, int i, Material material, long j) {
        begin();
        part("box", i, j, material).box(f, f2, f3);
        return end();
    }

    public Model createCapsule(float f, float f2, int i, int i2, Material material, long j) {
        begin();
        part("capsule", i2, j, material).capsule(f, f2, i);
        return end();
    }

    public Model createCone(float f, float f2, float f3, int i, int i2, Material material, long j) {
        return createCone(f, f2, f3, i, i2, material, j, 0.0f, 360.0f);
    }

    public Model createCylinder(float f, float f2, float f3, int i, int i2, Material material, long j) {
        return createCylinder(f, f2, f3, i, i2, material, j, 0.0f, 360.0f);
    }

    public Model createLineGrid(int i, int i2, float f, float f2, Material material, long j) {
        begin();
        MeshPartBuilder part = part("lines", 1, j, material);
        float f3 = (i * f) / 2.0f;
        float f4 = (i2 * f2) / 2.0f;
        float f5 = -f3;
        float f6 = -f4;
        float f7 = f5;
        float f8 = f7;
        for (int i3 = 0; i3 <= i; i3++) {
            part.line(f7, 0.0f, f4, f8, 0.0f, f6);
            f7 += f;
            f8 += f;
        }
        float f9 = f6;
        for (int i4 = 0; i4 <= i2; i4++) {
            part.line(f5, 0.0f, f6, f3, 0.0f, f9);
            f6 += f2;
            f9 += f2;
        }
        return end();
    }

    public Model createRect(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, int i, Material material, long j) {
        begin();
        part("rect", i, j, material).rect(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15);
        return end();
    }

    public Model createSphere(float f, float f2, float f3, int i, int i2, int i3, Material material, long j) {
        return createSphere(f, f2, f3, i, i2, i3, material, j, 0.0f, 360.0f, 0.0f, 180.0f);
    }

    public Model end() {
        Model model = this.f4891a;
        if (model != null) {
            m24052a();
            this.f4891a = null;
            Array.ArrayIterator<MeshBuilder> it = this.f4893c.iterator();
            while (it.hasNext()) {
                it.next().end();
            }
            this.f4893c.clear();
            rebuildReferences(model);
            return model;
        }
        throw new GdxRuntimeException("Call begin() first");
    }

    public void manage(Disposable disposable) {
        Model model = this.f4891a;
        if (model != null) {
            model.manageDisposable(disposable);
            return;
        }
        throw new GdxRuntimeException("Call begin() first");
    }

    public Model createCone(float f, float f2, float f3, int i, Material material, long j, float f4, float f5) {
        return createCone(f, f2, f3, i, 4, material, j, f4, f5);
    }

    public Model createCylinder(float f, float f2, float f3, int i, Material material, long j, float f4, float f5) {
        return createCylinder(f, f2, f3, i, 4, material, j, f4, f5);
    }

    public Model createSphere(float f, float f2, float f3, int i, int i2, Material material, long j, float f4, float f5, float f6, float f7) {
        return createSphere(f, f2, f3, i, i2, 4, material, j, f4, f5, f6, f7);
    }

    public MeshPart part(String str, Mesh mesh, int i, int i2, int i3, Material material) {
        MeshPart meshPart = new MeshPart();
        meshPart.f4487id = str;
        meshPart.primitiveType = i;
        meshPart.mesh = mesh;
        meshPart.offset = i2;
        meshPart.size = i3;
        part(meshPart, material);
        return meshPart;
    }

    public Model createArrow(Vector3 vector3, Vector3 vector32, Material material, long j) {
        return createArrow(vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, 0.1f, 0.1f, 5, 4, material, j);
    }

    public Model createCone(float f, float f2, float f3, int i, int i2, Material material, long j, float f4, float f5) {
        begin();
        part("cone", i2, j, material).cone(f, f2, f3, i, f4, f5);
        return end();
    }

    public Model createCylinder(float f, float f2, float f3, int i, int i2, Material material, long j, float f4, float f5) {
        begin();
        part("cylinder", i2, j, material).cylinder(f, f2, f3, i, f4, f5);
        return end();
    }

    public Model createSphere(float f, float f2, float f3, int i, int i2, int i3, Material material, long j, float f4, float f5, float f6, float f7) {
        begin();
        part("sphere", i3, j, material).sphere(f, f2, f3, i, i2, f4, f5, f6, f7);
        return end();
    }

    public Node node(String str, Model model) {
        Node node = new Node();
        node.f4490id = str;
        node.addChildren(model.nodes);
        m24050c(node);
        for (Disposable disposable : model.getManagedDisposables()) {
            manage(disposable);
        }
        return node;
    }

    public MeshPart part(String str, Mesh mesh, int i, Material material) {
        return part(str, mesh, i, 0, mesh.getNumIndices(), material);
    }

    public Model createXYZCoordinates(float f, Material material, long j) {
        return createXYZCoordinates(f, 0.1f, 0.1f, 5, 4, material, j);
    }

    public MeshPartBuilder part(String str, int i, VertexAttributes vertexAttributes, Material material) {
        MeshBuilder m24051b = m24051b(vertexAttributes);
        part(m24051b.part(str, i), material);
        return m24051b;
    }

    public MeshPartBuilder part(String str, int i, long j, Material material) {
        return part(str, i, MeshBuilder.createAttributes(j), material);
    }
}
