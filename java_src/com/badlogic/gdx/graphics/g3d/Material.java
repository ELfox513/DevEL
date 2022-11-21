package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.utils.Array;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Material extends Attributes {

    /* renamed from: k */
    public static int f4366k;

    /* renamed from: id */
    public String f4367id;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Material() {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "mtl"
            r0.append(r1)
            int r1 = com.badlogic.gdx.graphics.g3d.Material.f4366k
            int r1 = r1 + 1
            com.badlogic.gdx.graphics.g3d.Material.f4366k = r1
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r2.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g3d.Material.<init>():void");
    }

    public Material copy() {
        return new Material(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attributes, java.util.Comparator
    public boolean equals(Object obj) {
        return (obj instanceof Material) && (obj == this || (((Material) obj).f4367id.equals(this.f4367id) && super.equals(obj)));
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attributes
    public int hashCode() {
        return super.hashCode() + (this.f4367id.hashCode() * 3);
    }

    public Material(String str) {
        this.f4367id = str;
    }

    public Material(Attribute... attributeArr) {
        this();
        set(attributeArr);
    }

    public Material(String str, Attribute... attributeArr) {
        this(str);
        set(attributeArr);
    }

    public Material(Array<Attribute> array) {
        this();
        set(array);
    }

    public Material(String str, Array<Attribute> array) {
        this(str);
        set(array);
    }

    public Material(Material material) {
        this(material.f4367id, material);
    }

    public Material(String str, Material material) {
        this(str);
        Iterator<Attribute> it = material.iterator();
        while (it.hasNext()) {
            set(it.next().copy());
        }
    }
}
