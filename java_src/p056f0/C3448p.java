package p056f0;

import android.os.Build;
import android.view.View;
import android.widget.ListView;
/* renamed from: f0.p */
/* loaded from: classes.dex */
public final class C3448p {
    /* renamed from: a */
    public static void m18821a(ListView listView, int i) {
        View childAt;
        if (Build.VERSION.SDK_INT >= 19) {
            listView.scrollListBy(i);
            return;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition == -1 || (childAt = listView.getChildAt(0)) == null) {
            return;
        }
        listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
    }
}
