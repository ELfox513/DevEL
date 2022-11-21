package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.Shader;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public abstract class BaseShaderProvider implements ShaderProvider {

    /* renamed from: a */
    public Array<Shader> f4815a = new Array<>();

    /* renamed from: a */
    public abstract Shader mo24057a(Renderable renderable);

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Array.ArrayIterator<Shader> it = this.f4815a.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        this.f4815a.clear();
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.ShaderProvider
    public Shader getShader(Renderable renderable) {
        Shader shader = renderable.shader;
        if (shader != null && shader.canRender(renderable)) {
            return shader;
        }
        Array.ArrayIterator<Shader> it = this.f4815a.iterator();
        while (it.hasNext()) {
            Shader next = it.next();
            if (next.canRender(renderable)) {
                return next;
            }
        }
        Shader mo24057a = mo24057a(renderable);
        if (mo24057a.canRender(renderable)) {
            mo24057a.init();
            this.f4815a.add(mo24057a);
            return mo24057a;
        }
        throw new GdxRuntimeException("unable to provide a shader for this renderable");
    }
}
