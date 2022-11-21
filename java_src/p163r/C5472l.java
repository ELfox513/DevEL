package p163r;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import android.view.Window$OnFrameMetricsAvailableListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: r.l */
/* loaded from: classes.dex */
public class C5472l {

    /* renamed from: a */
    public C5475b f20160a;

    /* renamed from: r.l$a */
    /* loaded from: classes.dex */
    public static class C5473a extends C5475b {

        /* renamed from: e */
        public static HandlerThread f20161e;

        /* renamed from: f */
        public static Handler f20162f;

        /* renamed from: a */
        public int f20163a;

        /* renamed from: b */
        public SparseIntArray[] f20164b = new SparseIntArray[9];

        /* renamed from: c */
        public ArrayList<WeakReference<Activity>> f20165c = new ArrayList<>();

        /* renamed from: d */
        public Window$OnFrameMetricsAvailableListener f20166d = new Window$OnFrameMetricsAvailableListenerC5474a();

        /* renamed from: r.l$a$a */
        /* loaded from: classes.dex */
        public class Window$OnFrameMetricsAvailableListenerC5474a implements Window$OnFrameMetricsAvailableListener {
            public Window$OnFrameMetricsAvailableListenerC5474a() {
            }

            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                C5473a c5473a = C5473a.this;
                if ((c5473a.f20163a & 1) != 0) {
                    c5473a.m13250c(c5473a.f20164b[0], frameMetrics.getMetric(8));
                }
                C5473a c5473a2 = C5473a.this;
                if ((c5473a2.f20163a & 2) != 0) {
                    c5473a2.m13250c(c5473a2.f20164b[1], frameMetrics.getMetric(1));
                }
                C5473a c5473a3 = C5473a.this;
                if ((c5473a3.f20163a & 4) != 0) {
                    c5473a3.m13250c(c5473a3.f20164b[2], frameMetrics.getMetric(3));
                }
                C5473a c5473a4 = C5473a.this;
                if ((c5473a4.f20163a & 8) != 0) {
                    c5473a4.m13250c(c5473a4.f20164b[3], frameMetrics.getMetric(4));
                }
                C5473a c5473a5 = C5473a.this;
                if ((c5473a5.f20163a & 16) != 0) {
                    c5473a5.m13250c(c5473a5.f20164b[4], frameMetrics.getMetric(5));
                }
                C5473a c5473a6 = C5473a.this;
                if ((c5473a6.f20163a & 64) != 0) {
                    c5473a6.m13250c(c5473a6.f20164b[6], frameMetrics.getMetric(7));
                }
                C5473a c5473a7 = C5473a.this;
                if ((c5473a7.f20163a & 32) != 0) {
                    c5473a7.m13250c(c5473a7.f20164b[5], frameMetrics.getMetric(6));
                }
                C5473a c5473a8 = C5473a.this;
                if ((c5473a8.f20163a & 128) != 0) {
                    c5473a8.m13250c(c5473a8.f20164b[7], frameMetrics.getMetric(0));
                }
                C5473a c5473a9 = C5473a.this;
                if ((c5473a9.f20163a & 256) != 0) {
                    c5473a9.m13250c(c5473a9.f20164b[8], frameMetrics.getMetric(2));
                }
            }
        }

        @Override // p163r.C5472l.C5475b
        /* renamed from: a */
        public void mo13249a(Activity activity) {
            if (f20161e == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                f20161e = handlerThread;
                handlerThread.start();
                f20162f = new Handler(f20161e.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                SparseIntArray[] sparseIntArrayArr = this.f20164b;
                if (sparseIntArrayArr[i] == null && (this.f20163a & (1 << i)) != 0) {
                    sparseIntArrayArr[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f20166d, f20162f);
            this.f20165c.add(new WeakReference<>(activity));
        }

        @Override // p163r.C5472l.C5475b
        /* renamed from: b */
        public SparseIntArray[] mo13248b() {
            SparseIntArray[] sparseIntArrayArr = this.f20164b;
            this.f20164b = new SparseIntArray[9];
            return sparseIntArrayArr;
        }

        /* renamed from: c */
        public void m13250c(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j >= 0) {
                    sparseIntArray.put(i, sparseIntArray.get(i) + 1);
                }
            }
        }

        public C5473a(int i) {
            this.f20163a = i;
        }
    }

    /* renamed from: r.l$b */
    /* loaded from: classes.dex */
    public static class C5475b {
        /* renamed from: a */
        public void mo13249a(Activity activity) {
        }

        /* renamed from: b */
        public SparseIntArray[] mo13248b() {
            return null;
        }
    }

    public C5472l() {
        this(1);
    }

    /* renamed from: a */
    public void m13252a(Activity activity) {
        this.f20160a.mo13249a(activity);
    }

    /* renamed from: b */
    public SparseIntArray[] m13251b() {
        return this.f20160a.mo13248b();
    }

    public C5472l(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f20160a = new C5473a(i);
        } else {
            this.f20160a = new C5475b();
        }
    }
}
