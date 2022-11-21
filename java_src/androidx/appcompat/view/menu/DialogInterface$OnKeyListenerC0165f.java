package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.DialogC0148a;
import androidx.appcompat.view.menu.InterfaceC0170i;
import p021c.C1014g;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes.dex */
public class DialogInterface$OnKeyListenerC0165f implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, InterfaceC0170i.InterfaceC0171a {

    /* renamed from: a */
    public C0162e f452a;

    /* renamed from: b */
    public DialogC0148a f453b;

    /* renamed from: d */
    public C0159c f454d;

    /* renamed from: k */
    public InterfaceC0170i.InterfaceC0171a f455k;

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f452a.m27540L((C0166g) this.f454d.m27555a().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f454d.mo27289b(this.f452a, true);
    }

    /* renamed from: a */
    public void m27500a() {
        DialogC0148a dialogC0148a = this.f453b;
        if (dialogC0148a != null) {
            dialogC0148a.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
    /* renamed from: b */
    public void mo19575b(C0162e c0162e, boolean z) {
        if (z || c0162e == this.f452a) {
            m27500a();
        }
        InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f455k;
        if (interfaceC0171a != null) {
            interfaceC0171a.mo19575b(c0162e, z);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
    /* renamed from: c */
    public boolean mo19574c(C0162e c0162e) {
        InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f455k;
        if (interfaceC0171a != null) {
            return interfaceC0171a.mo19574c(c0162e);
        }
        return false;
    }

    /* renamed from: d */
    public void m27499d(IBinder iBinder) {
        C0162e c0162e = this.f452a;
        DialogC0148a.C0149a c0149a = new DialogC0148a.C0149a(c0162e.m27506u());
        C0159c c0159c = new C0159c(c0149a.m27583b(), C1014g.f2649j);
        this.f454d = c0159c;
        c0159c.mo27457g(this);
        this.f452a.m27524b(this.f454d);
        c0149a.m27582c(this.f454d.m27555a(), this);
        View m27502y = c0162e.m27502y();
        if (m27502y != null) {
            c0149a.m27581d(m27502y);
        } else {
            c0149a.m27580e(c0162e.m27504w()).m27577h(c0162e.m27503x());
        }
        c0149a.m27579f(this);
        DialogC0148a m27584a = c0149a.m27584a();
        this.f453b = m27584a;
        m27584a.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f453b.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f453b.show();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f453b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f453b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f452a.m27518e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f452a.performShortcut(i, keyEvent, 0);
    }

    public DialogInterface$OnKeyListenerC0165f(C0162e c0162e) {
        this.f452a = c0162e;
    }
}
