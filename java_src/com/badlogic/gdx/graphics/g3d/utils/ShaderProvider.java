package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.Shader;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public interface ShaderProvider extends Disposable {
    Shader getShader(Renderable renderable);
}
