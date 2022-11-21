package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.pay.Information;
import com.badlogic.gdx.pay.Offer;
import com.badlogic.gdx.pay.OfferType;
import com.badlogic.gdx.pay.PurchaseManagerConfig;
import com.badlogic.gdx.pay.PurchaseObserver;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.items.DoubleGainShardItem;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import java.io.StringWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import net.bytebuddy.utility.JavaConstant;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class PurchaseManager extends Manager.ManagerAdapter {

    /* renamed from: d */
    public RewardingAdConfig[] f9994d;

    /* renamed from: k */
    public IntArray[] f9995k;

    /* renamed from: p */
    public final DelayedRemovalArray<PurchaseManagerListener> f9996p;
    public com.badlogic.gdx.pay.PurchaseManager purchaseManager;

    /* renamed from: a */
    public boolean f9992a = false;
    public final Array<Transaction> transactions = new Array<>();

    /* renamed from: b */
    public final Array<String> f9993b = new Array<>(false, 8, String.class);

    /* renamed from: com.prineside.tdi2.managers.PurchaseManager$1 */
    /* loaded from: classes2.dex */
    public class C18411 implements com.badlogic.gdx.pay.PurchaseManager {

        /* renamed from: a */
        public PurchaseObserver f9997a;

        /* renamed from: b */
        public PurchaseManagerConfig f9998b;

        @Override // com.badlogic.gdx.pay.PurchaseManager
        public void dispose() {
        }

        @Override // com.badlogic.gdx.pay.PurchaseManager
        public boolean installed() {
            return false;
        }

        @Override // com.badlogic.gdx.pay.PurchaseManager
        public void purchase(final String str) {
            Game.f8589i.uiManager.dialog.showConfirm("Confirm purchase?", new Runnable() { // from class: com.prineside.tdi2.managers.PurchaseManager.1.1
                @Override // java.lang.Runnable
                public void run() {
                    Transaction transaction = new Transaction();
                    transaction.setIdentifier(str);
                    transaction.setOrderId(Math.random() + JavaConstant.Dynamic.DEFAULT_NAME + str);
                    StringBuilder sb = new StringBuilder();
                    sb.append("abcd");
                    sb.append(Math.random());
                    transaction.setRequestId(sb.toString());
                    transaction.setStoreName(PurchaseManagerConfig.STORE_NAME_DESKTOP_WINDOWS);
                    transaction.setPurchaseTime(new Date());
                    transaction.setPurchaseText("Purchased: " + str);
                    transaction.setReversalTime(null);
                    transaction.setReversalText(null);
                    transaction.setTransactionData("{}");
                    transaction.setTransactionDataSignature(Math.random() + "");
                    C18411.this.f9997a.handlePurchase(transaction);
                }
            }, new Runnable() { // from class: com.prineside.tdi2.managers.PurchaseManager.1.2
                @Override // java.lang.Runnable
                public void run() {
                    C18411.this.f9997a.handlePurchaseError(new Throwable());
                }
            });
        }

        @Override // com.badlogic.gdx.pay.PurchaseManager
        public void purchaseRestore() {
        }

        @Override // com.badlogic.gdx.pay.PurchaseManager
        public String storeName() {
            return PurchaseManagerConfig.STORE_NAME_DESKTOP_WINDOWS;
        }

        @Override // com.badlogic.gdx.pay.PurchaseManager
        public void install(PurchaseObserver purchaseObserver, PurchaseManagerConfig purchaseManagerConfig, boolean z) {
            this.f9997a = purchaseObserver;
            this.f9998b = purchaseManagerConfig;
            purchaseObserver.handleInstall();
        }

        @Override // com.badlogic.gdx.pay.InformationFinder
        public Information getInformation(String str) {
            Information.Builder localName = Information.newBuilder().localName(str);
            return localName.localDescription(str + " description").localPricing("19,99 USD").priceCurrencyCode("USD").build();
        }
    }

    /* renamed from: com.prineside.tdi2.managers.PurchaseManager$2 */
    /* loaded from: classes2.dex */
    public class C18442 implements PurchaseObserver {
        public C18442() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m21528b(Transaction transaction) {
            PurchaseManager.this.handlePurchase(transaction);
        }

        @Override // com.badlogic.gdx.pay.PurchaseObserver
        public void handleInstall() {
            Logger.log("PurchaseManager", "handleInstall");
            PurchaseManager.this.f9992a = true;
        }

        @Override // com.badlogic.gdx.pay.PurchaseObserver
        public void handleInstallError(Throwable th) {
            Logger.log("PurchaseManager", "handleInstallError");
            th.printStackTrace();
        }

        @Override // com.badlogic.gdx.pay.PurchaseObserver
        public void handlePurchase(final Transaction transaction) {
            Logger.log("PurchaseManager", "handlePurchase " + transaction.getIdentifier());
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.y
                @Override // java.lang.Runnable
                public final void run() {
                    PurchaseManager.C18442.this.m21528b(transaction);
                }
            });
        }

        @Override // com.badlogic.gdx.pay.PurchaseObserver
        public void handlePurchaseCanceled() {
            Logger.log("PurchaseManager", "handlePurchaseCanceled");
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.PurchaseManager.2.4
                @Override // java.lang.Runnable
                public void run() {
                    PurchaseManager.this.f9996p.begin();
                    int i = PurchaseManager.this.f9996p.size;
                    for (int i2 = 0; i2 < i; i2++) {
                        ((PurchaseManagerListener) PurchaseManager.this.f9996p.get(i2)).gotResponse("handlePurchaseCanceled", null);
                    }
                    PurchaseManager.this.f9996p.end();
                }
            });
        }

        @Override // com.badlogic.gdx.pay.PurchaseObserver
        public void handlePurchaseError(final Throwable th) {
            Logger.error("PurchaseManager", "handlePurchaseError", th);
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.PurchaseManager.2.3
                @Override // java.lang.Runnable
                public void run() {
                    PurchaseManager.this.f9996p.begin();
                    int i = PurchaseManager.this.f9996p.size;
                    for (int i2 = 0; i2 < i; i2++) {
                        ((PurchaseManagerListener) PurchaseManager.this.f9996p.get(i2)).gotResponse("handlePurchaseError", th);
                    }
                    PurchaseManager.this.f9996p.end();
                }
            });
        }

        @Override // com.badlogic.gdx.pay.PurchaseObserver
        public void handleRestore(final Transaction[] transactionArr) {
            Logger.log("PurchaseManager", "handleRestore - " + transactionArr.length + " transactions");
            for (Transaction transaction : transactionArr) {
                Logger.log("PurchaseManager", transaction.getIdentifier());
            }
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.PurchaseManager.2.1
                @Override // java.lang.Runnable
                public void run() {
                    PurchaseManager.this.f9996p.begin();
                    int i = PurchaseManager.this.f9996p.size;
                    for (int i2 = 0; i2 < i; i2++) {
                        for (Transaction transaction2 : transactionArr) {
                            ((PurchaseManagerListener) PurchaseManager.this.f9996p.get(i2)).purchased(transaction2);
                        }
                    }
                    PurchaseManager.this.f9996p.end();
                    PurchaseManager.this.f9996p.begin();
                    int i3 = PurchaseManager.this.f9996p.size;
                    for (int i4 = 0; i4 < i3; i4++) {
                        ((PurchaseManagerListener) PurchaseManager.this.f9996p.get(i4)).gotResponse("handleRestore", transactionArr);
                    }
                    PurchaseManager.this.f9996p.end();
                }
            });
        }

        @Override // com.badlogic.gdx.pay.PurchaseObserver
        public void handleRestoreError(final Throwable th) {
            Logger.error("PurchaseManager", "handleRestoreError", th);
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.PurchaseManager.2.2
                @Override // java.lang.Runnable
                public void run() {
                    PurchaseManager.this.f9996p.begin();
                    int i = PurchaseManager.this.f9996p.size;
                    for (int i2 = 0; i2 < i; i2++) {
                        ((PurchaseManagerListener) PurchaseManager.this.f9996p.get(i2)).gotResponse("handleRestoreError", th);
                    }
                    PurchaseManager.this.f9996p.end();
                }
            });
        }
    }

    /* renamed from: com.prineside.tdi2.managers.PurchaseManager$9 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C18569 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10022a;

        static {
            int[] iArr = new int[Config.ProductId.values().length];
            f10022a = iArr;
            try {
                iArr[Config.ProductId.DOUBLE_GAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10022a[Config.ProductId.PACK_TINY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10022a[Config.ProductId.PACK_SMALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10022a[Config.ProductId.PACK_MEDIUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10022a[Config.ProductId.PACK_LARGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10022a[Config.ProductId.PACK_HUGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10022a[Config.ProductId.ACCELERATOR_PACK_TINY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f10022a[Config.ProductId.ACCELERATOR_PACK_SMALL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f10022a[Config.ProductId.ACCELERATOR_PACK_MEDIUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f10022a[Config.ProductId.ACCELERATOR_PACK_LARGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f10022a[Config.ProductId.ACCELERATOR_PACK_HUGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface PurchaseManagerListener {

        /* loaded from: classes2.dex */
        public static abstract class PurchaseManagerListenerAdapter implements PurchaseManagerListener {
            @Override // com.prineside.tdi2.managers.PurchaseManager.PurchaseManagerListener
            public void gotResponse(String str, Object obj) {
            }

            @Override // com.prineside.tdi2.managers.PurchaseManager.PurchaseManagerListener
            public void purchased(Transaction transaction) {
            }
        }

        void gotResponse(String str, Object obj);

        void purchased(Transaction transaction);
    }

    /* loaded from: classes2.dex */
    public class RewardingAdConfig {
        public int maxViewsPerPeriod;
        public int minViewDelay;
        public int periodLength;

        public RewardingAdConfig(int i, int i2, int i3) {
            if (i2 >= 1) {
                this.periodLength = i;
                this.maxViewsPerPeriod = i2;
                this.minViewDelay = i3;
                return;
            }
            throw new IllegalArgumentException("maxViewsPerPeriod must be > 0: " + i2);
        }
    }

    /* loaded from: classes2.dex */
    public enum RewardingAdsType {
        END_GAME,
        REGULAR,
        CASE_DECRYPTION,
        LOOT_MULTIPLIER;
        
        public static final RewardingAdsType[] values = values();
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<PurchaseManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public PurchaseManager read() {
            return Game.f8589i.purchaseManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public boolean isPurchasesEnabled() {
        return this.f9992a;
    }

    public void addListener(PurchaseManagerListener purchaseManagerListener) {
        if (purchaseManagerListener != null) {
            if (!this.f9996p.contains(purchaseManagerListener, true)) {
                this.f9996p.add(purchaseManagerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    /* renamed from: g */
    public final void m21532g(RewardingAdsType rewardingAdsType) {
        RewardingAdConfig rewardingAdConfig = this.f9994d[rewardingAdsType.ordinal()];
        int timestampSeconds = Game.getTimestampSeconds();
        IntArray intArray = this.f9995k[rewardingAdsType.ordinal()];
        intArray.add(timestampSeconds);
        if (intArray.size > rewardingAdConfig.maxViewsPerPeriod) {
            intArray.removeIndex(0);
        }
        save();
    }

    public int getPapersHourBasePrice() {
        int i;
        int i2;
        float percentValueAsMultiplier = ((float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.SHOP_PURCHASE_BONUS)) + 1.0f;
        long allTime = (long) Game.f8589i.statisticsManager.getAllTime(StatisticsType.GPG);
        int allTime2 = (int) ((((Game.f8589i.statisticsManager.getAllTime(StatisticsType.PT) / 3.0d) / 60.0d) / 60.0d) / 3.0d);
        int i3 = 0;
        if (allTime2 > 0) {
            i = (int) (allTime / allTime2);
        } else {
            i = 0;
        }
        int i4 = 200000;
        try {
            i4 = MathUtils.clamp(Integer.parseInt(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.IAP_GREEN_PAPER_MAX_PER_HOUR)), 100000, 5000000);
        } catch (Exception e) {
            Logger.error("PurchaseManager", "failed to parse dynamic setting", e);
        }
        if (i >= 0) {
            if (i > i4) {
                i3 = i4;
            } else {
                i3 = i;
            }
        }
        if (10000 >= i3) {
            i3 = 10000;
        }
        int round = MathUtils.round(i3 * percentValueAsMultiplier);
        if (round > 100000000) {
            i2 = round % 1000000;
        } else if (round > 10000000) {
            i2 = round % 100000;
        } else if (round > 1000000) {
            i2 = round % 10000;
        } else {
            i2 = round % CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
        }
        return round - i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00d9, code lost:
        if (r15.equals("pack_tiny") == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
        if (r15.equals("pack_small_infinitode2") == false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.prineside.tdi2.Config.ProductId getProductId(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.PurchaseManager.getProductId(java.lang.String):com.prineside.tdi2.Config$ProductId");
    }

    public String getPurchaseIdentifier(Config.ProductId productId) {
        if (Gdx.app.getType() == Application.ApplicationType.iOS) {
            switch (C18569.f10022a[productId.ordinal()]) {
                case 1:
                    return "double_gain_infinitode2";
                case 2:
                    return "pack_tiny_infinitode2";
                case 3:
                    return "pack_small_infinitode2";
                case 4:
                    return "pack_medium_infinitode2";
                case 5:
                    return "pack_large_infinitode2";
                case 6:
                    return "pack_huge_infinitode2";
                case 7:
                    return "accelerator_pack_tiny_infinitode2";
                case 8:
                    return "accelerator_pack_small_infinitode2";
                case 9:
                    return "accelerator_pack_medium_infinitode2";
                case 10:
                    return "accelerator_pack_large_infinitode2";
                case 11:
                    return "accelerator_pack_huge2_infinitode2";
                default:
                    return null;
            }
        }
        switch (C18569.f10022a[productId.ordinal()]) {
            case 1:
                return "double_gain";
            case 2:
                return "pack_tiny";
            case 3:
                return "pack_small";
            case 4:
                return "pack_medium";
            case 5:
                return "pack_large";
            case 6:
                return "pack_huge";
            case 7:
                return "accelerator_pack_tiny";
            case 8:
                return "accelerator_pack_small";
            case 9:
                return "accelerator_pack_medium";
            case 10:
                return "accelerator_pack_large";
            case 11:
                return "accelerator_pack_huge";
            default:
                return null;
        }
    }

    public int getSecondsTillAdIsReady(RewardingAdsType rewardingAdsType) {
        int i;
        RewardingAdConfig rewardingAdConfig = this.f9994d[rewardingAdsType.ordinal()];
        IntArray intArray = this.f9995k[rewardingAdsType.ordinal()];
        int timestampSeconds = Game.getTimestampSeconds();
        int secondsTillCanShowRewardAd = Game.f8589i.actionResolver.getSecondsTillCanShowRewardAd();
        int i2 = intArray.size;
        int i3 = 0;
        int i4 = (i2 != rewardingAdConfig.maxViewsPerPeriod || (i4 = (intArray.items[0] + rewardingAdConfig.periodLength) - timestampSeconds) < 0) ? 0 : 0;
        if (i2 != 0 && (i = (intArray.items[i2 - 1] + rewardingAdConfig.minViewDelay) - timestampSeconds) >= 0) {
            i3 = i;
        }
        return StrictMath.max(secondsTillCanShowRewardAd, StrictMath.max(i4, i3));
    }

    /* renamed from: h */
    public final void m21531h(Transaction transaction) {
        String str;
        Integer valueOf;
        double percentValueAsMultiplier = ((float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.SHOP_PURCHASE_BONUS)) + 1.0f;
        int papersHourBasePrice = getPapersHourBasePrice();
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.IAP_VALIDATION_URL);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        StringBuilder sb = new StringBuilder();
        sb.append(transaction.getStoreName());
        sb.append(";");
        if (Game.f8589i.authManager.getSessionId() == null) {
            str = "g";
        } else {
            str = "u";
        }
        sb.append(str);
        sb.append(";");
        sb.append(transaction.getOrderId());
        final String sb2 = sb.toString();
        Logger.log("PurchaseManager", "validating " + sb2);
        json.writeObjectStart();
        json.writeValue("identifier", transaction.getIdentifier());
        json.writeValue("purchaseCost", Integer.valueOf(transaction.getPurchaseCost()));
        json.writeValue("storeName", transaction.getStoreName());
        json.writeValue("orderId", transaction.getOrderId());
        json.writeValue("requestId", transaction.getRequestId());
        json.writeValue("userId", transaction.getUserId());
        Integer num = null;
        if (transaction.getPurchaseTime() == null) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf((int) (transaction.getPurchaseTime().getTime() / 1000));
        }
        json.writeValue("purchaseTime", valueOf);
        json.writeValue("purchaseText", transaction.getPurchaseText());
        json.writeValue("purchaseCostCurrency", transaction.getPurchaseCostCurrency());
        if (transaction.getReversalTime() != null) {
            num = Integer.valueOf((int) (transaction.getReversalTime().getTime() / 1000));
        }
        json.writeValue("reversalTime", num);
        json.writeValue("reversalText", transaction.getReversalText());
        json.writeValue("transactionData", transaction.getTransactionData());
        json.writeValue("transactionDataSignature", transaction.getTransactionDataSignature());
        json.writeObjectEnd();
        HashMap hashMap = new HashMap();
        hashMap.put("transaction", stringWriter.toString());
        hashMap.put("purchaseMultiplier", String.valueOf(percentValueAsMultiplier));
        hashMap.put("papersPerHour", String.valueOf(papersHourBasePrice));
        if (Game.f8589i.authManager.getSessionId() != null) {
            hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
        }
        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.PurchaseManager.6
            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
                Logger.error("PurchaseManager", "Log IAP Cancelled");
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
                Logger.error("PurchaseManager", "Log IAP Failed", th);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                try {
                    final String resultAsString = httpResponse.getResultAsString();
                    Logger.log("PurchaseManager", resultAsString);
                    if (new JsonReader().parse(resultAsString).getString("status", "error").equals("success")) {
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.PurchaseManager.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Logger.log("PurchaseManager", "Log IAP Success: " + resultAsString);
                                PurchaseManager.this.f9993b.add(sb2);
                                PurchaseManager.this.save();
                            }
                        });
                    } else {
                        Logger.error("PurchaseManager", "Log IAP Error: " + resultAsString);
                    }
                } catch (Exception e) {
                    Logger.error("PurchaseManager", "Log IAP Exception: " + e.getMessage(), e);
                }
            }
        });
    }

    public void handlePurchase(Transaction transaction) {
        Logger.log("PurchaseManager", "handlePurchase " + transaction.getIdentifier());
        this.f9996p.begin();
        int i = this.f9996p.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f9996p.get(i2).purchased(transaction);
        }
        this.f9996p.end();
        this.f9996p.begin();
        int i3 = this.f9996p.size;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f9996p.get(i4).gotResponse("handlePurchase", transaction);
        }
        this.f9996p.end();
        this.transactions.add(transaction);
        save();
    }

    public final void reload() {
        this.transactions.clear();
        this.f9993b.clear();
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        String str = preferencesManager.get("purchaseTransactions", null);
        if (str != null) {
            try {
                Iterator<JsonValue> iterator2 = new JsonReader().parse(str).iterator2();
                while (iterator2.hasNext()) {
                    JsonValue next = iterator2.next();
                    Transaction transaction = new Transaction();
                    transaction.setIdentifier(next.getString("identifier"));
                    transaction.setStoreName(next.getString("storeName"));
                    transaction.setOrderId(next.getString("orderId"));
                    transaction.setRequestId(next.getString("requestId"));
                    transaction.setUserId(next.getString("userId"));
                    transaction.setPurchaseTime(new Date(next.getLong("purchaseTime")));
                    transaction.setPurchaseText(next.getString("purchaseText"));
                    transaction.setPurchaseCost(next.getInt("purchaseCost"));
                    transaction.setPurchaseCostCurrency(next.getString("purchaseCostCurrency"));
                    transaction.setReversalTime(new Date(next.getLong("reversalTime")));
                    transaction.setReversalText(next.getString("reversalText"));
                    transaction.setTransactionData(next.getString("transactionData"));
                    transaction.setTransactionDataSignature(next.getString("transactionDataSignature"));
                    this.transactions.add(transaction);
                }
            } catch (Exception e) {
                Logger.error("PurchaseManager", "failed to load transactions", e);
            }
        }
        String str2 = preferencesManager.get("purchaseValidatedTransactions", null);
        if (str2 != null) {
            try {
                Iterator<JsonValue> iterator22 = new JsonReader().parse(str2).iterator2();
                while (iterator22.hasNext()) {
                    this.f9993b.add(iterator22.next().asString());
                }
            } catch (Exception e2) {
                Logger.error("PurchaseManager", "failed to load validated transactions", e2);
            }
        }
        int i = 0;
        for (IntArray intArray : this.f9995k) {
            intArray.clear();
        }
        String str3 = preferencesManager.get("rewardingAdsWatchTimestamps", null);
        if (str3 != null) {
            try {
                Iterator<JsonValue> iterator23 = new JsonReader().parse(str3).iterator2();
                while (iterator23.hasNext()) {
                    int i2 = i + 1;
                    IntArray intArray2 = this.f9995k[i];
                    Iterator<JsonValue> iterator24 = iterator23.next().iterator2();
                    while (iterator24.hasNext()) {
                        intArray2.add(iterator24.next().asInt());
                    }
                    i = i2;
                }
            } catch (Exception e3) {
                Logger.error("PurchaseManager", "failed to load rewardingAdsWatchTimestamps", e3);
            }
        }
        final Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.managers.PurchaseManager.4
            @Override // java.lang.Runnable
            public void run() {
                String str4;
                int i3 = 0;
                while (true) {
                    Array<Transaction> array = PurchaseManager.this.transactions;
                    if (i3 < array.size) {
                        Transaction transaction2 = array.get(i3);
                        Array array2 = PurchaseManager.this.f9993b;
                        StringBuilder sb = new StringBuilder();
                        sb.append(transaction2.getStoreName());
                        sb.append(";");
                        if (Game.f8589i.authManager.getSessionId() == null) {
                            str4 = "g";
                        } else {
                            str4 = "u";
                        }
                        sb.append(str4);
                        sb.append(";");
                        sb.append(transaction2.getOrderId());
                        if (!array2.contains(sb.toString(), false)) {
                            PurchaseManager.this.m21531h(transaction2);
                        }
                        i3++;
                    } else {
                        return;
                    }
                }
            }
        };
        if (Game.f8589i.isLoaded()) {
            Gdx.app.postRunnable(runnable);
        } else {
            Game.f8589i.addListener(new Game.GameListener() { // from class: com.prineside.tdi2.managers.PurchaseManager.5
                @Override // com.prineside.tdi2.Game.GameListener
                public void gameLoaded() {
                    Gdx.app.postRunnable(runnable);
                }

                @Override // com.prineside.tdi2.Game.GameListener
                public void gameStartedLoading() {
                }

                @Override // com.prineside.tdi2.Game.GameListener
                public void render() {
                }
            });
        }
        Logger.log("PurchaseManager", "reloaded, " + this.transactions.size + " transactions, " + this.f9993b.size + " validated transactions");
    }

    public void removeListener(PurchaseManagerListener purchaseManagerListener) {
        if (purchaseManagerListener != null) {
            this.f9996p.removeValue(purchaseManagerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public boolean rewardingAdsAvailable() {
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.ENABLE_REWARDING_ADS) == 0.0d || !"true".equals(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.ADS_ENABLED))) {
            return false;
        }
        return Game.f8589i.actionResolver.rewardAdsAvailable();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.PurchaseManager.7
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                PurchaseManager.this.reload();
            }
        });
        reload();
        addListener(new PurchaseManagerListener() { // from class: com.prineside.tdi2.managers.PurchaseManager.8
            @Override // com.prineside.tdi2.managers.PurchaseManager.PurchaseManagerListener
            public void gotResponse(String str, Object obj) {
                if (str.equals("handlePurchaseError")) {
                    Logger.error("PurchaseManager", "handlePurchaseError - trying restore");
                    PurchaseManager.this.purchaseManager.purchaseRestore();
                }
            }

            @Override // com.prineside.tdi2.managers.PurchaseManager.PurchaseManagerListener
            public void purchased(Transaction transaction) {
                double percentValueAsMultiplier = ((float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.SHOP_PURCHASE_BONUS)) + 1.0f;
                PurchaseManager.this.getPapersHourBasePrice();
                try {
                    PurchaseManager.this.m21531h(transaction);
                } catch (Exception e) {
                    Logger.error("PurchaseManager", "failed to send IAP for validation", e);
                }
                Config.ProductId productId = PurchaseManager.this.getProductId(transaction.getIdentifier());
                switch (C18569.f10022a[productId.ordinal()]) {
                    case 1:
                        if (Game.f8589i.progressManager.isDoubleGainEnabled() && !Game.f8589i.progressManager.isDoubleGainPermanent()) {
                            Game.f8589i.progressManager.addItems(Item.C1543D.ACCELERATOR, DoubleGainShardItem.getAcceleratorsForDuration(Game.f8589i.progressManager.getTempDoubleGainDurationLeft()));
                        }
                        Game.f8589i.progressManager.enableDoubleGainPermanently();
                        break;
                    case 2:
                        int papersHourBasePrice = PurchaseManager.this.getPapersHourBasePrice();
                        Game.f8589i.progressManager.addGreenPapers(papersHourBasePrice);
                        IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems.items.add(new ItemStack(Item.C1543D.GREEN_PAPER, papersHourBasePrice));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 3:
                        int round = MathUtils.round(PurchaseManager.this.getPapersHourBasePrice() * 3 * 1.1f);
                        Game.f8589i.progressManager.addGreenPapers(round);
                        Game.f8589i.progressManager.addItems(Item.C1543D.RARITY_BOOST, 1);
                        IssuedItems issuedItems2 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems2.items.add(new ItemStack(Item.C1543D.GREEN_PAPER, round));
                        issuedItems2.items.add(new ItemStack(Item.C1543D.RARITY_BOOST, 1));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems2, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 4:
                        int round2 = MathUtils.round(PurchaseManager.this.getPapersHourBasePrice() * 10 * 1.2f);
                        Game.f8589i.progressManager.addGreenPapers(round2);
                        Game.f8589i.progressManager.addItems(Item.C1543D.RARITY_BOOST, 3);
                        IssuedItems issuedItems3 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems3.items.add(new ItemStack(Item.C1543D.GREEN_PAPER, round2));
                        issuedItems3.items.add(new ItemStack(Item.C1543D.RARITY_BOOST, 3));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems3, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 5:
                        int round3 = MathUtils.round(PurchaseManager.this.getPapersHourBasePrice() * 25 * 1.35f);
                        Game.f8589i.progressManager.addGreenPapers(round3);
                        Game.f8589i.progressManager.addItems(Item.C1543D.RARITY_BOOST, 10);
                        IssuedItems issuedItems4 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems4.items.add(new ItemStack(Item.C1543D.GREEN_PAPER, round3));
                        issuedItems4.items.add(new ItemStack(Item.C1543D.RARITY_BOOST, 10));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems4, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 6:
                        int round4 = MathUtils.round(PurchaseManager.this.getPapersHourBasePrice() * 50 * 1.5f);
                        Game.f8589i.progressManager.addGreenPapers(round4);
                        Game.f8589i.progressManager.addItems(Item.C1543D.RARITY_BOOST, 25);
                        IssuedItems issuedItems5 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems5.items.add(new ItemStack(Item.C1543D.GREEN_PAPER, round4));
                        issuedItems5.items.add(new ItemStack(Item.C1543D.RARITY_BOOST, 25));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems5, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 7:
                        Double.isNaN(percentValueAsMultiplier);
                        int round5 = MathUtils.round((float) (percentValueAsMultiplier * 20.0d));
                        Game.f8589i.progressManager.addAccelerators(round5);
                        IssuedItems issuedItems6 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems6.items.add(new ItemStack(Item.C1543D.ACCELERATOR, round5));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems6, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 8:
                        Double.isNaN(percentValueAsMultiplier);
                        int round6 = MathUtils.round((float) (percentValueAsMultiplier * 69.0d));
                        Game.f8589i.progressManager.addAccelerators(round6);
                        IssuedItems issuedItems7 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems7.items.add(new ItemStack(Item.C1543D.ACCELERATOR, round6));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems7, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 9:
                        Double.isNaN(percentValueAsMultiplier);
                        int round7 = MathUtils.round((float) (percentValueAsMultiplier * 270.0d));
                        Game.f8589i.progressManager.addAccelerators(round7);
                        IssuedItems issuedItems8 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems8.items.add(new ItemStack(Item.C1543D.ACCELERATOR, round7));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems8, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 10:
                        Double.isNaN(percentValueAsMultiplier);
                        int round8 = MathUtils.round((float) (percentValueAsMultiplier * 750.0d));
                        Game.f8589i.progressManager.addAccelerators(round8);
                        IssuedItems issuedItems9 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems9.items.add(new ItemStack(Item.C1543D.ACCELERATOR, round8));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems9, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                    case 11:
                        Double.isNaN(percentValueAsMultiplier);
                        int round9 = MathUtils.round((float) (percentValueAsMultiplier * 2000.0d));
                        Game.f8589i.progressManager.addAccelerators(round9);
                        IssuedItems issuedItems10 = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                        issuedItems10.items.add(new ItemStack(Item.C1543D.ACCELERATOR, round9));
                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems10, true);
                        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        break;
                }
                Game.f8589i.actionResolver.logIAP(productId, transaction);
            }
        });
    }

    public PurchaseManager() {
        RewardingAdsType[] rewardingAdsTypeArr = RewardingAdsType.values;
        this.f9994d = new RewardingAdConfig[rewardingAdsTypeArr.length];
        this.f9995k = new IntArray[rewardingAdsTypeArr.length];
        this.f9996p = new DelayedRemovalArray<>(false, 1);
        for (RewardingAdsType rewardingAdsType : rewardingAdsTypeArr) {
            this.f9995k[rewardingAdsType.ordinal()] = new IntArray();
        }
        this.f9994d[RewardingAdsType.END_GAME.ordinal()] = new RewardingAdConfig(90, 1, 90);
        this.f9994d[RewardingAdsType.REGULAR.ordinal()] = new RewardingAdConfig(14400, 10, 300);
        this.f9994d[RewardingAdsType.CASE_DECRYPTION.ordinal()] = new RewardingAdConfig(86400, 5, 3600);
        this.f9994d[RewardingAdsType.LOOT_MULTIPLIER.ordinal()] = new RewardingAdConfig(88, 1, 89);
        com.badlogic.gdx.pay.PurchaseManager purchaseManager = Game.f8589i.actionResolver.getPurchaseManager();
        this.purchaseManager = purchaseManager;
        if (purchaseManager != null) {
            Logger.log("PurchaseManager", "Has manager");
            PurchaseManagerConfig purchaseManagerConfig = new PurchaseManagerConfig();
            purchaseManagerConfig.addOffer(new Offer().setType(OfferType.ENTITLEMENT).setIdentifier(getPurchaseIdentifier(Config.ProductId.DOUBLE_GAIN)));
            Offer offer = new Offer();
            OfferType offerType = OfferType.CONSUMABLE;
            purchaseManagerConfig.addOffer(offer.setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.PACK_TINY)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.PACK_SMALL)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.PACK_MEDIUM)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.PACK_LARGE)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.PACK_HUGE)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_TINY)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_MEDIUM)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_SMALL)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_LARGE)));
            purchaseManagerConfig.addOffer(new Offer().setType(offerType).setIdentifier(getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_HUGE)));
            purchaseManagerConfig.addStoreParam(PurchaseManagerConfig.STORE_NAME_ANDROID_GOOGLE, Config.PAYMENTS_STORE_PARAM_ANDROID_GOOGLE);
            this.purchaseManager.install(new C18442(), purchaseManagerConfig, true);
            return;
        }
        Logger.log("PurchaseManager", "Has no manager :(");
    }

    public boolean canShowRewardingAd(RewardingAdsType rewardingAdsType) {
        if (!rewardingAdsAvailable() || !Game.f8589i.actionResolver.canShowRewardAd() || getSecondsTillAdIsReady(rewardingAdsType) != 0) {
            return false;
        }
        return true;
    }

    public final void save() {
        IntArray[] intArrayArr;
        long j;
        if (Config.isHeadless()) {
            return;
        }
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        int i = 0;
        while (true) {
            Array<Transaction> array = this.transactions;
            if (i >= array.size) {
                break;
            }
            Transaction transaction = array.get(i);
            json.writeObjectStart();
            json.writeValue("identifier", transaction.getIdentifier());
            json.writeValue("storeName", transaction.getStoreName());
            json.writeValue("orderId", transaction.getOrderId());
            json.writeValue("requestId", transaction.getRequestId());
            json.writeValue("userId", transaction.getUserId());
            long j2 = 0;
            if (transaction.getPurchaseTime() != null) {
                j = transaction.getPurchaseTime().getTime();
            } else {
                j = 0;
            }
            json.writeValue("purchaseTime", Long.valueOf(j));
            json.writeValue("purchaseText", transaction.getPurchaseText());
            json.writeValue("purchaseCost", Integer.valueOf(transaction.getPurchaseCost()));
            json.writeValue("purchaseCostCurrency", transaction.getPurchaseCostCurrency());
            if (transaction.getReversalTime() != null) {
                j2 = transaction.getReversalTime().getTime();
            }
            json.writeValue("reversalTime", Long.valueOf(j2));
            json.writeValue("reversalText", transaction.getReversalText());
            json.writeValue("transactionData", transaction.getTransactionData());
            json.writeValue("transactionDataSignature", transaction.getTransactionDataSignature());
            json.writeObjectEnd();
            i++;
        }
        json.writeArrayEnd();
        preferencesManager.set("purchaseTransactions", stringWriter.toString());
        Json json2 = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter2 = new StringWriter();
        json2.setWriter(stringWriter2);
        json2.writeArrayStart();
        int i2 = 0;
        while (true) {
            Array<String> array2 = this.f9993b;
            if (i2 >= array2.size) {
                break;
            }
            json2.writeValue(array2.get(i2));
            i2++;
        }
        json2.writeArrayEnd();
        preferencesManager.set("purchaseValidatedTransactions", stringWriter2.toString());
        Json json3 = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter3 = new StringWriter();
        json3.setWriter(stringWriter3);
        json3.writeArrayStart();
        for (IntArray intArray : this.f9995k) {
            json3.writeArrayStart();
            for (int i3 = 0; i3 < intArray.size; i3++) {
                json3.writeValue(Integer.valueOf(intArray.items[i3]));
            }
            json3.writeArrayEnd();
        }
        json3.writeArrayEnd();
        preferencesManager.set("rewardingAdsWatchTimestamps", stringWriter3.toString());
        preferencesManager.flush();
    }

    public void showRewardingAd(final RewardingAdsType rewardingAdsType, final ObjectRetriever<Boolean> objectRetriever) {
        if (canShowRewardingAd(rewardingAdsType)) {
            Game.f8589i.actionResolver.showRewardAd(new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.managers.PurchaseManager.3
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(Boolean bool) {
                    if (bool.booleanValue()) {
                        Game.f8589i.statisticsManager.registerDelta(StatisticsType.RVW, 1.0d);
                        ProgressManager progressManager = Game.f8589i.progressManager;
                        progressManager.videosWatchedForDoubleGain++;
                        progressManager.videosWatchedForLuckyShot++;
                        progressManager.requireDelayedSave();
                    }
                    Game.f8589i.actionResolver.logRewardedVideoViewed(rewardingAdsType);
                    objectRetriever.retrieved(bool);
                }
            }, rewardingAdsType);
            m21532g(rewardingAdsType);
            return;
        }
        Logger.log("PurchaseManager", getSecondsTillAdIsReady(rewardingAdsType) + " seconds till ad is ready " + rewardingAdsAvailable() + " " + Game.f8589i.actionResolver.canShowRewardAd() + " " + getSecondsTillAdIsReady(rewardingAdsType));
        objectRetriever.retrieved(Boolean.FALSE);
    }
}
