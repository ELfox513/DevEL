package com.google.firebase.perf.session.gauges;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p029c7.C1078a;
import p072g7.C3907a;
import p081h7.C4062c;
import p081h7.C4065f;
import p081h7.C4068i;
import p090i7.C4153k;
import p099j7.C4381h;
import p108k7.C4494f;
import p108k7.C4497g;
import p108k7.EnumC4488d;
import p239z6.C7873a;
@Keep
/* loaded from: classes2.dex */
public class GaugeManager {
    private static final long APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC = 20;
    private static final long INVALID_GAUGE_COLLECTION_FREQUENCY = -1;
    private static final long TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS = 20;
    private EnumC4488d applicationProcessState;
    private final C7873a configResolver;
    private final C4062c cpuGaugeCollector;
    private ScheduledFuture gaugeManagerDataCollectionJob;
    private final ScheduledExecutorService gaugeManagerExecutor;
    private C4065f gaugeMetadataManager;
    private final C4068i memoryGaugeCollector;
    private String sessionId;
    private final C4153k transportManager;
    private static final C1078a logger = C1078a.m24639e();
    private static final GaugeManager instance = new GaugeManager();

    /* renamed from: com.google.firebase.perf.session.gauges.GaugeManager$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C1432a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f7871a;

        static {
            int[] iArr = new int[EnumC4488d.values().length];
            f7871a = iArr;
            try {
                iArr[EnumC4488d.BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7871a[EnumC4488d.FOREGROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private GaugeManager() {
        this(Executors.newSingleThreadScheduledExecutor(), C4153k.m17283k(), C7873a.m75f(), null, C4062c.m17472f(), C4068i.m17454e());
    }

    public static synchronized GaugeManager getInstance() {
        GaugeManager gaugeManager;
        synchronized (GaugeManager.class) {
            gaugeManager = instance;
        }
        return gaugeManager;
    }

    public void collectGaugeMetricOnce(C4381h c4381h) {
        collectGaugeMetricOnce(this.cpuGaugeCollector, this.memoryGaugeCollector, c4381h);
    }

    public void setApplicationContext(Context context) {
        this.gaugeMetadataManager = new C4065f(context);
    }

    public void startCollectingGauges(C3907a c3907a, final EnumC4488d enumC4488d) {
        if (this.sessionId != null) {
            stopCollectingGauges();
        }
        long startCollectingGauges = startCollectingGauges(enumC4488d, c3907a.m17795l());
        if (startCollectingGauges == -1) {
            logger.m24635i("Invalid gauge collection frequency. Unable to start collecting Gauges.");
            return;
        }
        final String m17791v = c3907a.m17791v();
        this.sessionId = m17791v;
        this.applicationProcessState = enumC4488d;
        try {
            long j = startCollectingGauges * 20;
            this.gaugeManagerDataCollectionJob = this.gaugeManagerExecutor.scheduleAtFixedRate(new Runnable() { // from class: h7.e
                @Override // java.lang.Runnable
                public final void run() {
                    GaugeManager.this.lambda$startCollectingGauges$0(m17791v, enumC4488d);
                }
            }, j, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            C1078a c1078a = logger;
            c1078a.m24635i("Unable to start collecting Gauges: " + e.getMessage());
        }
    }

    private static void collectGaugeMetricOnce(C4062c c4062c, C4068i c4068i, C4381h c4381h) {
        c4062c.m17475c(c4381h);
        c4068i.m17456c(c4381h);
    }

    private long getCpuGaugeCollectionFrequencyMs(EnumC4488d enumC4488d) {
        long m58w;
        int i = C1432a.f7871a[enumC4488d.ordinal()];
        if (i != 1) {
            if (i != 2) {
                m58w = -1;
            } else {
                m58w = this.configResolver.m57x();
            }
        } else {
            m58w = this.configResolver.m58w();
        }
        if (C4062c.m17471g(m58w)) {
            return -1L;
        }
        return m58w;
    }

    private long getMemoryGaugeCollectionFrequencyMs(EnumC4488d enumC4488d) {
        long m55z;
        int i = C1432a.f7871a[enumC4488d.ordinal()];
        if (i != 1) {
            if (i != 2) {
                m55z = -1;
            } else {
                m55z = this.configResolver.m95A();
            }
        } else {
            m55z = this.configResolver.m55z();
        }
        if (C4068i.m17453f(m55z)) {
            return -1L;
        }
        return m55z;
    }

    private boolean startCollectingCpuMetrics(long j, C4381h c4381h) {
        if (j == -1) {
            logger.m24643a("Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics.");
            return false;
        }
        this.cpuGaugeCollector.m17466l(j, c4381h);
        return true;
    }

    private boolean startCollectingMemoryMetrics(long j, C4381h c4381h) {
        if (j == -1) {
            logger.m24643a("Invalid Memory Metrics collection frequency. Did not collect Memory Metrics.");
            return false;
        }
        this.memoryGaugeCollector.m17448k(j, c4381h);
        return true;
    }

    public boolean logGaugeMetadata(String str, EnumC4488d enumC4488d) {
        if (this.gaugeMetadataManager != null) {
            this.transportManager.m17301A(C4497g.m16235f0().m16229U(str).m16230T(getGaugeMetadata()).build(), enumC4488d);
            return true;
        }
        return false;
    }

    public void stopCollectingGauges() {
        final String str = this.sessionId;
        if (str == null) {
            return;
        }
        final EnumC4488d enumC4488d = this.applicationProcessState;
        this.cpuGaugeCollector.m17465m();
        this.memoryGaugeCollector.m17447l();
        ScheduledFuture scheduledFuture = this.gaugeManagerDataCollectionJob;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.gaugeManagerExecutor.schedule(new Runnable() { // from class: h7.d
            @Override // java.lang.Runnable
            public final void run() {
                GaugeManager.this.lambda$stopCollectingGauges$1(str, enumC4488d);
            }
        }, 20L, TimeUnit.MILLISECONDS);
        this.sessionId = null;
        this.applicationProcessState = EnumC4488d.APPLICATION_PROCESS_STATE_UNKNOWN;
    }

    private C4494f getGaugeMetadata() {
        return C4494f.m16259X().m16251U(this.gaugeMetadataManager.m17459e()).m16254Q(this.gaugeMetadataManager.m17462b()).m16253S(this.gaugeMetadataManager.m17461c()).m16252T(this.gaugeMetadataManager.m17460d()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: syncFlush */
    public void lambda$stopCollectingGauges$1(String str, EnumC4488d enumC4488d) {
        C4497g.C4499b m16235f0 = C4497g.m16235f0();
        while (!this.cpuGaugeCollector.f17596a.isEmpty()) {
            m16235f0.m16231S(this.cpuGaugeCollector.f17596a.poll());
        }
        while (!this.memoryGaugeCollector.f17621b.isEmpty()) {
            m16235f0.m16232Q(this.memoryGaugeCollector.f17621b.poll());
        }
        m16235f0.m16229U(str);
        this.transportManager.m17301A(m16235f0.build(), enumC4488d);
    }

