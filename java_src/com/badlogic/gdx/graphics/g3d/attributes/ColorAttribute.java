package com.badlogic.gdx.graphics.g3d.attributes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class ColorAttribute extends Attribute {
    public static final long Ambient;
    public static final String AmbientAlias = "ambientColor";
    public static final long AmbientLight;
    public static final String AmbientLightAlias = "ambientLightColor";
    public static final long Diffuse;
    public static final String DiffuseAlias = "diffuseColor";
    public static final long Emissive;
    public static final String EmissiveAlias = "emissiveColor";
    public static final long Fog;
    public static final String FogAlias = "fogColor";
    public static final long Reflection;
    public static final String ReflectionAlias = "reflectionColor";
    public static final long Specular;
    public static final String SpecularAlias = "specularColor";

    /* renamed from: d */
    public static long f4393d;
    public final Color color;

    public ColorAttribute(long j) {
        super(j);
        this.color = new Color();
        if (!m24159is(j)) {
            throw new GdxRuntimeException("Invalid type specified");
        }
    }

    public static final ColorAttribute createAmbient(Color color) {
        return new ColorAttribute(Ambient, color);
    }

    public static final ColorAttribute createAmbientLight(Color color) {
        return new ColorAttribute(AmbientLight, color);
    }

    public static final ColorAttribute createDiffuse(Color color) {
        return new ColorAttribute(Diffuse, color);
    }

    public static final ColorAttribute createEmissive(Color color) {
        return new ColorAttribute(Emissive, color);
    }

    public static final ColorAttribute createFog(Color color) {
        return new ColorAttribute(Fog, color);
    }

    public static final ColorAttribute createReflection(Color color) {
        return new ColorAttribute(Reflection, color);
    }

    public static final ColorAttribute createSpecular(Color color) {
        return new ColorAttribute(Specular, color);
    }

    /* renamed from: is */
    public static final boolean m24159is(long j) {
        return (j & f4393d) != 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public Attribute copy() {
        return new ColorAttribute(this);
    }

    static {
        long m24180d = Attribute.m24180d(DiffuseAlias);
        Diffuse = m24180d;
        long m24180d2 = Attribute.m24180d(SpecularAlias);
        Specular = m24180d2;
        long m24180d3 = Attribute.m24180d(AmbientAlias);
        Ambient = m24180d3;
        long m24180d4 = Attribute.m24180d(EmissiveAlias);
        Emissive = m24180d4;
        long m24180d5 = Attribute.m24180d(ReflectionAlias);
        Reflection = m24180d5;
        long m24180d6 = Attribute.m24180d(AmbientLightAlias);
        AmbientLight = m24180d6;
        long m24180d7 = Attribute.m24180d(FogAlias);
        Fog = m24180d7;
        f4393d = m24180d | m24180d3 | m24180d2 | m24180d4 | m24180d5 | m24180d6 | m24180d7;
    }

    public static final ColorAttribute createAmbient(float f, float f2, float f3, float f4) {
        return new ColorAttribute(Ambient, f, f2, f3, f4);
    }

    public static final ColorAttribute createAmbientLight(float f, float f2, float f3, float f4) {
        return new ColorAttribute(AmbientLight, f, f2, f3, f4);
    }

    public static final ColorAttribute createDiffuse(float f, float f2, float f3, float f4) {
        return new ColorAttribute(Diffuse, f, f2, f3, f4);
    }

    public static final ColorAttribute createEmissive(float f, float f2, float f3, float f4) {
        return new ColorAttribute(Emissive, f, f2, f3, f4);
    }

    public static final ColorAttribute createFog(float f, float f2, float f3, float f4) {
        return new ColorAttribute(Fog, f, f2, f3, f4);
    }

    public static final ColorAttribute createReflection(float f, float f2, float f3, float f4) {
        return new ColorAttribute(Reflection, f, f2, f3, f4);
    }

    public static final ColorAttribute createSpecular(float f, float f2, float f3, float f4) {
        return new ColorAttribute(Specular, f, f2, f3, f4);
    }

    @Override // java.lang.Comparable
    public int compareTo(Attribute attribute) {
        long j = this.type;
        long j2 = attribute.type;
        return j != j2 ? (int) (j - j2) : ((ColorAttribute) attribute).color.toIntBits() - this.color.toIntBits();
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public int hashCode() {
        return (super.hashCode() * 953) + this.color.toIntBits();
    }

    public ColorAttribute(long j, Color color) {
        this(j);
        if (color != null) {
            this.color.set(color);
        }
    }

    public ColorAttribute(long j, float f, float f2, float f3, float f4) {
        this(j);
        this.color.set(f, f2, f3, f4);
    }

    public ColorAttribute(ColorAttribute colorAttribute) {
        this(colorAttribute.type, colorAttribute.color);
    }
}
