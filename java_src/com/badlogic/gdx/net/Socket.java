package com.badlogic.gdx.net;

import com.badlogic.gdx.utils.Disposable;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public interface Socket extends Disposable {
    InputStream getInputStream();

    OutputStream getOutputStream();

    String getRemoteAddress();

    boolean isConnected();
}
