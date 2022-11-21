package com.android.billingclient.api;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.android.billingclient.api.C1099m;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
import p027c5.AbstractBinderC1063b;
import p027c5.C1062a;
import p027c5.InterfaceC1064c;
import p093j1.C4272a;
import p093j1.C4279d;
import p093j1.C4282e;
import p093j1.C4298q;
import p093j1.CallableC4286f0;
import p093j1.CallableC4288g0;
import p093j1.CallableC4291j;
import p093j1.CallableC4302u;
import p093j1.CallableC4304w;
import p093j1.CallableC4305x;
import p093j1.InterfaceC4275b;
import p093j1.InterfaceC4277c;
import p093j1.InterfaceC4285f;
import p093j1.InterfaceC4287g;
import p093j1.InterfaceC4289h;
import p093j1.RunnableC4274a0;
import p093j1.RunnableC4276b0;
import p093j1.RunnableC4278c0;
import p093j1.RunnableC4281d0;
import p093j1.RunnableC4284e0;
import p093j1.RunnableC4301t;
import p093j1.RunnableC4303v;
import p093j1.ThreadFactoryC4307z;
/* renamed from: com.android.billingclient.api.b */
/* loaded from: classes.dex */
public class C1085b extends AbstractC1083a {

    /* renamed from: a */
    public int f2998a;

    /* renamed from: b */
    public final String f2999b;

    /* renamed from: c */
    public final Handler f3000c;

    /* renamed from: d */
    public C4298q f3001d;

    /* renamed from: e */
    public Context f3002e;

    /* renamed from: f */
    public Context f3003f;

    /* renamed from: g */
    public InterfaceC1064c f3004g;

    /* renamed from: h */
    public ServiceConnectionC1086a f3005h;

    /* renamed from: i */
    public boolean f3006i;

    /* renamed from: j */
    public boolean f3007j;

    /* renamed from: k */
    public int f3008k;

    /* renamed from: l */
    public boolean f3009l;

    /* renamed from: m */
    public boolean f3010m;

    /* renamed from: n */
    public boolean f3011n;

    /* renamed from: o */
    public boolean f3012o;

    /* renamed from: p */
    public boolean f3013p;

    /* renamed from: q */
    public boolean f3014q;

    /* renamed from: r */
    public boolean f3015r;

    /* renamed from: s */
    public boolean f3016s;

    /* renamed from: t */
    public ExecutorService f3017t;

    /* renamed from: u */
    public String f3018u;

    /* renamed from: com.android.billingclient.api.b$a */
    /* loaded from: classes.dex */
    public final class ServiceConnectionC1086a implements ServiceConnection {

        /* renamed from: a */
        public final Object f3019a;

        /* renamed from: b */
        public boolean f3020b;

        /* renamed from: d */
        public InterfaceC4277c f3021d;

        public ServiceConnectionC1086a(InterfaceC4277c interfaceC4277c) {
            this.f3019a = new Object();
            this.f3020b = false;
            this.f3021d = interfaceC4277c;
        }

        /* renamed from: d */
        public final void m24552d(C1087c c1087c) {
            C1085b.this.m24559w(new RunnableC1094h(this, c1087c));
        }

