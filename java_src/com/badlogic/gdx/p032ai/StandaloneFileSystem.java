package com.badlogic.gdx.p032ai;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.File;
/* renamed from: com.badlogic.gdx.ai.StandaloneFileSystem */
/* loaded from: classes.dex */
public class StandaloneFileSystem implements FileSystem {

    /* renamed from: com.badlogic.gdx.ai.StandaloneFileSystem$DesktopFileHandle */
    /* loaded from: classes.dex */
    public static class DesktopFileHandle extends FileHandle {
        public static final String externalPath;
        public static final String localPath;

        public DesktopFileHandle(String str, Files.FileType fileType) {
            super(str, fileType);
        }

        static {
            StringBuilder sb = new StringBuilder();
            sb.append(System.getProperty("user.home"));
            String str = File.separator;
            sb.append(str);
            externalPath = sb.toString();
            localPath = new File("").getAbsolutePath() + str;
        }

        public DesktopFileHandle(File file, Files.FileType fileType) {
            super(file, fileType);
        }

        @Override // com.badlogic.gdx.files.FileHandle
        public FileHandle child(String str) {
            if (this.f3883a.getPath().length() == 0) {
                return new DesktopFileHandle(new File(str), this.f3884b);
            }
            return new DesktopFileHandle(new File(this.f3883a, str), this.f3884b);
        }

        @Override // com.badlogic.gdx.files.FileHandle
        public File file() {
            Files.FileType fileType = this.f3884b;
            if (fileType == Files.FileType.External) {
                return new File(externalPath, this.f3883a.getPath());
            }
            if (fileType == Files.FileType.Local) {
                return new File(localPath, this.f3883a.getPath());
            }
            return this.f3883a;
        }

        @Override // com.badlogic.gdx.files.FileHandle
        public FileHandle parent() {
            File parentFile = this.f3883a.getParentFile();
            if (parentFile == null) {
                if (this.f3884b == Files.FileType.Absolute) {
                    parentFile = new File("/");
                } else {
                    parentFile = new File("");
                }
            }
            return new DesktopFileHandle(parentFile, this.f3884b);
        }

        @Override // com.badlogic.gdx.files.FileHandle
        public FileHandle sibling(String str) {
            if (this.f3883a.getPath().length() != 0) {
                return new DesktopFileHandle(new File(this.f3883a.getParent(), str), this.f3884b);
            }
            throw new GdxRuntimeException("Cannot get the sibling of the root.");
        }
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandle newFileHandle(String str) {
        return new DesktopFileHandle(str, Files.FileType.Absolute);
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandleResolver newResolver(final Files.FileType fileType) {
        return new FileHandleResolver() { // from class: com.badlogic.gdx.ai.StandaloneFileSystem.1
            @Override // com.badlogic.gdx.assets.loaders.FileHandleResolver
            public FileHandle resolve(String str) {
                return new DesktopFileHandle(str, fileType);
            }
        };
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandle newFileHandle(File file) {
        return new DesktopFileHandle(file, Files.FileType.Absolute);
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandle newFileHandle(String str, Files.FileType fileType) {
        return new DesktopFileHandle(str, fileType);
    }

    @Override // com.badlogic.gdx.p032ai.FileSystem
    public FileHandle newFileHandle(File file, Files.FileType fileType) {
        return new DesktopFileHandle(file, fileType);
    }
}
