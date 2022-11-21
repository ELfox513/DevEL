package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public interface GroupStrategy {
    void afterGroup(int i);

    void afterGroups();

    void beforeGroup(int i, Array<Decal> array);

    void beforeGroups();

    int decideGroup(Decal decal);

    ShaderProgram getGroupShader(int i);
}
