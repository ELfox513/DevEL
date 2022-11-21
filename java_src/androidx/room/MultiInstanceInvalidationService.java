package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.InterfaceC0348b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a */
    public int f1253a = 0;

    /* renamed from: b */
    public final HashMap<Integer, String> f1254b = new HashMap<>();

    /* renamed from: d */
    public final RemoteCallbackList<InterfaceC0345a> f1255d = new RemoteCallbackListC0343a();

    /* renamed from: k */
    public final InterfaceC0348b.AbstractBinderC0349a f1256k = new BinderC0344b();

    /* renamed from: androidx.room.MultiInstanceInvalidationService$a */
    /* loaded from: classes.dex */
    public class RemoteCallbackListC0343a extends RemoteCallbackList<InterfaceC0345a> {
        public RemoteCallbackListC0343a() {
        }

        @Override // android.os.RemoteCallbackList
        /* renamed from: a */
        public void onCallbackDied(InterfaceC0345a interfaceC0345a, Object obj) {
            MultiInstanceInvalidationService.this.f1254b.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationService$b */
    /* loaded from: classes.dex */
    public class BinderC0344b extends InterfaceC0348b.AbstractBinderC0349a {
        public BinderC0344b() {
        }

        @Override // androidx.room.InterfaceC0348b
        /* renamed from: s2 */
        public int mo26743s2(InterfaceC0345a interfaceC0345a, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f1255d) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.f1253a + 1;
                multiInstanceInvalidationService.f1253a = i;
                if (multiInstanceInvalidationService.f1255d.register(interfaceC0345a, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.f1254b.put(Integer.valueOf(i), str);
                    return i;
                }
                MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                multiInstanceInvalidationService2.f1253a--;
                return 0;
            }
        }

        @Override // androidx.room.InterfaceC0348b
        /* renamed from: S6 */
        public void mo26744S6(InterfaceC0345a interfaceC0345a, int i) {
            synchronized (MultiInstanceInvalidationService.this.f1255d) {
                MultiInstanceInvalidationService.this.f1255d.unregister(interfaceC0345a);
                MultiInstanceInvalidationService.this.f1254b.remove(Integer.valueOf(i));
            }
        }

        @Override // androidx.room.InterfaceC0348b
        /* renamed from: u6 */
        public void mo26742u6(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f1255d) {
                String str = MultiInstanceInvalidationService.this.f1254b.get(Integer.valueOf(i));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f1255d.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    int intValue = ((Integer) MultiInstanceInvalidationService.this.f1255d.getBroadcastCookie(i2)).intValue();
                    String str2 = MultiInstanceInvalidationService.this.f1254b.get(Integer.valueOf(intValue));
                    if (i != intValue && str.equals(str2)) {
                        try {
                            MultiInstanceInvalidationService.this.f1255d.getBroadcastItem(i2).mo26721O1(strArr);
                        } catch (RemoteException e) {
                            Log.w("ROOM", "Error invoking a remote callback", e);
                        }
                    }
                }
                MultiInstanceInvalidationService.this.f1255d.finishBroadcast();
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1256k;
    }
}
