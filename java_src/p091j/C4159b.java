package p091j;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;
/* renamed from: j.b */
/* loaded from: classes.dex */
public class C4159b extends Drawable {

    /* renamed from: a */
    public final ActionBarContainer f17820a;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f17820a;
        if (actionBarContainer.f533s) {
            Drawable drawable = actionBarContainer.f532r;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f530p;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f17820a;
        Drawable drawable3 = actionBarContainer2.f531q;
        if (drawable3 != null && actionBarContainer2.f534t) {
            drawable3.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f17820a;
        if (actionBarContainer.f533s) {
            Drawable drawable = actionBarContainer.f532r;
            if (drawable != null) {
                drawable.getOutline(outline);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f530p;
        if (drawable2 != null) {
            drawable2.getOutline(outline);
        }
    }

    public C4159b(ActionBarContainer actionBarContainer) {
        this.f17820a = actionBarContainer;
    }
}
