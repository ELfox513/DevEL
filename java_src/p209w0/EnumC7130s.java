package p209w0;
/* renamed from: w0.s */
/* loaded from: classes.dex */
public enum EnumC7130s {
    ENQUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    BLOCKED,
    CANCELLED;

    /* renamed from: c */
    public boolean m2478c() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
