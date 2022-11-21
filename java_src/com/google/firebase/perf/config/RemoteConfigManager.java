package com.google.firebase.perf.config;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.provider.FirebasePerfProvider;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p029c7.C1078a;
import p097j5.InterfaceC4338e;
import p097j5.InterfaceC4340f;
import p099j7.C4372e;
import p126m7.C4656e;
import p126m7.C4669p;
import p126m7.InterfaceC4665l;
import p161q6.InterfaceC5434b;
@Keep
/* loaded from: classes2.dex */
public class RemoteConfigManager {
    private static final long FETCH_NEVER_HAPPENED_TIMESTAMP_MS = 0;
    private static final String FIREPERF_FRC_NAMESPACE_NAME = "fireperf";
    private static final long MIN_APP_START_CONFIG_FETCH_DELAY_MS = 5000;
    private static final int RANDOM_APP_START_CONFIG_FETCH_DELAY_MS = 25000;
    private final ConcurrentHashMap<String, InterfaceC4665l> allRcConfigMap;
    private final long appStartConfigFetchDelayInMs;
    private final long appStartTimeInMs;
    private final Executor executor;
    private C4656e firebaseRemoteConfig;
    private long firebaseRemoteConfigLastFetchTimestampMs;
    private InterfaceC5434b<C4669p> firebaseRemoteConfigProvider;
    private static final C1078a logger = C1078a.m24639e();
    private static final RemoteConfigManager instance = new RemoteConfigManager();
    private static final long TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS = TimeUnit.HOURS.toMillis(12);

    private RemoteConfigManager() {
        this(new ThreadPoolExecutor(0, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue()), null);
    }

    public static RemoteConfigManager getInstance() {
        return instance;
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    private boolean hasAppStartConfigFetchDelayElapsed(long j) {
        return j - this.appStartTimeInMs >= this.appStartConfigFetchDelayInMs;
    }

    private boolean hasLastFetchBecomeStale(long j) {
        return j - this.firebaseRemoteConfigLastFetchTimestampMs > TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0 */
    public /* synthetic */ void m22955xc904e813(Boolean bool) {
        syncConfigValues(this.firebaseRemoteConfig.m15866h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1 */
    public /* synthetic */ void m22954xc904e814(Exception exc) {
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
    }

    public long getCurrentSystemTimeMillis() {
        return System.currentTimeMillis();
    }

    public void setFirebaseRemoteConfigProvider(InterfaceC5434b<C4669p> interfaceC5434b) {
        this.firebaseRemoteConfigProvider = interfaceC5434b;
    }

    public RemoteConfigManager(Executor executor, C4656e c4656e) {
        this(executor, c4656e, new Random().nextInt(RANDOM_APP_START_CONFIG_FETCH_DELAY_MS) + MIN_APP_START_CONFIG_FETCH_DELAY_MS);
    }

    public C4372e<Boolean> getBoolean(String str) {
        if (str == null) {
            logger.m24643a("The key to get Remote Config boolean value is null.");
            return C4372e.m16740a();
        }
        InterfaceC4665l remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return C4372e.m16736e(Boolean.valueOf(remoteConfigValue.mo15387d()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.mo15388c().isEmpty()) {
                    logger.m24642b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo15388c(), str);
                }
            }
        }
        return C4372e.m16740a();
    }

    public C4372e<Float> getFloat(String str) {
        if (str == null) {
            logger.m24643a("The key to get Remote Config float value is null.");
            return C4372e.m16740a();
        }
        InterfaceC4665l remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return C4372e.m16736e(Float.valueOf(Double.valueOf(remoteConfigValue.mo15389b()).floatValue()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.mo15388c().isEmpty()) {
                    logger.m24642b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo15388c(), str);
                }
            }
        }
        return C4372e.m16740a();
    }

