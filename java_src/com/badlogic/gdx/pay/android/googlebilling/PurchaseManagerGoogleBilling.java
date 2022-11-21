package com.badlogic.gdx.pay.android.googlebilling;

import android.app.Activity;
import com.android.billingclient.api.AbstractC1083a;
import com.android.billingclient.api.C1087c;
import com.android.billingclient.api.C1089d;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.pay.FetchItemInformationException;
import com.badlogic.gdx.pay.FreeTrialPeriod;
import com.badlogic.gdx.pay.GdxPayException;
import com.badlogic.gdx.pay.Information;
import com.badlogic.gdx.pay.InvalidItemException;
import com.badlogic.gdx.pay.ItemAlreadyOwnedException;
import com.badlogic.gdx.pay.Offer;
import com.badlogic.gdx.pay.OfferType;
import com.badlogic.gdx.pay.PurchaseManager;
import com.badlogic.gdx.pay.PurchaseManagerConfig;
import com.badlogic.gdx.pay.PurchaseObserver;
import com.badlogic.gdx.pay.Transaction;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p093j1.C4272a;
import p093j1.C4279d;
import p093j1.C4282e;
import p093j1.InterfaceC4275b;
import p093j1.InterfaceC4277c;
import p093j1.InterfaceC4285f;
import p093j1.InterfaceC4287g;
import p093j1.InterfaceC4289h;
/* loaded from: classes.dex */
public class PurchaseManagerGoogleBilling implements PurchaseManager, InterfaceC4287g {

    /* renamed from: b */
    public final Activity f5603b;

    /* renamed from: d */
    public boolean f5605d;

    /* renamed from: e */
    public boolean f5606e;

    /* renamed from: f */
    public AbstractC1083a f5607f;

    /* renamed from: g */
    public PurchaseObserver f5608g;

    /* renamed from: h */
    public PurchaseManagerConfig f5609h;

    /* renamed from: a */
    public final Map<String, Information> f5602a = new ConcurrentHashMap();

    /* renamed from: c */
    public final Map<String, SkuDetails> f5604c = new HashMap();

