package p063f7;

import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
import p045d7.C3332b;
import p099j7.C4381h;
/* renamed from: f7.i */
/* loaded from: classes2.dex */
public class C3534i<T> implements ResponseHandler<T> {

    /* renamed from: a */
    public final ResponseHandler<? extends T> f16032a;

    /* renamed from: b */
    public final C4381h f16033b;

    /* renamed from: c */
    public final C3332b f16034c;

    public T handleResponse(HttpResponse httpResponse) {
        this.f16034c.m19119J(this.f16033b.m16732h());
        this.f16034c.m19126A(httpResponse.getStatusLine().getStatusCode());
        Long m18654a = C3536k.m18654a(httpResponse);
        if (m18654a != null) {
            this.f16034c.m19121F(m18654a.longValue());
        }
        String m18653b = C3536k.m18653b(httpResponse);
        if (m18653b != null) {
            this.f16034c.m19122E(m18653b);
        }
        this.f16034c.m19115h();
        return (T) this.f16032a.handleResponse(httpResponse);
    }

    public C3534i(ResponseHandler<? extends T> responseHandler, C4381h c4381h, C3332b c3332b) {
        this.f16032a = responseHandler;
        this.f16033b = c4381h;
        this.f16034c = c3332b;
    }
}
