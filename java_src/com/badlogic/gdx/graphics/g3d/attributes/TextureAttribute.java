package com.badlogic.gdx.graphics.g3d.attributes;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.graphics.g3d.utils.TextureDescriptor;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.NumberUtils;
/* loaded from: classes.dex */
public class TextureAttribute extends Attribute {
    public static final long Ambient;
    public static final String AmbientAlias = "ambientTexture";
    public static final long Bump;
    public static final String BumpAlias = "bumpTexture";
    public static final long Diffuse;
    public static final String DiffuseAlias = "diffuseTexture";
    public static final long Emissive;
    public static final String EmissiveAlias = "emissiveTexture";
    public static final long Normal;
    public static final String NormalAlias = "normalTexture";
    public static final long Reflection;
    public static final String ReflectionAlias = "reflectionTexture";
    public static final long Specular;
    public static final String SpecularAlias = "specularTexture";

    /* renamed from: d */
    public static long f4396d;
    public float offsetU;
    public float offsetV;
    public float scaleU;
    public float scaleV;
    public final TextureDescriptor<Texture> textureDescription;
    public int uvIndex;

    public TextureAttribute(long j) {
        super(j);
        this.offsetU = 0.0f;
        this.offsetV = 0.0f;
        this.scaleU = 1.0f;
        this.scaleV = 1.0f;
        this.uvIndex = 0;
        if (m24153is(j)) {
            this.textureDescription = new TextureDescriptor<>();
            return;
        }
        throw new GdxRuntimeException("Invalid type specified");
    }

    public static TextureAttribute createAmbient(Texture texture) {
        return new TextureAttribute(Ambient, texture);
    }

    public static TextureAttribute createBump(Texture texture) {
        return new TextureAttribute(Bump, texture);
    }

    public static TextureAttribute createDiffuse(Texture texture) {
        return new TextureAttribute(Diffuse, texture);
    }

    public static TextureAttribute createEmissive(Texture texture) {
        return new TextureAttribute(Emissive, texture);
    }

    public static TextureAttribute createNormal(Texture texture) {
        return new TextureAttribute(Normal, texture);
    }

    public static TextureAttribute createReflection(Texture texture) {
        return new TextureAttribute(Reflection, texture);
    }

    public static TextureAttribute createSpecular(Texture texture) {
        return new TextureAttribute(Specular, texture);
    }

    /* renamed from: is */
    public static final boolean m24153is(long j) {
        return (j & f4396d) != 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public Attribute copy() {
        return new TextureAttribute(this);
    }

    static {
        long m24180d = Attribute.m24180d(DiffuseAlias);
        Diffuse = m24180d;
        long m24180d2 = Attribute.m24180d(SpecularAlias);
        Specular = m24180d2;
        long m24180d3 = Attribute.m24180d(BumpAlias);
        Bump = m24180d3;
        long m24180d4 = Attribute.m24180d(NormalAlias);
        Normal = m24180d4;
        long m24180d5 = Attribute.m24180d(AmbientAlias);
        Ambient = m24180d5;
        long m24180d6 = Attribute.m24180d(EmissiveAlias);
        Emissive = m24180d6;
        long m24180d7 = Attribute.m24180d(ReflectionAlias);
        Reflection = m24180d7;
        f4396d = m24180d | m24180d2 | m24180d3 | m24180d4 | m24180d5 | m24180d6 | m24180d7;
    }

    public static TextureAttribute createAmbient(TextureRegion textureRegion) {
        return new TextureAttribute(Ambient, textureRegion);
    }

    public static TextureAttribute createBump(TextureRegion textureRegion) {
        return new TextureAttribute(Bump, textureRegion);
    }

    public static TextureAttribute createDiffuse(TextureRegion textureRegion) {
        return new TextureAttribute(Diffuse, textureRegion);
    }

    public static TextureAttribute createEmissive(TextureRegion textureRegion) {
        return new TextureAttribute(Emissive, textureRegion);
    }

    public static TextureAttribute createNormal(TextureRegion textureRegion) {
        return new TextureAttribute(Normal, textureRegion);
    }

    public static TextureAttribute createReflection(TextureRegion textureRegion) {
        return new TextureAttribute(Reflection, textureRegion);
    }

    public static TextureAttribute createSpecular(TextureRegion textureRegion) {
        return new TextureAttribute(Specular, textureRegion);
    }

    @Override // java.lang.Comparable
    public int compareTo(Attribute attribute) {
        long j = this.type;
        long j2 = attribute.type;
        if (j != j2) {
            return j < j2 ? -1 : 1;
        }
        TextureAttribute textureAttribute = (TextureAttribute) attribute;
        int compareTo = this.textureDescription.compareTo(textureAttribute.textureDescription);
        if (compareTo != 0) {
            return compareTo;
        }
        int i = this.uvIndex;
        int i2 = textureAttribute.uvIndex;
        if (i != i2) {
            return i - i2;
        }
        if (!MathUtils.isEqual(this.scaleU, textureAttribute.scaleU)) {
            return this.scaleU > textureAttribute.scaleU ? 1 : -1;
        } else if (!MathUtils.isEqual(this.scaleV, textureAttribute.scaleV)) {
            return this.scaleV > textureAttribute.scaleV ? 1 : -1;
        } else if (!MathUtils.isEqual(this.offsetU, textureAttribute.offsetU)) {
            return this.offsetU > textureAttribute.offsetU ? 1 : -1;
        } else if (MathUtils.isEqual(this.offsetV, textureAttribute.offsetV)) {
            return 0;
        } else {
            return this.offsetV > textureAttribute.offsetV ? 1 : -1;
        }
    }

    public void set(TextureRegion textureRegion) {
        this.textureDescription.texture = textureRegion.getTexture();
        this.offsetU = textureRegion.getU();
        this.offsetV = textureRegion.getV();
        this.scaleU = textureRegion.getU2() - this.offsetU;
        this.scaleV = textureRegion.getV2() - this.offsetV;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public int hashCode() {
        return (((((((((((super.hashCode() * 991) + this.textureDescription.hashCode()) * 991) + NumberUtils.floatToRawIntBits(this.offsetU)) * 991) + NumberUtils.floatToRawIntBits(this.offsetV)) * 991) + NumberUtils.floatToRawIntBits(this.scaleU)) * 991) + NumberUtils.floatToRawIntBits(this.scaleV)) * 991) + this.uvIndex;
    }

    public <T extends Texture> TextureAttribute(long j, TextureDescriptor<T> textureDescriptor) {
        this(j);
        this.textureDescription.set(textureDescriptor);
    }

    public <T extends Texture> TextureAttribute(long j, TextureDescriptor<T> textureDescriptor, float f, float f2, float f3, float f4, int i) {
        this(j, textureDescriptor);
        this.offsetU = f;
        this.offsetV = f2;
        this.scaleU = f3;
        this.scaleV = f4;
        this.uvIndex = i;
    }

    public <T extends Texture> TextureAttribute(long j, TextureDescriptor<T> textureDescriptor, float f, float f2, float f3, float f4) {
        this(j, textureDescriptor, f, f2, f3, f4, 0);
    }

    public TextureAttribute(long j, Texture texture) {
        this(j);
        this.textureDescription.texture = texture;
    }

    public TextureAttribute(long j, TextureRegion textureRegion) {
        this(j);
        set(textureRegion);
    }

    public TextureAttribute(TextureAttribute textureAttribute) {
        this(textureAttribute.type, textureAttribute.textureDescription, textureAttribute.offsetU, textureAttribute.offsetV, textureAttribute.scaleU, textureAttribute.scaleV, textureAttribute.uvIndex);
    }
}
