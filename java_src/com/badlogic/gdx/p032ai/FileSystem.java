package com.badlogic.gdx.p032ai;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import java.io.File;
/* renamed from: com.badlogic.gdx.ai.FileSystem */
/* loaded from: classes.dex */
public interface FileSystem {
    FileHandle newFileHandle(File file);

    FileHandle newFileHandle(File file, Files.FileType fileType);

    FileHandle newFileHandle(String str);

    FileHandle newFileHandle(String str, Files.FileType fileType);

    FileHandleResolver newResolver(Files.FileType fileType);
}
