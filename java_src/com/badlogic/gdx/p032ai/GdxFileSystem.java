package com.badlogic.gdx.p032ai;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.resolvers.AbsoluteFileHandleResolver;
import com.badlogic.gdx.assets.loaders.resolvers.ClasspathFileHandleResolver;
import com.badlogic.gdx.assets.loaders.resolvers.ExternalFileHandleResolver;
import com.badlogic.gdx.assets.loaders.resolvers.InternalFileHandleResolver;
import com.badlogic.gdx.assets.loaders.resolvers.LocalFileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import java.io.File;
/* renamed from: com.badlogic.gdx.ai.GdxFileSystem */
/* loaded from: classes.dex */
public class GdxFileSystem implements FileSystem {

    /* renamed from: com.badlogic.gdx.ai.GdxFileSystem$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11121 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3187a;

        static {
            int[] iArr = new int[Files.FileType.values().length];
            f3187a = iArr;
            try {
                iArr[Files.FileType.Absolute.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3187a[Files.FileType.Classpath.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3187a[Files.FileType.External.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3187a[Files.FileType.Internal.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3187a[Files.FileType.Local.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandle newFileHandle(String str) {
        return Gdx.files.absolute(str);
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandle newFileHandle(File file) {
        return Gdx.files.absolute(file.getAbsolutePath());
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandleResolver newResolver(Files.FileType fileType) {
        int i = C11121.f3187a[fileType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return null;
                        }
                        return new LocalFileHandleResolver();
                    }
                    return new InternalFileHandleResolver();
                }
                return new ExternalFileHandleResolver();
            }
            return new ClasspathFileHandleResolver();
        }
        return new AbsoluteFileHandleResolver();
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandle newFileHandle(String str, Files.FileType fileType) {
        return Gdx.files.getFileHandle(str, fileType);
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandle newFileHandle(File file, Files.FileType fileType) {
        return Gdx.files.getFileHandle(file.getPath(), fileType);
    }
}
