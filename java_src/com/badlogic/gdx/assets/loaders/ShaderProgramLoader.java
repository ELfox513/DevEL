package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class ShaderProgramLoader extends AsynchronousAssetLoader<ShaderProgram, ShaderProgramParameter> {

    /* renamed from: b */
    public String f3558b;

    /* renamed from: c */
    public String f3559c;

    /* loaded from: classes.dex */
    public static class ShaderProgramParameter extends AssetLoaderParameters<ShaderProgram> {
        public String fragmentFile;
        public boolean logOnCompileFailure = true;
        public String prependFragmentCode;
        public String prependVertexCode;
        public String vertexFile;
    }

    public ShaderProgramLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f3558b = ".vert";
        this.f3559c = ".frag";
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, ShaderProgramParameter shaderProgramParameter) {
        return null;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, ShaderProgramParameter shaderProgramParameter) {
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public ShaderProgram loadSync(AssetManager assetManager, String str, FileHandle fileHandle, ShaderProgramParameter shaderProgramParameter) {
        String str2;
        String str3 = null;
        if (shaderProgramParameter != null) {
            String str4 = shaderProgramParameter.vertexFile;
            if (str4 == null) {
                str4 = null;
            }
            str2 = shaderProgramParameter.fragmentFile;
            if (str2 == null) {
                str2 = null;
            }
            str3 = str4;
        } else {
            str2 = null;
        }
        if (str3 == null && str.endsWith(this.f3559c)) {
            str3 = str.substring(0, str.length() - this.f3559c.length()) + this.f3558b;
        }
        if (str2 == null && str.endsWith(this.f3558b)) {
            str2 = str.substring(0, str.length() - this.f3558b.length()) + this.f3559c;
        }
        FileHandle resolve = str3 == null ? fileHandle : resolve(str3);
        if (str2 != null) {
            fileHandle = resolve(str2);
        }
        String readString = resolve.readString();
        String readString2 = resolve.equals(fileHandle) ? readString : fileHandle.readString();
        if (shaderProgramParameter != null) {
            if (shaderProgramParameter.prependVertexCode != null) {
                readString = shaderProgramParameter.prependVertexCode + readString;
            }
            if (shaderProgramParameter.prependFragmentCode != null) {
                readString2 = shaderProgramParameter.prependFragmentCode + readString2;
            }
        }
        ShaderProgram shaderProgram = new ShaderProgram(readString, readString2);
        if ((shaderProgramParameter == null || shaderProgramParameter.logOnCompileFailure) && !shaderProgram.isCompiled()) {
            assetManager.getLogger().error("ShaderProgram " + str + " failed to compile:\n" + shaderProgram.getLog());
        }
        return shaderProgram;
    }

    public ShaderProgramLoader(FileHandleResolver fileHandleResolver, String str, String str2) {
        super(fileHandleResolver);
        this.f3558b = str;
        this.f3559c = str2;
    }
}
