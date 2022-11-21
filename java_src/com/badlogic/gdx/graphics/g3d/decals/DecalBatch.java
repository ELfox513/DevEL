package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.SortedIntList;
import com.prineside.tdi2.tiles.CoreTile;
import java.util.Iterator;
/* loaded from: classes.dex */
public class DecalBatch implements Disposable {

    /* renamed from: a */
    public float[] f4441a;

    /* renamed from: b */
    public Mesh f4442b;

    /* renamed from: d */
    public final SortedIntList<Array<Decal>> f4443d;

    /* renamed from: k */
    public GroupStrategy f4444k;

    /* renamed from: p */
    public final Pool<Array<Decal>> f4445p;

    /* renamed from: q */
    public final Array<Array<Decal>> f4446q;

    public DecalBatch(GroupStrategy groupStrategy) {
        this(CoreTile.FIXED_LEVEL_XP_REQUIREMENT, groupStrategy);
    }

    public int getSize() {
        return this.f4441a.length / 24;
    }

    public void setGroupStrategy(GroupStrategy groupStrategy) {
        this.f4444k = groupStrategy;
    }

    public DecalBatch(int i, GroupStrategy groupStrategy) {
        this.f4443d = new SortedIntList<>();
        this.f4445p = new Pool<Array<Decal>>(16) { // from class: com.badlogic.gdx.graphics.g3d.decals.DecalBatch.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public Array<Decal> newObject() {
                return new Array<>(false, 100);
            }
        };
        this.f4446q = new Array<>(16);
        initialize(i);
        setGroupStrategy(groupStrategy);
    }

    /* renamed from: a */
    public void m24146a() {
        this.f4443d.clear();
        this.f4445p.freeAll(this.f4446q);
        this.f4446q.clear();
    }

    public void add(Decal decal) {
        int decideGroup = this.f4444k.decideGroup(decal);
        Array<Decal> array = this.f4443d.get(decideGroup);
        if (array == null) {
            array = this.f4445p.obtain();
            array.clear();
            this.f4446q.add(array);
            this.f4443d.insert(decideGroup, array);
        }
        array.add(decal);
    }

    /* renamed from: b */
    public void m24145b(ShaderProgram shaderProgram, int i) {
        this.f4442b.setVertices(this.f4441a, 0, i);
        this.f4442b.render(shaderProgram, 4, 0, i / 4);
    }

    /* renamed from: c */
    public void m24144c() {
        this.f4444k.beforeGroups();
        Iterator<SortedIntList.Node<Array<Decal>>> it = this.f4443d.iterator();
        while (it.hasNext()) {
            SortedIntList.Node<Array<Decal>> next = it.next();
            this.f4444k.beforeGroup(next.index, next.value);
            m24143d(this.f4444k.getGroupShader(next.index), next.value);
            this.f4444k.afterGroup(next.index);
        }
        this.f4444k.afterGroups();
    }

    public void initialize(int i) {
        this.f4441a = new float[i * 24];
        Mesh.VertexDataType vertexDataType = Mesh.VertexDataType.VertexArray;
        if (Gdx.gl30 != null) {
            vertexDataType = Mesh.VertexDataType.VertexBufferObjectWithVAO;
        }
        int i2 = i * 4;
        int i3 = i * 6;
        int i4 = 0;
        this.f4442b = new Mesh(vertexDataType, false, i2, i3, new VertexAttribute(1, 3, ShaderProgram.POSITION_ATTRIBUTE), new VertexAttribute(4, 4, ShaderProgram.COLOR_ATTRIBUTE), new VertexAttribute(16, 2, "a_texCoord0"));
        short[] sArr = new short[i3];
        int i5 = 0;
        while (i4 < i3) {
            sArr[i4] = (short) i5;
            short s = (short) (i5 + 2);
            sArr[i4 + 1] = s;
            short s2 = (short) (i5 + 1);
            sArr[i4 + 2] = s2;
            sArr[i4 + 3] = s2;
            sArr[i4 + 4] = s;
            sArr[i4 + 5] = (short) (i5 + 3);
            i4 += 6;
            i5 += 4;
        }
        this.f4442b.setIndices(sArr);
    }

    /* renamed from: d */
    public final void m24143d(ShaderProgram shaderProgram, Array<Decal> array) {
        int i;
        Array.ArrayIterator<Decal> it = array.iterator();
        DecalMaterial decalMaterial = null;
        loop0: while (true) {
            i = 0;
            while (it.hasNext()) {
                Decal next = it.next();
                if (decalMaterial == null || !decalMaterial.equals(next.getMaterial())) {
                    if (i > 0) {
                        m24145b(shaderProgram, i);
                        i = 0;
                    }
                    next.f4439g.set();
                    decalMaterial = next.f4439g;
                }
                next.m24148c();
                float[] fArr = next.f4433a;
                System.arraycopy(fArr, 0, this.f4441a, i, fArr.length);
                i += next.f4433a.length;
                if (i == this.f4441a.length) {
                    break;
                }
            }
            m24145b(shaderProgram, i);
        }
        if (i > 0) {
            m24145b(shaderProgram, i);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        m24146a();
        this.f4441a = null;
        this.f4442b.dispose();
    }

    public void flush() {
        m24144c();
        m24146a();
    }
}
