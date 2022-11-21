package com.badlogic.gdx.graphics.g3d.attributes;

import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.graphics.g3d.environment.DirectionalLight;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class DirectionalLightsAttribute extends Attribute {
    public static final String Alias = "directionalLights";
    public static final long Type = Attribute.m24180d(Alias);
    public final Array<DirectionalLight> lights;

    public DirectionalLightsAttribute() {
        super(Type);
        this.lights = new Array<>(1);
    }

    /* renamed from: is */
    public static final boolean m24156is(long j) {
        return (Type & j) == j;
    }

    @Override // java.lang.Comparable
    public int compareTo(Attribute attribute) {
        long j = this.type;
        long j2 = attribute.type;
        if (j != j2) {
            return j < j2 ? -1 : 1;
        }
        return 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public DirectionalLightsAttribute copy() {
        return new DirectionalLightsAttribute(this);
    }

    public DirectionalLightsAttribute(DirectionalLightsAttribute directionalLightsAttribute) {
        this();
        this.lights.addAll(directionalLightsAttribute.lights);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public int hashCode() {
        int hashCode;
        int hashCode2 = super.hashCode();
        Array.ArrayIterator<DirectionalLight> it = this.lights.iterator();
        while (it.hasNext()) {
            DirectionalLight next = it.next();
            int i = hashCode2 * 1229;
            if (next == null) {
                hashCode = 0;
            } else {
                hashCode = next.hashCode();
            }
            hashCode2 = i + hashCode;
        }
        return hashCode2;
    }
}
