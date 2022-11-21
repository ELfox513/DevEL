package p185t3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p220x3.C7297q;
/* renamed from: t3.a */
/* loaded from: classes.dex */
public class ServiceConnectionC6732a implements ServiceConnection {

    /* renamed from: a */
    public boolean f35383a = false;

    /* renamed from: b */
    public final BlockingQueue<IBinder> f35384b = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull IBinder iBinder) {
        this.f35384b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@RecentlyNonNull ComponentName componentName) {
    }

    @RecentlyNonNull
    /* renamed from: a */
    public IBinder m3529a(long j, @RecentlyNonNull TimeUnit timeUnit) {
        C7297q.m1884i("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f35383a) {
            this.f35383a = true;
            IBinder poll = this.f35384b.poll(j, timeUnit);
            if (poll != null) {
                return poll;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }
}
