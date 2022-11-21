package com.badlogic.gdx.graphics.g3d.environment;

import com.badlogic.gdx.graphics.g3d.utils.TextureDescriptor;
import com.badlogic.gdx.math.Matrix4;
/* loaded from: classes.dex */
public interface ShadowMap {
    TextureDescriptor getDepthMap();

    Matrix4 getProjViewTrans();
}
