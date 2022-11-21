package com.badlogic.gdx.assets.loaders.resolvers;

import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
/* loaded from: classes.dex */
public class PrefixFileHandleResolver implements FileHandleResolver {

    /* renamed from: a */
    public String f3566a;

    /* renamed from: b */
    public FileHandleResolver f3567b;

    public FileHandleResolver getBaseResolver() {
        return this.f3567b;
    }

    public String getPrefix() {
        return this.f3566a;
    }

    @Override // com.badlogic.gdx.assets.loaders.FileHandleResolver
    public FileHandle resolve(String str) {
        FileHandleResolver fileHandleResolver = this.f3567b;
        return fileHandleResolver.resolve(this.f3566a + str);
    }

    public void setBaseResolver(FileHandleResolver fileHandleResolver) {
        this.f3567b = fileHandleResolver;
    }

    public void setPrefix(String str) {
        this.f3566a = str;
    }

    public PrefixFileHandleResolver(FileHandleResolver fileHandleResolver, String str) {
        this.f3567b = fileHandleResolver;
        this.f3566a = str;
    }
}