    public C4372e<Long> getLong(String str) {
        if (str == null) {
            logger.m24643a("The key to get Remote Config long value is null.");
            return C4372e.m16740a();
        }
        InterfaceC4665l remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return C4372e.m16736e(Long.valueOf(remoteConfigValue.mo15390a()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.mo15388c().isEmpty()) {
                    logger.m24642b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo15388c(), str);
                }
            }
        }
        return C4372e.m16740a();
    }

    public C4372e<String> getString(String str) {
        if (str == null) {
            logger.m24643a("The key to get Remote Config String value is null.");
            return C4372e.m16740a();
        }
        InterfaceC4665l remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            return C4372e.m16736e(remoteConfigValue.mo15388c());
        }
        return C4372e.m16740a();
    }

    public boolean isFirebaseRemoteConfigAvailable() {
        InterfaceC5434b<C4669p> interfaceC5434b;
        C4669p c4669p;
        if (this.firebaseRemoteConfig == null && (interfaceC5434b = this.firebaseRemoteConfigProvider) != null && (c4669p = interfaceC5434b.get()) != null) {
            this.firebaseRemoteConfig = c4669p.m15848b(FIREPERF_FRC_NAMESPACE_NAME);
        }
        if (this.firebaseRemoteConfig != null) {
            return true;
        }
        return false;
    }

    public boolean isLastFetchFailed() {
        C4656e c4656e = this.firebaseRemoteConfig;
        if (c4656e == null || c4656e.m15865i().mo15856a() == 1) {
            return true;
        }
        return false;
    }

    public void syncConfigValues(Map<String, InterfaceC4665l> map) {
        this.allRcConfigMap.putAll(map);
        for (String str : this.allRcConfigMap.keySet()) {
            if (!map.containsKey(str)) {
                this.allRcConfigMap.remove(str);
            }
        }
    }

    private InterfaceC4665l getRemoteConfigValue(String str) {
        triggerRemoteConfigFetchIfNecessary();
        if (isFirebaseRemoteConfigAvailable() && this.allRcConfigMap.containsKey(str)) {
            InterfaceC4665l interfaceC4665l = this.allRcConfigMap.get(str);
            if (interfaceC4665l.mo15386e() == 2) {
                logger.m24642b("Fetched value: '%s' for key: '%s' from Firebase Remote Config.", interfaceC4665l.mo15388c(), str);
                return interfaceC4665l;
            }
            return null;
        }
        return null;
    }

    private boolean shouldFetchAndActivateRemoteConfigValues() {
        long currentSystemTimeMillis = getCurrentSystemTimeMillis();
        if (hasAppStartConfigFetchDelayElapsed(currentSystemTimeMillis) && hasLastFetchBecomeStale(currentSystemTimeMillis)) {
            return true;
        }
        return false;
    }

    private void triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch() {
        this.firebaseRemoteConfigLastFetchTimestampMs = getCurrentSystemTimeMillis();
        this.firebaseRemoteConfig.m15867g().mo16796f(this.executor, new InterfaceC4340f() { // from class: z6.w
            @Override // p097j5.InterfaceC4340f
            /* renamed from: c */
            public final void mo1c(Object obj) {
                RemoteConfigManager.this.m22955xc904e813((Boolean) obj);
            }
        }).mo16797e(this.executor, new InterfaceC4338e() { // from class: z6.x
            @Override // p097j5.InterfaceC4338e
            /* renamed from: e */
            public final void mo0e(Exception exc) {
                RemoteConfigManager.this.m22954xc904e814(exc);
            }
        });
    }

    private void triggerRemoteConfigFetchIfNecessary() {
        if (!isFirebaseRemoteConfigAvailable()) {
            return;
        }
        if (this.allRcConfigMap.isEmpty()) {
            syncConfigValues(this.firebaseRemoteConfig.m15866h());
        }
        if (shouldFetchAndActivateRemoteConfigValues()) {
            triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getRemoteConfigValueOrDefault(String str, T t) {
        Object obj;
        InterfaceC4665l remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                if (t instanceof Boolean) {
                    obj = Boolean.valueOf(remoteConfigValue.mo15387d());
                } else if (t instanceof Float) {
                    obj = Float.valueOf(Double.valueOf(remoteConfigValue.mo15389b()).floatValue());
                } else {
                    if (!(t instanceof Long) && !(t instanceof Integer)) {
                        if (t instanceof String) {
                            obj = remoteConfigValue.mo15388c();
                        } else {
                            T t2 = (T) remoteConfigValue.mo15388c();
                            try {
                                logger.m24642b("No matching type found for the defaultValue: '%s', using String.", t);
                                return t2;
                            } catch (IllegalArgumentException unused) {
                                t = t2;
                                if (!remoteConfigValue.mo15388c().isEmpty()) {
                                    logger.m24642b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo15388c(), str);
                                    return t;
                                }
                                return t;
                            }
                        }
                    }
                    obj = Long.valueOf(remoteConfigValue.mo15390a());
                }
                return obj;
            } catch (IllegalArgumentException unused2) {
            }
        } else {
            return t;
        }
    }

    public RemoteConfigManager(Executor executor, C4656e c4656e, long j) {
        ConcurrentHashMap<String, InterfaceC4665l> concurrentHashMap;
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
        this.executor = executor;
        this.firebaseRemoteConfig = c4656e;
        if (c4656e == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap = new ConcurrentHashMap<>(c4656e.m15866h());
        }
        this.allRcConfigMap = concurrentHashMap;
        this.appStartTimeInMs = TimeUnit.MICROSECONDS.toMillis(FirebasePerfProvider.getAppStartTime().m16730l());
        this.appStartConfigFetchDelayInMs = j;
    }
}
