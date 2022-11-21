package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.g3d.utils.RenderContext;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public interface Shader extends Disposable {
    void begin(Camera camera, RenderContext renderContext);

    boolean canRender(Renderable renderable);

    int compareTo(Shader shader);

    void end();

    void init();

    void render(Renderable renderable);
}
