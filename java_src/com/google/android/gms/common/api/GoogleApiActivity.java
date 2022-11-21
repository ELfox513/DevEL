package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepName;
import p185t3.C6734b;
import p185t3.C6744g;
import p203v3.C7008f;
import p220x3.C7297q;
@KeepName
/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public int f7706a = 0;

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(@RecentlyNonNull DialogInterface dialogInterface) {
        this.f7706a = 0;
        setResult(0);
        finish();
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static Intent m23041a(@RecentlyNonNull Context context, @RecentlyNonNull PendingIntent pendingIntent, int i, boolean z) {
        Intent intent = new Intent(context, GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i);
        intent.putExtra("notify_manager", z);
        return intent;
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
        bundle.putInt("resolution", this.f7706a);
        super.onSaveInstanceState(bundle);
    }

    /* renamed from: b */
    public final void m23040b() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
        Integer num = (Integer) extras.get("error_code");
        if (pendingIntent == null && num == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            finish();
        } else if (pendingIntent != null) {
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                this.f7706a = 1;
            } catch (ActivityNotFoundException e) {
                if (extras.getBoolean("notify_manager", true)) {
                    C7008f.m2694n(this).m2683y(new C6734b(22, null), getIntent().getIntExtra("failing_client_id", -1));
                } else {
                    String valueOf = String.valueOf(pendingIntent);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 36);
                    sb.append("Activity not found while launching ");
                    sb.append(valueOf);
                    sb.append(".");
                    String sb2 = sb.toString();
                    if (Build.FINGERPRINT.contains("generic")) {
                        sb2 = String.valueOf(sb2).concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                    }
                    Log.e("GoogleApiActivity", sb2, e);
                }
                this.f7706a = 1;
                finish();
            } catch (IntentSender.SendIntentException e2) {
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e2);
                finish();
            }
        } else {
            C6744g.m3508m().m3507n(this, ((Integer) C7297q.m1883j(num)).intValue(), 2, this);
            this.f7706a = 1;
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, @RecentlyNonNull Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f7706a = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                C7008f m2694n = C7008f.m2694n(this);
                if (i2 != -1) {
                    if (i2 == 0) {
                        m2694n.m2683y(new C6734b(13, null), getIntent().getIntExtra("failing_client_id", -1));
                    }
                } else {
                    m2694n.m2688t();
                }
            }
        } else if (i == 2) {
            this.f7706a = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f7706a = bundle.getInt("resolution");
        }
        if (this.f7706a != 1) {
            m23040b();
        }
    }
}
