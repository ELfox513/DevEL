package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.Shader;
import com.badlogic.gdx.graphics.g3d.shaders.DepthShader;
/* loaded from: classes.dex */
public class DepthShaderProvider extends BaseShaderProvider {
    public final DepthShader.Config config;

    public DepthShaderProvider(DepthShader.Config config) {
        this.config = config == null ? new DepthShader.Config() : config;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.BaseShaderProvider
    /* renamed from: a */
    public Shader mo24057a(Renderable renderable) {
        return new DepthShader(renderable, this.config);
    }

    public DepthShaderProvider(String str, String str2) {
        this(new DepthShader.Config(str, str2));
    }

    public DepthShaderProvider(FileHandle fileHandle, FileHandle fileHandle2) {
        this(fileHandle.readString(), fileHandle2.readString());
    }

    public DepthShaderProvider() {
        this(null);
    }
}
