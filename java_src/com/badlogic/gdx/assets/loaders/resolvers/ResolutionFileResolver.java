package com.badlogic.gdx.assets.loaders.resolvers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
/* loaded from: classes.dex */
public class ResolutionFileResolver implements FileHandleResolver {

    /* renamed from: a */
    public final FileHandleResolver f3568a;

    /* renamed from: b */
    public final Resolution[] f3569b;

    /* loaded from: classes.dex */
    public static class Resolution {
        public final String folder;
        public final int portraitHeight;
        public final int portraitWidth;

        public Resolution(int i, int i2, String str) {
            this.portraitWidth = i;
            this.portraitHeight = i2;
            this.folder = str;
        }
    }

    public static Resolution choose(Resolution... resolutionArr) {
        int i;
        int i2;
        int backBufferWidth = Gdx.graphics.getBackBufferWidth();
        int backBufferHeight = Gdx.graphics.getBackBufferHeight();
        int i3 = 0;
        Resolution resolution = resolutionArr[0];
        if (backBufferWidth < backBufferHeight) {
            int length = resolutionArr.length;
            while (i3 < length) {
                Resolution resolution2 = resolutionArr[i3];
                int i4 = resolution2.portraitWidth;
                if (backBufferWidth >= i4 && i4 >= resolution.portraitWidth && backBufferHeight >= (i2 = resolution2.portraitHeight) && i2 >= resolution.portraitHeight) {
                    resolution = resolution2;
                }
                i3++;
            }
        } else {
            int length2 = resolutionArr.length;
            while (i3 < length2) {
                Resolution resolution3 = resolutionArr[i3];
                int i5 = resolution3.portraitHeight;
                if (backBufferWidth >= i5 && i5 >= resolution.portraitHeight && backBufferHeight >= (i = resolution3.portraitWidth) && i >= resolution.portraitWidth) {
                    resolution = resolution3;
                }
                i3++;
            }
        }
        return resolution;
    }

    @Override // com.badlogic.gdx.assets.loaders.FileHandleResolver
    public FileHandle resolve(String str) {
        Resolution choose = choose(this.f3569b);
        FileHandle resolve = this.f3568a.resolve(m24350a(new FileHandle(str), choose.folder));
        if (!resolve.exists()) {
            return this.f3568a.resolve(str);
        }
        return resolve;
    }

    public ResolutionFileResolver(FileHandleResolver fileHandleResolver, Resolution... resolutionArr) {
        if (resolutionArr.length != 0) {
            this.f3568a = fileHandleResolver;
            this.f3569b = resolutionArr;
            return;
        }
        throw new IllegalArgumentException("At least one Resolution needs to be supplied.");
    }

    /* renamed from: a */
    public String m24350a(FileHandle fileHandle, String str) {
        FileHandle parent = fileHandle.parent();
        String str2 = "";
        if (parent != null && !parent.name().equals("")) {
            str2 = parent + "/";
        }
        return str2 + str + "/" + fileHandle.name();
    }
}
