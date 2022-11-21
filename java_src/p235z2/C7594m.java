package p235z2;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import p168r4.InterfaceC5887iv;
import p168r4.cm0;
import p168r4.dq2;
/* renamed from: z2.m */
/* loaded from: classes.dex */
public final class C7594m extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ BinderC7600s f37575a;

    public C7594m(BinderC7600s binderC7600s) {
        this.f37575a = binderC7600s;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        InterfaceC5887iv interfaceC5887iv;
        InterfaceC5887iv interfaceC5887iv2;
        InterfaceC5887iv interfaceC5887iv3;
        InterfaceC5887iv interfaceC5887iv4;
        interfaceC5887iv = this.f37575a.f37591r;
        if (interfaceC5887iv != null) {
            try {
                interfaceC5887iv2 = this.f37575a.f37591r;
                interfaceC5887iv2.mo5592g0(dq2.m11989d(1, null, null));
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
            }
        }
        interfaceC5887iv3 = this.f37575a.f37591r;
        if (interfaceC5887iv3 != null) {
            try {
                interfaceC5887iv4 = this.f37575a.f37591r;
                interfaceC5887iv4.mo5598D(0);
            } catch (RemoteException e2) {
                cm0.m12434i("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        InterfaceC5887iv interfaceC5887iv;
        InterfaceC5887iv interfaceC5887iv2;
        InterfaceC5887iv interfaceC5887iv3;
        InterfaceC5887iv interfaceC5887iv4;
        InterfaceC5887iv interfaceC5887iv5;
        InterfaceC5887iv interfaceC5887iv6;
        InterfaceC5887iv interfaceC5887iv7;
        InterfaceC5887iv interfaceC5887iv8;
        InterfaceC5887iv interfaceC5887iv9;
        InterfaceC5887iv interfaceC5887iv10;
        InterfaceC5887iv interfaceC5887iv11;
        InterfaceC5887iv interfaceC5887iv12;
        InterfaceC5887iv interfaceC5887iv13;
        if (str.startsWith(this.f37575a.m969i7())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            interfaceC5887iv10 = this.f37575a.f37591r;
            if (interfaceC5887iv10 != null) {
                try {
                    interfaceC5887iv11 = this.f37575a.f37591r;
                    interfaceC5887iv11.mo5592g0(dq2.m11989d(3, null, null));
                } catch (RemoteException e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
            interfaceC5887iv12 = this.f37575a.f37591r;
            if (interfaceC5887iv12 != null) {
                try {
                    interfaceC5887iv13 = this.f37575a.f37591r;
                    interfaceC5887iv13.mo5598D(3);
                } catch (RemoteException e2) {
                    cm0.m12434i("#007 Could not call remote method.", e2);
                }
            }
            this.f37575a.m974g7(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            interfaceC5887iv6 = this.f37575a.f37591r;
            if (interfaceC5887iv6 != null) {
                try {
                    interfaceC5887iv7 = this.f37575a.f37591r;
                    interfaceC5887iv7.mo5592g0(dq2.m11989d(1, null, null));
                } catch (RemoteException e3) {
                    cm0.m12434i("#007 Could not call remote method.", e3);
                }
            }
            interfaceC5887iv8 = this.f37575a.f37591r;
            if (interfaceC5887iv8 != null) {
                try {
                    interfaceC5887iv9 = this.f37575a.f37591r;
                    interfaceC5887iv9.mo5598D(0);
                } catch (RemoteException e4) {
                    cm0.m12434i("#007 Could not call remote method.", e4);
                }
            }
            this.f37575a.m974g7(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            interfaceC5887iv4 = this.f37575a.f37591r;
            if (interfaceC5887iv4 != null) {
                try {
                    interfaceC5887iv5 = this.f37575a.f37591r;
                    interfaceC5887iv5.mo5595d();
                } catch (RemoteException e5) {
                    cm0.m12434i("#007 Could not call remote method.", e5);
                }
            }
            this.f37575a.m974g7(this.f37575a.m975f7(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            interfaceC5887iv = this.f37575a.f37591r;
            if (interfaceC5887iv != null) {
                try {
                    interfaceC5887iv2 = this.f37575a.f37591r;
                    interfaceC5887iv2.mo5594f();
                    interfaceC5887iv3 = this.f37575a.f37591r;
                    interfaceC5887iv3.mo5596c();
                } catch (RemoteException e6) {
                    cm0.m12434i("#007 Could not call remote method.", e6);
                }
            }
            BinderC7600s.m966k7(this.f37575a, BinderC7600s.m967j7(this.f37575a, str));
            return true;
        }
    }
}
