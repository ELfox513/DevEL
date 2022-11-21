package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.model.MeshPart;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import com.badlogic.gdx.graphics.g3d.utils.RenderableSorter;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.FlushablePool;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Pool;
import java.util.Comparator;
/* loaded from: classes.dex */
public class ModelCache implements Disposable, RenderableProvider {

    /* renamed from: a */
    public Array<Renderable> f4377a;

    /* renamed from: b */
    public FlushablePool<Renderable> f4378b;

    /* renamed from: d */
    public FlushablePool<MeshPart> f4379d;

    /* renamed from: k */
    public Array<Renderable> f4380k;

    /* renamed from: p */
    public Array<Renderable> f4381p;

    /* renamed from: q */
    public MeshBuilder f4382q;

    /* renamed from: r */
    public boolean f4383r;

    /* renamed from: s */
    public RenderableSorter f4384s;

    /* renamed from: t */
    public MeshPool f4385t;

    /* renamed from: u */
    public Camera f4386u;

    /* loaded from: classes.dex */
    public interface MeshPool extends Disposable {
        void flush();

        Mesh obtain(VertexAttributes vertexAttributes, int i, int i2);
    }

    /* loaded from: classes.dex */
    public static class SimpleMeshPool implements MeshPool {

        /* renamed from: a */
        public Array<Mesh> f4389a = new Array<>();

        /* renamed from: b */
        public Array<Mesh> f4390b = new Array<>();

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
            Array.ArrayIterator<Mesh> it = this.f4390b.iterator();
            while (it.hasNext()) {
                it.next().dispose();
            }
            this.f4390b.clear();
            Array.ArrayIterator<Mesh> it2 = this.f4389a.iterator();
            while (it2.hasNext()) {
                it2.next().dispose();
            }
            this.f4389a.clear();
        }

        @Override // com.badlogic.gdx.graphics.g3d.ModelCache.MeshPool
        public void flush() {
            this.f4389a.addAll(this.f4390b);
            this.f4390b.clear();
        }