        /* renamed from: b */
        public final void m24554b() {
            synchronized (this.f3019a) {
                this.f3021d = null;
                this.f3020b = true;
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1062a.m24713i("BillingClient", "Billing service connected.");
            C1085b.this.f3004g = AbstractBinderC1063b.m24708j0(iBinder);
            if (C1085b.this.m24563s(new CallableC1096j(this), 30000L, new RunnableC1095i(this)) == null) {
                m24552d(C1085b.this.m24589F());
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            C1062a.m24710l("BillingClient", "Billing service disconnected.");
            C1085b.this.f3004g = null;
            C1085b.this.f2998a = 0;
            synchronized (this.f3019a) {
                InterfaceC4277c interfaceC4277c = this.f3021d;
                if (interfaceC4277c != null) {
                    interfaceC4277c.onBillingServiceDisconnected();
                }
            }
        }

        public /* synthetic */ ServiceConnectionC1086a(C1085b c1085b, InterfaceC4277c interfaceC4277c, CallableC4302u callableC4302u) {
            this(interfaceC4277c);
        }
    }

    public C1085b(String str, boolean z, Context context, InterfaceC4287g interfaceC4287g) {
        this(context, z, interfaceC4287g, m24594A(), null);
    }

    @Override // com.android.billingclient.api.AbstractC1083a
    /* renamed from: d */
    public boolean mo24577d() {
        return (this.f2998a != 2 || this.f3004g == null || this.f3005h == null) ? false : true;
    }

    /* renamed from: n */
    public final C1087c m24568n(C1087c c1087c) {
        this.f3001d.m16847c().onPurchasesUpdated(c1087c, null);
        return c1087c;
    }

    /* renamed from: s */
    public final <T> Future<T> m24563s(Callable<T> callable, long j, Runnable runnable) {
        double d = j;
        Double.isNaN(d);
        long j2 = (long) (d * 0.95d);
        if (this.f3017t == null) {
            this.f3017t = Executors.newFixedThreadPool(C1062a.f2962a, new ThreadFactoryC4307z(this));
        }
        try {
            Future<T> submit = this.f3017t.submit(callable);
            this.f3000c.postDelayed(new RunnableC4276b0(this, submit, runnable), j2);
            return submit;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 28);
            sb.append("Async task throws exception ");
            sb.append(valueOf);
            C1062a.m24710l("BillingClient", sb.toString());
            return null;
        }
    }

    public C1085b(Context context, boolean z, InterfaceC4287g interfaceC4287g, String str, String str2) {
        this.f2998a = 0;
        this.f3000c = new Handler(Looper.getMainLooper());
        this.f3008k = 0;
        this.f3018u = null;
        this.f2999b = str;
        m24572j(context, interfaceC4287g, z);
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: A */
    public static String m24594A() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return "3.0.1";
        }
    }

    /* renamed from: q */
    public static String m24565q(String str) {
        try {
            return new JSONObject(str).optString("offer_id_token");
        } catch (JSONException unused) {
            return "";
        }
    }

    /* renamed from: F */
    public final C1087c m24589F() {
        int i = this.f2998a;
        if (i != 0 && i != 3) {
            return C1097k.f3057l;
        }
        return C1097k.f3062q;
    }

    @Override // com.android.billingclient.api.AbstractC1083a
    /* renamed from: c */
    public void mo24578c() {
        try {
            this.f3001d.m16846d();
            ServiceConnectionC1086a serviceConnectionC1086a = this.f3005h;
            if (serviceConnectionC1086a != null) {
                serviceConnectionC1086a.m24554b();
            }
            if (this.f3005h != null && this.f3004g != null) {
                C1062a.m24713i("BillingClient", "Unbinding from service.");
                this.f3003f.unbindService(this.f3005h);
                this.f3005h = null;
            }
            this.f3004g = null;
            ExecutorService executorService = this.f3017t;
            if (executorService != null) {
                executorService.shutdownNow();
                this.f3017t = null;
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 48);
            sb.append("There was an exception while ending connection: ");
            sb.append(valueOf);
            C1062a.m24710l("BillingClient", sb.toString());
        } finally {
            this.f2998a = 3;
        }
    }

