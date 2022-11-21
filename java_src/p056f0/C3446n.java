package p056f0;

import android.widget.ListView;
/* renamed from: f0.n */
/* loaded from: classes.dex */
public class C3446n extends AbstractView$OnTouchListenerC3420a {

    /* renamed from: D */
    public final ListView f15883D;

    @Override // p056f0.AbstractView$OnTouchListenerC3420a
    /* renamed from: a */
    public boolean mo18825a(int i) {
        return false;
    }

    @Override // p056f0.AbstractView$OnTouchListenerC3420a
    /* renamed from: r */
    public void mo18823r(int i, int i2) {
        C3448p.m18821a(this.f15883D, i2);
    }

    @Override // p056f0.AbstractView$OnTouchListenerC3420a
    /* renamed from: b */
    public boolean mo18824b(int i) {
        ListView listView = this.f15883D;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int i2 = firstVisiblePosition + childCount;
        if (i > 0) {
            if (i2 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                return false;
            }
        } else if (i >= 0) {
            return false;
        } else {
            if (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    public C3446n(ListView listView) {
        super(listView);
        this.f15883D = listView;
    }
}
