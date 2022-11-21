package p155q0;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;
/* renamed from: q0.b */
/* loaded from: classes.dex */
public interface InterfaceC5382b extends Closeable {
    /* renamed from: A */
    List<Pair<String, String>> mo13141A();

    /* renamed from: B */
    void mo13140B(String str);

    /* renamed from: C0 */
    Cursor mo13139C0(InterfaceC5389e interfaceC5389e);

    /* renamed from: D0 */
    String mo13138D0();

    /* renamed from: E0 */
    boolean mo13137E0();

    /* renamed from: K */
    InterfaceC5390f mo13136K(String str);

    /* renamed from: e0 */
    void mo13134e0();

    /* renamed from: g0 */
    void mo13133g0(String str, Object[] objArr);

    boolean isOpen();

    /* renamed from: o0 */
    Cursor mo13132o0(String str);

    /* renamed from: s0 */
    void mo13131s0();

    /* renamed from: u */
    void mo13130u();

    /* renamed from: y0 */
    Cursor mo13129y0(InterfaceC5389e interfaceC5389e, CancellationSignal cancellationSignal);
}
