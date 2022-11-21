package com.badlogic.gdx.backends.android;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import com.badlogic.gdx.utils.Clipboard;
/* loaded from: classes.dex */
public class AndroidClipboard implements Clipboard {

    /* renamed from: a */
    public final ClipboardManager f3598a;

    @Override // com.badlogic.gdx.utils.Clipboard
    public boolean hasContents() {
        return this.f3598a.hasPrimaryClip();
    }

    @Override // com.badlogic.gdx.utils.Clipboard
    public String getContents() {
        CharSequence text;
        ClipData primaryClip = this.f3598a.getPrimaryClip();
        if (primaryClip == null || (text = primaryClip.getItemAt(0).getText()) == null) {
            return null;
        }
        return text.toString();
    }

    public AndroidClipboard(Context context) {
        this.f3598a = (ClipboardManager) context.getSystemService("clipboard");
    }

    @Override // com.badlogic.gdx.utils.Clipboard
    public void setContents(String str) {
        this.f3598a.setPrimaryClip(ClipData.newPlainText(str, str));
    }
}
