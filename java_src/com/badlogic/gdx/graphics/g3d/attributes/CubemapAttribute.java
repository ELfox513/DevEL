package com.badlogic.gdx.graphics.g3d.attributes;

import com.badlogic.gdx.graphics.Cubemap;
import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.graphics.g3d.utils.TextureDescriptor;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class CubemapAttribute extends Attribute {
    public static final long EnvironmentMap;
    public static final String EnvironmentMapAlias = "environmentCubemap";

    /* renamed from: d */
    public static long f4394d;
    public final TextureDescriptor<Cubemap> textureDescription;

    public CubemapAttribute(long j) {
        super(j);
        if (m24158is(j)) {
            this.textureDescription = new TextureDescriptor<>();
            return;
        }
        throw new GdxRuntimeException("Invalid type specified");
    }

    /* renamed from: is */
    public static final boolean m24158is(long j) {
        return (j & f4394d) != 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public Attribute copy() {
        return new CubemapAttribute(this);
    }

    static {
        long m24180d = Attribute.m24180d(EnvironmentMapAlias);
        EnvironmentMap = m24180d;
        f4394d = m24180d;
    }

    @Override // java.lang.Comparable
    public int compareTo(Attribute attribute) {
        long j = this.type;
        long j2 = attribute.type;
        return j != j2 ? (int) (j - j2) : this.textureDescription.compareTo(((CubemapAttribute) attribute).textureDescription);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public int hashCode() {
        return (super.hashCode() * 967) + this.textureDescription.hashCode();
    }

    public <T extends Cubemap> CubemapAttribute(long j, TextureDescriptor<T> textureDescriptor) {
        this(j);
        this.textureDescription.set(textureDescriptor);
    }

    public CubemapAttribute(long j, Cubemap cubemap) {
        this(j);
        this.textureDescription.texture = cubemap;
    }

    public CubemapAttribute(CubemapAttribute cubemapAttribute) {
        this(cubemapAttribute.type, cubemapAttribute.textureDescription);
    }
}
