package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Sort;
/* loaded from: classes.dex */
public class SimpleOrthoGroupStrategy implements GroupStrategy {

    /* renamed from: a */
    public Comparator f4452a = new Comparator();

    /* loaded from: classes.dex */
    public class Comparator implements java.util.Comparator<Decal> {
        public Comparator() {
        }

        @Override // java.util.Comparator
        public int compare(Decal decal, Decal decal2) {
            if (decal.getZ() == decal2.getZ()) {
                return 0;
            }
            return decal.getZ() - decal2.getZ() < 0.0f ? -1 : 1;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void afterGroup(int i) {
        if (i == 1) {
            Gdx.f3119gl.glDepthMask(true);
            Gdx.f3119gl.glDisable(GL20.GL_BLEND);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void afterGroups() {
        Gdx.f3119gl.glDisable(GL20.GL_TEXTURE_2D);
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void beforeGroup(int i, Array<Decal> array) {
        if (i == 1) {
            Sort.instance().sort(array, this.f4452a);
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            Gdx.f3119gl.glDepthMask(false);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void beforeGroups() {
        Gdx.f3119gl.glEnable(GL20.GL_TEXTURE_2D);
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public int decideGroup(Decal decal) {
        return !decal.getMaterial().isOpaque();
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public ShaderProgram getGroupShader(int i) {
        return null;
    }
}