    /* renamed from: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$6 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C12876 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5616a;

        static {
            int[] iArr = new int[OfferType.values().length];
            f5616a = iArr;
            try {
                iArr[OfferType.CONSUMABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5616a[OfferType.ENTITLEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5616a[OfferType.SUBSCRIPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public C4279d.C4280a getBillingFlowParams(SkuDetails skuDetails) {
        return C4279d.m16870e().m16855b(skuDetails);
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public boolean installed() {
        return this.f5606e;
    }

    /* renamed from: k */
    public final FreeTrialPeriod m23874k(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                return Iso8601DurationStringToFreeTrialPeriodConverter.convertToFreeTrialPeriod(str);
            } catch (RuntimeException e) {
                Application application = Gdx.app;
                application.error("GdxPay/GoogleBilling", "Failed to parse iso8601Duration: " + str, e);
            }
        }
        return null;
    }

    /* renamed from: m */
    public final String m23872m() {
        String str = null;
        int i = 0;
        while (i < this.f5609h.getOfferCount()) {
            String m23870o = m23870o(this.f5609h.getOffer(i).getType());
            if (str != null && !str.equals(m23870o)) {
                throw new IllegalStateException("Cannot support OfferType Subscription and other types in the same app");
            }
            i++;
            str = m23870o;
        }
        return str;
    }

    /* renamed from: q */
    public final void m23868q(final Runnable runnable) {
        this.f5607f.mo24573i(new InterfaceC4277c() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.2
            @Override // p093j1.InterfaceC4277c
            public void onBillingServiceDisconnected() {
                PurchaseManagerGoogleBilling.this.f5605d = false;
            }

            @Override // p093j1.InterfaceC4277c
            public void onBillingSetupFinished(C1087c c1087c) {
                boolean z;
                int m24549a = c1087c.m24549a();
                Application application = Gdx.app;
                application.debug("GdxPay/GoogleBilling", "Setup finished. Response code: " + m24549a);
                PurchaseManagerGoogleBilling purchaseManagerGoogleBilling = PurchaseManagerGoogleBilling.this;
                if (m24549a == 0) {
                    z = true;
                } else {
                    z = false;
                }
                purchaseManagerGoogleBilling.f5605d = z;
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public String storeName() {
        return PurchaseManagerConfig.STORE_NAME_ANDROID_GOOGLE;
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void dispose() {
        if (this.f5608g != null) {
            this.f5608g = null;
            this.f5609h = null;
            Gdx.app.log("GdxPay/GoogleBilling", "disposed observer and config");
        }
        AbstractC1083a abstractC1083a = this.f5607f;
        if (abstractC1083a != null && abstractC1083a.mo24577d()) {
            this.f5607f.mo24578c();
            this.f5607f = null;
        }
        this.f5606e = false;
    }

    @Override // com.badlogic.gdx.pay.InformationFinder
    public Information getInformation(String str) {
        Information information = this.f5602a.get(str);
        if (information == null) {
            return Information.UNAVAILABLE;
        }
        return information;
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void install(PurchaseObserver purchaseObserver, PurchaseManagerConfig purchaseManagerConfig, boolean z) {
        this.f5608g = purchaseObserver;
        this.f5609h = purchaseManagerConfig;
        this.f5606e = false;
        m23868q(new Runnable() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.1
            @Override // java.lang.Runnable
            public void run() {
                if (PurchaseManagerGoogleBilling.this.f5608g == null) {
                    return;
                }
                if (!PurchaseManagerGoogleBilling.this.f5605d) {
                    PurchaseManagerGoogleBilling.this.f5608g.handleInstallError(new GdxPayException("Connection to Play Billing not possible"));
                } else {
                    PurchaseManagerGoogleBilling.this.m23873l();
                }
            }
        });
    }

    /* renamed from: l */
    public final void m23873l() {
        this.f5604c.clear();
        int offerCount = this.f5609h.getOfferCount();
        ArrayList arrayList = new ArrayList(offerCount);
        for (int i = 0; i < offerCount; i++) {
            arrayList.add(this.f5609h.getOffer(i).getIdentifierForStore(storeName()));
        }
        if (arrayList.isEmpty()) {
            Gdx.app.log("GdxPay/GoogleBilling", "No skus configured");
            m23869p();
            return;
        }
        this.f5607f.mo24574h(C1089d.m24540c().m24534b(arrayList).m24533c(m23872m()).m24535a(), new InterfaceC4289h() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.3
            @Override // p093j1.InterfaceC4289h
            public void onSkuDetailsResponse(C1087c c1087c, List<SkuDetails> list) {
                Application application;
                int m24549a = c1087c.m24549a();
                if (PurchaseManagerGoogleBilling.this.f5608g != null && (application = Gdx.app) != null) {
                    if (m24549a != 0) {
                        application.error("GdxPay/GoogleBilling", "onSkuDetailsResponse failed, error code is " + m24549a);
                        if (!PurchaseManagerGoogleBilling.this.f5606e) {
                            PurchaseManagerGoogleBilling.this.f5608g.handleInstallError(new FetchItemInformationException(String.valueOf(m24549a)));
                            return;
                        }
                        return;
                    }
                    if (list != null) {
                        for (SkuDetails skuDetails : list) {
                            PurchaseManagerGoogleBilling.this.f5602a.put(skuDetails.m24606g(), PurchaseManagerGoogleBilling.this.m23875j(skuDetails));
                            PurchaseManagerGoogleBilling.this.f5604c.put(skuDetails.m24606g(), skuDetails);
                        }
                    } else {
                        application.log("GdxPay/GoogleBilling", "skuDetailsList is null");
                    }
                    PurchaseManagerGoogleBilling.this.m23869p();
                }
            }
        });
    }

    /* renamed from: n */
    public final void m23871n(List<Purchase> list, boolean z) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Purchase purchase : list) {
            if (purchase.m24621c() == 1) {
                Transaction transaction = new Transaction();
                transaction.setIdentifier(purchase.m24617g());
                transaction.setOrderId(purchase.m24623a());
                transaction.setRequestId(purchase.m24619e());
                transaction.setStoreName(PurchaseManagerConfig.STORE_NAME_ANDROID_GOOGLE);
                transaction.setPurchaseTime(new Date(purchase.m24620d()));
                transaction.setPurchaseText("Purchased: " + purchase.m24617g());
                transaction.setReversalTime(null);
                transaction.setReversalText(null);
                transaction.setTransactionData(purchase.m24622b());
                transaction.setTransactionDataSignature(purchase.m24618f());
                if (z) {
                    arrayList.add(transaction);
                } else {
                    this.f5608g.handlePurchase(transaction);
                }
                Offer offer = this.f5609h.getOffer(purchase.m24617g());
                if (offer != null) {
                    int i = C12876.f5616a[offer.getType().ordinal()];
                    if (i != 1) {
                        if (i == 2 || i == 3) {
                            if (!purchase.m24616h()) {
                                this.f5607f.mo24580a(C4272a.m16878b().m16875b(purchase.m24619e()).m16876a(), new InterfaceC4275b() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.5
                                    @Override // p093j1.InterfaceC4275b
                                    public void onAcknowledgePurchaseResponse(C1087c c1087c) {
                                    }
                                });
                            }
                        }
                    } else {
                        this.f5607f.mo24579b(C4282e.m16853b().m16850b(purchase.m24619e()).m16851a(), new InterfaceC4285f() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.4
                            @Override // p093j1.InterfaceC4285f
                            public void onConsumeResponse(C1087c c1087c, String str) {
                                c1087c.m24549a();
                            }
                        });
                    }
                }
            }
        }
        if (z) {
            this.f5608g.handleRestore((Transaction[]) arrayList.toArray(new Transaction[0]));
        }
    }

    /* renamed from: o */
    public final String m23870o(OfferType offerType) {
        int i = C12876.f5616a[offerType.ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3) {
                return "subs";
            }
            throw new IllegalStateException("Unsupported OfferType: " + offerType);
        }
        return "inapp";
    }

    /* renamed from: p */
    public final void m23869p() {
        if (!this.f5606e) {
            this.f5606e = true;
            this.f5608g.handleInstall();
        }
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void purchase(String str) {
        SkuDetails skuDetails = this.f5604c.get(str);
        if (skuDetails == null) {
            this.f5608g.handlePurchaseError(new InvalidItemException(str));
        } else {
            this.f5607f.mo24576e(this.f5603b, getBillingFlowParams(skuDetails).m16856a());
        }
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void purchaseRestore() {
        Purchase.C1081a mo24575g = this.f5607f.mo24575g(m23872m());
        int m24613c = mo24575g.m24613c();
        List<Purchase> m24614b = mo24575g.m24614b();
        if (m24613c == 0 && m24614b != null) {
            m23871n(m24614b, true);
            return;
        }
        Application application = Gdx.app;
        application.error("GdxPay/GoogleBilling", "queryPurchases failed with responseCode " + m24613c);
        PurchaseObserver purchaseObserver = this.f5608g;
        purchaseObserver.handleRestoreError(new GdxPayException("queryPurchases failed with responseCode " + m24613c));
    }

    public PurchaseManagerGoogleBilling(Activity activity) {
        this.f5603b = activity;
        this.f5607f = AbstractC1083a.m24598f(activity).m24595c(this).m24596b().m24597a();
    }

    /* renamed from: j */
    public final Information m23875j(SkuDetails skuDetails) {
        Information.Builder priceInCents = Information.newBuilder().localName(skuDetails.m24605h()).freeTrialPeriod(m23874k(skuDetails.m24611b())).localDescription(skuDetails.m24612a()).localPricing(skuDetails.m24609d()).priceCurrencyCode(skuDetails.m24607f()).priceInCents(Integer.valueOf((int) (skuDetails.m24608e() / 10000)));
        double m24608e = skuDetails.m24608e();
        Double.isNaN(m24608e);
        return priceInCents.priceAsDouble(Double.valueOf(m24608e / 1000000.0d)).build();
    }

    @Override // p093j1.InterfaceC4287g
    public void onPurchasesUpdated(C1087c c1087c, List<Purchase> list) {
        int m24549a = c1087c.m24549a();
        PurchaseObserver purchaseObserver = this.f5608g;
        if (purchaseObserver == null) {
            return;
        }
        if (m24549a == 0 && list != null) {
            m23871n(list, false);
        } else if (m24549a == 1) {
            purchaseObserver.handlePurchaseCanceled();
        } else if (m24549a == 7) {
            purchaseObserver.handlePurchaseError(new ItemAlreadyOwnedException());
        } else if (m24549a == 4) {
            purchaseObserver.handlePurchaseError(new InvalidItemException());
        } else {
            Application application = Gdx.app;
            application.error("GdxPay/GoogleBilling", "onPurchasesUpdated failed with responseCode " + m24549a);
            PurchaseObserver purchaseObserver2 = this.f5608g;
            purchaseObserver2.handlePurchaseError(new GdxPayException("onPurchasesUpdated failed with responseCode " + m24549a));
        }
    }
}