    public GaugeManager(ScheduledExecutorService scheduledExecutorService, C4153k c4153k, C7873a c7873a, C4065f c4065f, C4062c c4062c, C4068i c4068i) {
        this.gaugeManagerDataCollectionJob = null;
        this.sessionId = null;
        this.applicationProcessState = EnumC4488d.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.gaugeManagerExecutor = scheduledExecutorService;
        this.transportManager = c4153k;
        this.configResolver = c7873a;
        this.gaugeMetadataManager = c4065f;
        this.cpuGaugeCollector = c4062c;
        this.memoryGaugeCollector = c4068i;
    }

    private long startCollectingGauges(EnumC4488d enumC4488d, C4381h c4381h) {
        long cpuGaugeCollectionFrequencyMs = getCpuGaugeCollectionFrequencyMs(enumC4488d);
        if (!startCollectingCpuMetrics(cpuGaugeCollectionFrequencyMs, c4381h)) {
            cpuGaugeCollectionFrequencyMs = -1;
        }
        long memoryGaugeCollectionFrequencyMs = getMemoryGaugeCollectionFrequencyMs(enumC4488d);
        return startCollectingMemoryMetrics(memoryGaugeCollectionFrequencyMs, c4381h) ? cpuGaugeCollectionFrequencyMs == -1 ? memoryGaugeCollectionFrequencyMs : Math.min(cpuGaugeCollectionFrequencyMs, memoryGaugeCollectionFrequencyMs) : cpuGaugeCollectionFrequencyMs;
    }
}
