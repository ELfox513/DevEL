package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
/* loaded from: classes.dex */
public class DecalMaterial {
    public static final int NO_BLEND = -1;

    /* renamed from: a */
    public TextureRegion f4448a;

    /* renamed from: b */
    public int f4449b;

    /* renamed from: c */
    public int f4450c;

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        DecalMaterial decalMaterial = (DecalMaterial) obj;
        return this.f4450c == decalMaterial.f4450c && this.f4449b == decalMaterial.f4449b && this.f4448a.getTexture() == decalMaterial.f4448a.getTexture();
    }

    public int getDstBlendFactor() {
        return this.f4450c;
    }

    public int getSrcBlendFactor() {
        return this.f4449b;
    }

    public boolean isOpaque() {
        return this.f4449b == -1;
    }

    public int hashCode() {
        int i;
        if (this.f4448a.getTexture() != null) {
            i = this.f4448a.getTexture().hashCode();
        } else {
            i = 0;
        }
        return (((i * 31) + this.f4449b) * 31) + this.f4450c;
    }

    public void set() {
        this.f4448a.getTexture().bind(0);
        if (!isOpaque()) {
            Gdx.f3119gl.glBlendFunc(this.f4449b, this.f4450c);
        }
    }
}