    @Override // com.android.billingclient.api.AbstractC1083a
    /* renamed from: e */
    public C1087c mo24576e(Activity activity, C4279d c4279d) {
        boolean z;
        long j;
        Future m24563s;
        int i;
        int i2;
        if (!mo24577d()) {
            return m24568n(C1097k.f3062q);
        }
        ArrayList<SkuDetails> m16867h = c4279d.m16867h();
        SkuDetails skuDetails = m16867h.get(0);
        String m24604i = skuDetails.m24604i();
        if (m24604i.equals("subs") && !this.f3006i) {
            C1062a.m24710l("BillingClient", "Current client doesn't support subscriptions.");
            return m24568n(C1097k.f3064s);
        }
        if (c4279d.m16874a() != null) {
            z = true;
        } else {
            z = false;
        }
        if (z && !this.f3007j) {
            C1062a.m24710l("BillingClient", "Current client doesn't support subscriptions update.");
            return m24568n(C1097k.f3065t);
        } else if (c4279d.m16860o() && !this.f3009l) {
            C1062a.m24710l("BillingClient", "Current client doesn't support extra params for buy intent.");
            return m24568n(C1097k.f3053h);
        } else if (m16867h.size() > 1 && !this.f3015r) {
            C1062a.m24710l("BillingClient", "Current client doesn't support multi-item purchases.");
            return m24568n(C1097k.f3066u);
        } else {
            String str = "";
            for (int i3 = 0; i3 < m16867h.size(); i3++) {
                String valueOf = String.valueOf(str);
                String valueOf2 = String.valueOf(m16867h.get(i3));
                StringBuilder sb = new StringBuilder(valueOf.length() + valueOf2.length());
                sb.append(valueOf);
                sb.append(valueOf2);
                String sb2 = sb.toString();
                if (i3 < m16867h.size() - 1) {
                    sb2 = String.valueOf(sb2).concat(", ");
                }
                str = sb2;
            }
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 41 + m24604i.length());
            sb3.append("Constructing buy intent for ");
            sb3.append(str);
            sb3.append(", item type: ");
            sb3.append(m24604i);
            C1062a.m24713i("BillingClient", sb3.toString());
            if (this.f3009l) {
                Bundle m24717e = C1062a.m24717e(c4279d, this.f3011n, this.f3016s, this.f2999b);
                if (!skuDetails.m24602k().isEmpty()) {
                    m24717e.putString("skuDetailsToken", skuDetails.m24602k());
                }
                ArrayList<String> arrayList = new ArrayList<>();
                ArrayList<String> arrayList2 = new ArrayList<>();
                int size = m16867h.size();
                int i4 = 0;
                boolean z2 = false;
                while (i4 < size) {
                    SkuDetails skuDetails2 = m16867h.get(i4);
                    i4++;
                    SkuDetails skuDetails3 = skuDetails2;
                    if (!skuDetails3.m24602k().isEmpty()) {
                        i2 = size;
                        arrayList.add(skuDetails3.m24602k());
                    } else {
                        i2 = size;
                    }
                    String m24565q = m24565q(skuDetails3.m24610c());
                    arrayList2.add(m24565q);
                    z2 |= !TextUtils.isEmpty(m24565q);
                    size = i2;
                }
                if (!arrayList.isEmpty()) {
                    m24717e.putStringArrayList("skuDetailsTokens", arrayList);
                }
                if (z2) {
                    if (!this.f3015r) {
                        return m24568n(C1097k.f3054i);
                    }
                    m24717e.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
                }
                if (!TextUtils.isEmpty(skuDetails.m24603j())) {
                    m24717e.putString("skuPackageName", skuDetails.m24603j());
                }
                if (!TextUtils.isEmpty(this.f3018u)) {
                    m24717e.putString("accountName", this.f3018u);
                }
                if (m16867h.size() > 1) {
                    ArrayList<String> arrayList3 = new ArrayList<>(m16867h.size() - 1);
                    for (int i5 = 1; i5 < m16867h.size(); i5++) {
                        arrayList3.add(m16867h.get(i5).m24606g());
                    }
                    m24717e.putStringArrayList("additionalSkus", arrayList3);
                }
                if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                    String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                    m24717e.putString("proxyPackage", stringExtra);
                    try {
                        m24717e.putString("proxyPackageVersion", this.f3002e.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                    } catch (PackageManager.NameNotFoundException unused) {
                        m24717e.putString("proxyPackageVersion", "package not found");
                    }
                }
                if (this.f3011n) {
                    i = 9;
                } else if (c4279d.m16871d()) {
                    i = 7;
                } else {
                    i = 6;
                }
                j = 5000;
                m24563s = m24563s(new CallableC4288g0(this, i, skuDetails, m24604i, c4279d, m24717e), 5000L, null);
            } else {
                j = 5000;
                if (z) {
                    m24563s = m24563s(new CallableC4286f0(this, c4279d, skuDetails), 5000L, null);
                } else {
                    m24563s = m24563s(new CallableC4291j(this, skuDetails, m24604i), 5000L, null);
                }
            }
            try {
                Bundle bundle = (Bundle) m24563s.get(j, TimeUnit.MILLISECONDS);
                int m24720b = C1062a.m24720b(bundle, "BillingClient");
                String m24711k = C1062a.m24711k(bundle, "BillingClient");
                if (m24720b != 0) {
                    StringBuilder sb4 = new StringBuilder(52);
                    sb4.append("Unable to buy item, Error response code: ");
                    sb4.append(m24720b);
                    C1062a.m24710l("BillingClient", sb4.toString());
                    return m24568n(C1087c.m24548b().m24543c(m24720b).m24544b(m24711k).m24545a());
                }
                Intent intent = new Intent(activity, ProxyBillingActivity.class);
                intent.putExtra("BUY_INTENT", (PendingIntent) bundle.getParcelable("BUY_INTENT"));
                activity.startActivity(intent);
                return C1097k.f3061p;
            } catch (CancellationException | TimeoutException unused2) {
                StringBuilder sb5 = new StringBuilder(String.valueOf(str).length() + 68);
                sb5.append("Time out while launching billing flow: ; for sku: ");
                sb5.append(str);
                sb5.append("; try to reconnect");
                C1062a.m24710l("BillingClient", sb5.toString());
                return m24568n(C1097k.f3063r);
            } catch (Exception unused3) {
                StringBuilder sb6 = new StringBuilder(String.valueOf(str).length() + 69);
                sb6.append("Exception while launching billing flow: ; for sku: ");
                sb6.append(str);
                sb6.append("; try to reconnect");
                C1062a.m24710l("BillingClient", sb6.toString());
                return m24568n(C1097k.f3062q);
            }
        }
    }

    /* renamed from: p */
    public final SkuDetails.C1082a m24566p(String str, List<C1099m> list, String str2) {
        int i;
        Bundle mo24700Z3;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 20;
            if (i3 > size) {
                i = size;
            } else {
                i = i3;
            }
            ArrayList arrayList2 = new ArrayList(list.subList(i2, i));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj = arrayList2.get(i4);
                i4++;
                arrayList3.add(((C1099m) obj).m24530a());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.f2999b);
            try {
                if (this.f3012o) {
                    mo24700Z3 = this.f3004g.mo24705G5(10, this.f3003f.getPackageName(), str, bundle, C1062a.m24719c(this.f3008k, this.f3016s, this.f2999b, str2, arrayList2));
                } else {
                    mo24700Z3 = this.f3004g.mo24700Z3(3, this.f3003f.getPackageName(), str, bundle);
                }
                if (mo24700Z3 == null) {
                    C1062a.m24710l("BillingClient", "querySkuDetailsAsync got null sku details list");
                    return new SkuDetails.C1082a(4, "Item is unavailable for purchase.", null);
                } else if (!mo24700Z3.containsKey("DETAILS_LIST")) {
                    int m24720b = C1062a.m24720b(mo24700Z3, "BillingClient");
                    String m24711k = C1062a.m24711k(mo24700Z3, "BillingClient");
                    if (m24720b != 0) {
                        StringBuilder sb = new StringBuilder(50);
                        sb.append("getSkuDetails() failed. Response code: ");
                        sb.append(m24720b);
                        C1062a.m24710l("BillingClient", sb.toString());
                        return new SkuDetails.C1082a(m24720b, m24711k, arrayList);
                    }
                    C1062a.m24710l("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                    return new SkuDetails.C1082a(6, m24711k, arrayList);
                } else {
                    ArrayList<String> stringArrayList = mo24700Z3.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList == null) {
                        C1062a.m24710l("BillingClient", "querySkuDetailsAsync got null response list");
                        return new SkuDetails.C1082a(4, "Item is unavailable for purchase.", null);
                    }
                    for (int i5 = 0; i5 < stringArrayList.size(); i5++) {
                        try {
                            SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i5));
                            String valueOf = String.valueOf(skuDetails);
                            StringBuilder sb2 = new StringBuilder(valueOf.length() + 17);
                            sb2.append("Got sku details: ");
                            sb2.append(valueOf);
                            C1062a.m24713i("BillingClient", sb2.toString());
                            arrayList.add(skuDetails);
                        } catch (JSONException unused) {
                            C1062a.m24710l("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                            return new SkuDetails.C1082a(6, "Error trying to decode SkuDetails.", null);
                        }
                    }
                    i2 = i3;
                }
            } catch (Exception e) {
                String valueOf2 = String.valueOf(e);
                StringBuilder sb3 = new StringBuilder("querySkuDetailsAsync got a remote exception (try to reconnect).".length() + valueOf2.length());
                sb3.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                sb3.append(valueOf2);
                C1062a.m24710l("BillingClient", sb3.toString());
                return new SkuDetails.C1082a(-1, "Service connection is disconnected.", null);
            }
        }
        return new SkuDetails.C1082a(0, "", arrayList);
    }

    /* renamed from: v */
    public final void m24560v(C4282e c4282e, InterfaceC4285f interfaceC4285f) {
        String str;
        int mo24695n3;
        String str2;
        String m16854a = c4282e.m16854a();
        try {
            String valueOf = String.valueOf(m16854a);
            if (valueOf.length() != 0) {
                str = "Consuming purchase with token: ".concat(valueOf);
            } else {
                str = new String("Consuming purchase with token: ");
            }
            C1062a.m24713i("BillingClient", str);
            if (this.f3011n) {
                Bundle mo24699d6 = this.f3004g.mo24699d6(9, this.f3003f.getPackageName(), m16854a, C1062a.m24716f(c4282e, this.f3011n, this.f2999b));
                int i = mo24699d6.getInt("RESPONSE_CODE");
                str2 = C1062a.m24711k(mo24699d6, "BillingClient");
                mo24695n3 = i;
            } else {
                mo24695n3 = this.f3004g.mo24695n3(3, this.f3003f.getPackageName(), m16854a);
                str2 = "";
            }
            C1087c m24545a = C1087c.m24548b().m24543c(mo24695n3).m24544b(str2).m24545a();
            if (mo24695n3 == 0) {
                m24559w(new RunnableC4278c0(this, interfaceC4285f, m24545a, m16854a));
            } else {
                m24559w(new RunnableC4284e0(this, mo24695n3, interfaceC4285f, m24545a, m16854a));
            }
        } catch (Exception e) {
            m24559w(new RunnableC4281d0(this, e, interfaceC4285f, m16854a));
        }
    }

    /* renamed from: G */
    public final Purchase.C1081a m24588G(String str) {
        String str2;
        Bundle mo24703R1;
        String str3;
        String str4;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "Querying owned items, item type: ".concat(valueOf);
        } else {
            str2 = new String("Querying owned items, item type: ");
        }
        C1062a.m24713i("BillingClient", str2);
        ArrayList arrayList = new ArrayList();
        Bundle m24715g = C1062a.m24715g(this.f3011n, this.f3016s, this.f2999b);
        String str5 = null;
        do {
            try {
                if (this.f3011n) {
                    mo24703R1 = this.f3004g.mo24701Y3(9, this.f3003f.getPackageName(), str, str5, m24715g);
                } else {
                    mo24703R1 = this.f3004g.mo24703R1(3, this.f3003f.getPackageName(), str, str5);
                }
                C1087c m24531a = C1098l.m24531a(mo24703R1, "BillingClient", "getPurchase()");
                if (m24531a != C1097k.f3061p) {
                    return new Purchase.C1081a(m24531a, null);
                }
                ArrayList<String> stringArrayList = mo24703R1.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = mo24703R1.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = mo24703R1.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i = 0; i < stringArrayList2.size(); i++) {
                    String str6 = stringArrayList2.get(i);
                    String str7 = stringArrayList3.get(i);
                    String valueOf2 = String.valueOf(stringArrayList.get(i));
                    if (valueOf2.length() != 0) {
                        str4 = "Sku is owned: ".concat(valueOf2);
                    } else {
                        str4 = new String("Sku is owned: ");
                    }
                    C1062a.m24713i("BillingClient", str4);
                    try {
                        Purchase purchase = new Purchase(str6, str7);
                        if (TextUtils.isEmpty(purchase.m24619e())) {
                            C1062a.m24710l("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e) {
                        String valueOf3 = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(valueOf3.length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        C1062a.m24710l("BillingClient", sb.toString());
                        return new Purchase.C1081a(C1097k.f3057l, null);
                    }
                }
                str5 = mo24703R1.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(str5);
                if (valueOf4.length() != 0) {
                    str3 = "Continuation token: ".concat(valueOf4);
                } else {
                    str3 = new String("Continuation token: ");
                }
                C1062a.m24713i("BillingClient", str3);
            } catch (Exception e2) {
                String valueOf5 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(valueOf5.length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                C1062a.m24710l("BillingClient", sb2.toString());
                return new Purchase.C1081a(C1097k.f3062q, null);
            }
        } while (!TextUtils.isEmpty(str5));
        return new Purchase.C1081a(C1097k.f3061p, arrayList);
    }

    @Override // com.android.billingclient.api.AbstractC1083a
    /* renamed from: a */
    public void mo24580a(C4272a c4272a, InterfaceC4275b interfaceC4275b) {
        if (!mo24577d()) {
            interfaceC4275b.onAcknowledgePurchaseResponse(C1097k.f3062q);
        } else if (TextUtils.isEmpty(c4272a.m16879a())) {
            C1062a.m24710l("BillingClient", "Please provide a valid purchase token.");
            interfaceC4275b.onAcknowledgePurchaseResponse(C1097k.f3056k);
        } else if (!this.f3011n) {
            interfaceC4275b.onAcknowledgePurchaseResponse(C1097k.f3047b);
        } else if (m24563s(new CallableC4305x(this, c4272a, interfaceC4275b), 30000L, new RunnableC4274a0(this, interfaceC4275b)) == null) {
            interfaceC4275b.onAcknowledgePurchaseResponse(m24589F());
        }
    }

    @Override // com.android.billingclient.api.AbstractC1083a
    /* renamed from: b */
    public void mo24579b(C4282e c4282e, InterfaceC4285f interfaceC4285f) {
        if (!mo24577d()) {
            interfaceC4285f.onConsumeResponse(C1097k.f3062q, c4282e.m16854a());
        } else if (m24563s(new CallableC4304w(this, c4282e, interfaceC4285f), 30000L, new RunnableC4303v(this, interfaceC4285f, c4282e)) == null) {
            interfaceC4285f.onConsumeResponse(m24589F(), c4282e.m16854a());
        }
    }

    @Override // com.android.billingclient.api.AbstractC1083a
    /* renamed from: g */
    public Purchase.C1081a mo24575g(String str) {
        if (!mo24577d()) {
            return new Purchase.C1081a(C1097k.f3062q, null);
        }
        if (TextUtils.isEmpty(str)) {
            C1062a.m24710l("BillingClient", "Please provide a valid SKU type.");
            return new Purchase.C1081a(C1097k.f3052g, null);
        }
        try {
            return (Purchase.C1081a) m24563s(new CallableC1091e(this, str), 5000L, null).get(5000L, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException unused) {
            return new Purchase.C1081a(C1097k.f3063r, null);
        } catch (Exception unused2) {
            return new Purchase.C1081a(C1097k.f3057l, null);
        }
    }

    @Override // com.android.billingclient.api.AbstractC1083a
    /* renamed from: h */
    public void mo24574h(C1089d c1089d, InterfaceC4289h interfaceC4289h) {
        if (!mo24577d()) {
            interfaceC4289h.onSkuDetailsResponse(C1097k.f3062q, null);
            return;
        }
        String m24542a = c1089d.m24542a();
        List<String> m24541b = c1089d.m24541b();
        if (TextUtils.isEmpty(m24542a)) {
            C1062a.m24710l("BillingClient", "Please fix the input params. SKU type can't be empty.");
            interfaceC4289h.onSkuDetailsResponse(C1097k.f3052g, null);
            return;
        }
        boolean z = this.f3014q;
        boolean z2 = this.f3015r;
        if (m24541b == null) {
            C1062a.m24710l("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            interfaceC4289h.onSkuDetailsResponse(C1097k.f3051f, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : m24541b) {
            arrayList.add(new C1099m.C1100a().m24528a(str).m24527b());
        }
        if (m24563s(new CallableC1093g(this, m24542a, arrayList, null, interfaceC4289h), 30000L, new RunnableC4301t(this, interfaceC4289h)) == null) {
            interfaceC4289h.onSkuDetailsResponse(m24589F(), null);
        }
    }

    @Override // com.android.billingclient.api.AbstractC1083a
    /* renamed from: i */
    public void mo24573i(InterfaceC4277c interfaceC4277c) {
        ServiceInfo serviceInfo;
        if (mo24577d()) {
            C1062a.m24713i("BillingClient", "Service connection is valid. No need to re-initialize.");
            interfaceC4277c.onBillingSetupFinished(C1097k.f3061p);
            return;
        }
        int i = this.f2998a;
        if (i == 1) {
            C1062a.m24710l("BillingClient", "Client is already in the process of connecting to billing service.");
            interfaceC4277c.onBillingSetupFinished(C1097k.f3049d);
        } else if (i == 3) {
            C1062a.m24710l("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            interfaceC4277c.onBillingSetupFinished(C1097k.f3062q);
        } else {
            this.f2998a = 1;
            this.f3001d.m16848b();
            C1062a.m24713i("BillingClient", "Starting in-app billing setup.");
            this.f3005h = new ServiceConnectionC1086a(this, interfaceC4277c, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f3003f.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty() && (serviceInfo = queryIntentServices.get(0).serviceInfo) != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if ("com.android.vending".equals(str) && str2 != null) {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.f2999b);
                    if (this.f3003f.bindService(intent2, this.f3005h, 1)) {
                        C1062a.m24713i("BillingClient", "Service was bonded successfully.");
                        return;
                    }
                    C1062a.m24710l("BillingClient", "Connection to Billing service is blocked.");
                } else {
                    C1062a.m24710l("BillingClient", "The device doesn't have valid Play Store.");
                }
            }
            this.f2998a = 0;
            C1062a.m24713i("BillingClient", "Billing service unavailable on device.");
            interfaceC4277c.onBillingSetupFinished(C1097k.f3048c);
        }
    }

    /* renamed from: j */
    public final void m24572j(Context context, InterfaceC4287g interfaceC4287g, boolean z) {
        Context applicationContext = context.getApplicationContext();
        this.f3003f = applicationContext;
        this.f3001d = new C4298q(applicationContext, interfaceC4287g);
        this.f3002e = context;
        this.f3016s = z;
    }

    /* renamed from: w */
    public final void m24559w(Runnable runnable) {
        if (Thread.interrupted()) {
            return;
        }
        this.f3000c.post(runnable);
    }
}
