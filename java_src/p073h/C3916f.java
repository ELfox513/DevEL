package p073h;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;
import p073h.AbstractC3911b;
import p082i.MenuC4079f;
import p082i.MenuItemC4071c;
import p145p.C5283g;
import p216x.InterfaceMenuC7187a;
import p216x.InterfaceMenuItemC7188b;
/* renamed from: h.f */
/* loaded from: classes.dex */
public class C3916f extends ActionMode {

    /* renamed from: a */
    public final Context f17167a;

    /* renamed from: b */
    public final AbstractC3911b f17168b;

    /* renamed from: h.f$a */
    /* loaded from: classes.dex */
    public static class C3917a implements AbstractC3911b.InterfaceC3912a {

        /* renamed from: a */
        public final ActionMode.Callback f17169a;

        /* renamed from: b */
        public final Context f17170b;

        /* renamed from: c */
        public final ArrayList<C3916f> f17171c = new ArrayList<>();

        /* renamed from: d */
        public final C5283g<Menu, Menu> f17172d = new C5283g<>();

        @Override // p073h.AbstractC3911b.InterfaceC3912a
        /* renamed from: c */
        public boolean mo17751c(AbstractC3911b abstractC3911b, MenuItem menuItem) {
            return this.f17169a.onActionItemClicked(m17749e(abstractC3911b), new MenuItemC4071c(this.f17170b, (InterfaceMenuItemC7188b) menuItem));
        }

        @Override // p073h.AbstractC3911b.InterfaceC3912a
        /* renamed from: d */
        public void mo17750d(AbstractC3911b abstractC3911b) {
            this.f17169a.onDestroyActionMode(m17749e(abstractC3911b));
        }

        @Override // p073h.AbstractC3911b.InterfaceC3912a
        /* renamed from: a */
        public boolean mo17753a(AbstractC3911b abstractC3911b, Menu menu) {
            return this.f17169a.onCreateActionMode(m17749e(abstractC3911b), m17748f(menu));
        }

        @Override // p073h.AbstractC3911b.InterfaceC3912a
        /* renamed from: b */
        public boolean mo17752b(AbstractC3911b abstractC3911b, Menu menu) {
            return this.f17169a.onPrepareActionMode(m17749e(abstractC3911b), m17748f(menu));
        }

        /* renamed from: e */
        public ActionMode m17749e(AbstractC3911b abstractC3911b) {
            int size = this.f17171c.size();
            for (int i = 0; i < size; i++) {
                C3916f c3916f = this.f17171c.get(i);
                if (c3916f != null && c3916f.f17168b == abstractC3911b) {
                    return c3916f;
                }
            }
            C3916f c3916f2 = new C3916f(this.f17170b, abstractC3911b);
            this.f17171c.add(c3916f2);
            return c3916f2;
        }

        /* renamed from: f */
        public final Menu m17748f(Menu menu) {
            Menu menu2 = this.f17172d.get(menu);
            if (menu2 == null) {
                MenuC4079f menuC4079f = new MenuC4079f(this.f17170b, (InterfaceMenuC7187a) menu);
                this.f17172d.put(menu, menuC4079f);
                return menuC4079f;
            }
            return menu2;
        }

        public C3917a(Context context, ActionMode.Callback callback) {
            this.f17170b = context;
            this.f17169a = callback;
        }
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f17168b.mo17767c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f17168b.mo17766d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC4079f(this.f17167a, (InterfaceMenuC7187a) this.f17168b.mo17765e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f17168b.mo17764f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f17168b.mo17763g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f17168b.m17777h();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f17168b.mo17762i();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f17168b.m17776j();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f17168b.mo17761k();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f17168b.mo17760l();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f17168b.mo17759m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f17168b.mo17757o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f17168b.m17775p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f17168b.mo17755r(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f17168b.mo17754s(z);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f17168b.mo17758n(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f17168b.mo17756q(i);
    }

    public C3916f(Context context, AbstractC3911b abstractC3911b) {
        this.f17167a = context;
        this.f17168b = abstractC3911b;
    }
}
