package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import p027c5.C1062a;
/* loaded from: classes.dex */
public class ProxyBillingActivity extends Activity {

    /* renamed from: a */
    public ResultReceiver f2984a;

    /* renamed from: a */
    public final Intent m24624a() {
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.f2984a;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Bundle extras;
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            int m24721a = C1062a.m24721a(intent, "ProxyBillingActivity");
            if (i2 != -1 || m24721a != 0) {
                StringBuilder sb = new StringBuilder(85);
                sb.append("Activity finished with resultCode ");
                sb.append(i2);
                sb.append(" and billing's responseCode: ");
                sb.append(m24721a);
                C1062a.m24710l("ProxyBillingActivity", sb.toString());
            }
            ResultReceiver resultReceiver = this.f2984a;
            if (resultReceiver != null) {
                if (intent == null) {
                    extras = null;
                } else {
                    extras = intent.getExtras();
                }
                resultReceiver.send(m24721a, extras);
            } else {
                Intent m24624a = m24624a();
                if (intent != null) {
                    m24624a.putExtras(intent.getExtras());
                }
                sendBroadcast(m24624a);
            }
        } else {
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("Got onActivityResult with wrong requestCode: ");
            sb2.append(i);
            sb2.append("; skipping...");
            C1062a.m24710l("ProxyBillingActivity", sb2.toString());
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle == null) {
            C1062a.m24713i("ProxyBillingActivity", "Launching Play Store billing flow");
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                this.f2984a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            } else {
                pendingIntent = null;
            }
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 100, new Intent(), 0, 0, 0);
                return;
            } catch (IntentSender.SendIntentException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 53);
                sb.append("Got exception while trying to start a purchase flow: ");
                sb.append(valueOf);
                C1062a.m24710l("ProxyBillingActivity", sb.toString());
                ResultReceiver resultReceiver = this.f2984a;
                if (resultReceiver != null) {
                    resultReceiver.send(6, null);
                } else {
                    Intent m24624a = m24624a();
                    m24624a.putExtra("RESPONSE_CODE", 6);
                    m24624a.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(m24624a);
                }
                finish();
                return;
            }
        }
        C1062a.m24713i("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
        if (bundle.containsKey("result_receiver")) {
            this.f2984a = (ResultReceiver) bundle.getParcelable("result_receiver");
        }
    }
}
