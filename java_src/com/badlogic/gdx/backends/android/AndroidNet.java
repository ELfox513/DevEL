package com.badlogic.gdx.backends.android;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.net.NetJavaImpl;
import com.badlogic.gdx.net.NetJavaServerSocketImpl;
import com.badlogic.gdx.net.NetJavaSocketImpl;
import com.badlogic.gdx.net.ServerSocket;
import com.badlogic.gdx.net.ServerSocketHints;
import com.badlogic.gdx.net.Socket;
import com.badlogic.gdx.net.SocketHints;
/* loaded from: classes.dex */
public class AndroidNet implements Net {

    /* renamed from: a */
    public final AndroidApplicationBase f3737a;

    /* renamed from: b */
    public NetJavaImpl f3738b;

    @Override // com.badlogic.gdx.Net
    public void cancelHttpRequest(Net.HttpRequest httpRequest) {
        this.f3738b.cancelHttpRequest(httpRequest);
    }

    @Override // com.badlogic.gdx.Net
    public Socket newClientSocket(Net.Protocol protocol, String str, int i, SocketHints socketHints) {
        return new NetJavaSocketImpl(protocol, str, i, socketHints);
    }

    @Override // com.badlogic.gdx.Net
    public ServerSocket newServerSocket(Net.Protocol protocol, String str, int i, ServerSocketHints serverSocketHints) {
        return new NetJavaServerSocketImpl(protocol, str, i, serverSocketHints);
    }

    @Override // com.badlogic.gdx.Net
    public void sendHttpRequest(Net.HttpRequest httpRequest, Net.HttpResponseListener httpResponseListener) {
        this.f3738b.sendHttpRequest(httpRequest, httpResponseListener);
    }

    @Override // com.badlogic.gdx.Net
    public ServerSocket newServerSocket(Net.Protocol protocol, int i, ServerSocketHints serverSocketHints) {
        return new NetJavaServerSocketImpl(protocol, i, serverSocketHints);
    }

    public AndroidNet(AndroidApplicationBase androidApplicationBase, AndroidApplicationConfiguration androidApplicationConfiguration) {
        this.f3737a = androidApplicationBase;
        this.f3738b = new NetJavaImpl(androidApplicationConfiguration.maxNetThreads);
    }

    @Override // com.badlogic.gdx.Net
    public boolean openURI(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            if (!(this.f3737a.getContext() instanceof Activity)) {
                intent.addFlags(268435456);
            }
            this.f3737a.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }
}
