package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public interface RenderableProvider {
    void getRenderables(Array<Renderable> array, Pool<Renderable> pool);
}