        @Override // com.badlogic.gdx.graphics.g3d.ModelCache.MeshPool
        public Mesh obtain(VertexAttributes vertexAttributes, int i, int i2) {
            int i3 = this.f4389a.size;
            for (int i4 = 0; i4 < i3; i4++) {
                Mesh mesh = this.f4389a.get(i4);
                if (mesh.getVertexAttributes().equals(vertexAttributes) && mesh.getMaxVertices() >= i && mesh.getMaxIndices() >= i2) {
                    this.f4389a.removeIndex(i4);
                    this.f4390b.add(mesh);
                    return mesh;
                }
            }
            Mesh mesh2 = new Mesh(false, 65536, Math.max(65536, 1 << (32 - Integer.numberOfLeadingZeros(i2 - 1))), vertexAttributes);
            this.f4390b.add(mesh2);
            return mesh2;
        }
    }

    /* loaded from: classes.dex */
    public static class Sorter implements RenderableSorter, Comparator<Renderable> {
        @Override // com.badlogic.gdx.graphics.g3d.utils.RenderableSorter
        public void sort(Camera camera, Array<Renderable> array) {
            array.sort(this);
        }

        @Override // java.util.Comparator
        public int compare(Renderable renderable, Renderable renderable2) {
            int compareTo = renderable.meshPart.mesh.getVertexAttributes().compareTo(renderable2.meshPart.mesh.getVertexAttributes());
            return (compareTo == 0 && (compareTo = renderable.material.compareTo((Attributes) renderable2.material)) == 0) ? renderable.meshPart.primitiveType - renderable2.meshPart.primitiveType : compareTo;
        }
    }

    /* loaded from: classes.dex */
    public static class TightMeshPool implements MeshPool {

        /* renamed from: a */
        public Array<Mesh> f4391a = new Array<>();

        /* renamed from: b */
        public Array<Mesh> f4392b = new Array<>();

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
            Array.ArrayIterator<Mesh> it = this.f4392b.iterator();
            while (it.hasNext()) {
                it.next().dispose();
            }
            this.f4392b.clear();
            Array.ArrayIterator<Mesh> it2 = this.f4391a.iterator();
            while (it2.hasNext()) {
                it2.next().dispose();
            }
            this.f4391a.clear();
        }

        @Override // com.badlogic.gdx.graphics.g3d.ModelCache.MeshPool
        public void flush() {
            this.f4391a.addAll(this.f4392b);
            this.f4392b.clear();
        }

        @Override // com.badlogic.gdx.graphics.g3d.ModelCache.MeshPool
        public Mesh obtain(VertexAttributes vertexAttributes, int i, int i2) {
            int i3 = this.f4391a.size;
            for (int i4 = 0; i4 < i3; i4++) {
                Mesh mesh = this.f4391a.get(i4);
                if (mesh.getVertexAttributes().equals(vertexAttributes) && mesh.getMaxVertices() == i && mesh.getMaxIndices() == i2) {
                    this.f4391a.removeIndex(i4);
                    this.f4392b.add(mesh);
                    return mesh;
                }
            }
            Mesh mesh2 = new Mesh(true, i, i2, vertexAttributes);
            this.f4392b.add(mesh2);
            return mesh2;
        }
    }

    public ModelCache() {
        this(new Sorter(), new SimpleMeshPool());
    }

    public void add(Renderable renderable) {
        if (this.f4383r) {
            if (renderable.bones == null) {
                this.f4380k.add(renderable);
                return;
            } else {
                this.f4377a.add(renderable);
                return;
            }
        }
        throw new GdxRuntimeException("Can only add items to the ModelCache in between .begin() and .end()");
    }

    public void begin() {
        begin(null);
    }

    public ModelCache(RenderableSorter renderableSorter, MeshPool meshPool) {
        this.f4377a = new Array<>();
        this.f4378b = new FlushablePool<Renderable>() { // from class: com.badlogic.gdx.graphics.g3d.ModelCache.1
            @Override // com.badlogic.gdx.utils.Pool
            public Renderable newObject() {
                return new Renderable();
            }
        };
        this.f4379d = new FlushablePool<MeshPart>() { // from class: com.badlogic.gdx.graphics.g3d.ModelCache.2
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public MeshPart newObject() {
                return new MeshPart();
            }
        };
        this.f4380k = new Array<>();
        this.f4381p = new Array<>();
        this.f4384s = renderableSorter;
        this.f4385t = meshPool;
        this.f4382q = new MeshBuilder();
    }

    /* renamed from: a */
    public final Renderable m24168a(Material material, int i) {
        Renderable obtain = this.f4378b.obtain();
        obtain.bones = null;
        obtain.environment = null;
        obtain.material = material;
        MeshPart meshPart = obtain.meshPart;
        meshPart.mesh = null;
        meshPart.offset = 0;
        meshPart.size = 0;
        meshPart.primitiveType = i;
        meshPart.center.set(0.0f, 0.0f, 0.0f);
        obtain.meshPart.halfExtents.set(0.0f, 0.0f, 0.0f);
        obtain.meshPart.radius = -1.0f;
        obtain.shader = null;
        obtain.userData = null;
        obtain.worldTransform.idt();
        return obtain;
    }

    public void begin(Camera camera) {
        if (!this.f4383r) {
            this.f4383r = true;
            this.f4386u = camera;
            this.f4378b.flush();
            this.f4377a.clear();
            this.f4380k.clear();
            this.f4379d.flush();
            this.f4385t.flush();
            return;
        }
        throw new GdxRuntimeException("Call end() after calling begin()");
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (!this.f4383r) {
            this.f4385t.dispose();
            return;
        }
        throw new GdxRuntimeException("Cannot dispose a ModelCache in between .begin() and .end()");
    }

    public void end() {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        boolean z4;
        if (this.f4383r) {
            this.f4383r = false;
            Array<Renderable> array = this.f4380k;
            if (array.size == 0) {
                return;
            }
            this.f4384s.sort(this.f4386u, array);
            Array<Renderable> array2 = this.f4380k;
            int i2 = array2.size;
            int i3 = this.f4377a.size;
            Renderable renderable = array2.get(0);
            VertexAttributes vertexAttributes = renderable.meshPart.mesh.getVertexAttributes();
            Material material = renderable.material;
            int i4 = renderable.meshPart.primitiveType;
            int i5 = this.f4377a.size;
            this.f4382q.begin(vertexAttributes);
            MeshPart part = this.f4382q.part("", i4, this.f4379d.obtain());
            this.f4377a.add(m24168a(material, i4));
            int i6 = this.f4380k.size;
            for (int i7 = 0; i7 < i6; i7++) {
                Renderable renderable2 = this.f4380k.get(i7);
                VertexAttributes vertexAttributes2 = renderable2.meshPart.mesh.getVertexAttributes();
                Material material2 = renderable2.material;
                int i8 = renderable2.meshPart.primitiveType;
                boolean equals = vertexAttributes2.equals(vertexAttributes);
                if (renderable2.meshPart.mesh.getNumIndices() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i = renderable2.meshPart.mesh.getNumVertices();
                } else {
                    i = renderable2.meshPart.size;
                }
                if (this.f4382q.getNumVertices() + i <= 65536) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (equals && z2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && i8 == i4 && material2.same(material, true)) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (!z4) {
                    if (!z3) {
                        MeshBuilder meshBuilder = this.f4382q;
                        Mesh end = meshBuilder.end(this.f4385t.obtain(vertexAttributes, meshBuilder.getNumVertices(), this.f4382q.getNumIndices()));
                        while (true) {
                            Array<Renderable> array3 = this.f4377a;
                            if (i5 >= array3.size) {
                                break;
                            }
                            array3.get(i5).meshPart.mesh = end;
                            i5++;
                        }
                        this.f4382q.begin(vertexAttributes2);
                        vertexAttributes = vertexAttributes2;
                    }
                    MeshPart part2 = this.f4382q.part("", i8, this.f4379d.obtain());
                    Array<Renderable> array4 = this.f4377a;
                    MeshPart meshPart = array4.get(array4.size - 1).meshPart;
                    meshPart.offset = part.offset;
                    meshPart.size = part.size;
                    this.f4377a.add(m24168a(material2, i8));
                    part = part2;
                    material = material2;
                    i4 = i8;
                }
                this.f4382q.setVertexTransform(renderable2.worldTransform);
                MeshBuilder meshBuilder2 = this.f4382q;
                MeshPart meshPart2 = renderable2.meshPart;
                meshBuilder2.addMesh(meshPart2.mesh, meshPart2.offset, meshPart2.size);
            }
            MeshBuilder meshBuilder3 = this.f4382q;
            Mesh end2 = meshBuilder3.end(this.f4385t.obtain(vertexAttributes, meshBuilder3.getNumVertices(), this.f4382q.getNumIndices()));
            while (true) {
                Array<Renderable> array5 = this.f4377a;
                int i9 = array5.size;
                if (i5 < i9) {
                    array5.get(i5).meshPart.mesh = end2;
                    i5++;
                } else {
                    MeshPart meshPart3 = array5.get(i9 - 1).meshPart;
                    meshPart3.offset = part.offset;
                    meshPart3.size = part.size;
                    return;
                }
            }
        } else {
            throw new GdxRuntimeException("Call begin() prior to calling end()");
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.RenderableProvider
    public void getRenderables(Array<Renderable> array, Pool<Renderable> pool) {
        if (!this.f4383r) {
            Array.ArrayIterator<Renderable> it = this.f4377a.iterator();
            while (it.hasNext()) {
                Renderable next = it.next();
                next.shader = null;
                next.environment = null;
            }
            array.addAll(this.f4377a);
            return;
        }
        throw new GdxRuntimeException("Cannot render a ModelCache in between .begin() and .end()");
    }

    public void add(RenderableProvider renderableProvider) {
        renderableProvider.getRenderables(this.f4381p, this.f4378b);
        int i = this.f4381p.size;
        for (int i2 = 0; i2 < i; i2++) {
            add(this.f4381p.get(i2));
        }
        this.f4381p.clear();
    }

    public <T extends RenderableProvider> void add(Iterable<T> iterable) {
        for (T t : iterable) {
            add(t);
        }
    }
}
