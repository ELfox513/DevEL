package p220x3;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import net.bytebuddy.jar.asm.Opcodes;
/* renamed from: x3.r1 */
/* loaded from: classes.dex */
public final class C7302r1 {

    /* renamed from: a */
    public static final Uri f36789a;

    /* renamed from: b */
    public static final Uri f36790b;

    static {
        Uri parse = Uri.parse("https://plus.google.com/");
        f36789a = parse;
        f36790b = parse.buildUpon().appendPath("circles").appendPath("find").build();
    }

    /* renamed from: a */
    public static Intent m1871a(String str) {
        Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }

    /* renamed from: b */
    public static Intent m1870b(String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW");
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
        if (!TextUtils.isEmpty(str2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", str2);
        }
        intent.setData(appendQueryParameter.build());
        intent.setPackage("com.android.vending");
        intent.addFlags(Opcodes.ASM8);
        return intent;
    }

    /* renamed from: c */
    public static Intent m1869c() {
        Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }
}
