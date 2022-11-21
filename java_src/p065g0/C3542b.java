package p065g0;

import android.database.Cursor;
import android.widget.Filter;
/* renamed from: g0.b */
/* loaded from: classes.dex */
public class C3542b extends Filter {

    /* renamed from: a */
    public InterfaceC3543a f16073a;

    /* renamed from: g0.b$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3543a {
        /* renamed from: a */
        Cursor mo18647a();

        /* renamed from: b */
        void mo17076b(Cursor cursor);

        /* renamed from: c */
        Cursor mo17075c(CharSequence charSequence);

        CharSequence convertToString(Cursor cursor);
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f16073a.convertToString((Cursor) obj);
    }

    @Override // android.widget.Filter
    public Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor mo17075c = this.f16073a.mo17075c(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (mo17075c != null) {
            filterResults.count = mo17075c.getCount();
            filterResults.values = mo17075c;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor mo18647a = this.f16073a.mo18647a();
        Object obj = filterResults.values;
        if (obj != null && obj != mo18647a) {
            this.f16073a.mo17076b((Cursor) obj);
        }
    }

    public C3542b(InterfaceC3543a interfaceC3543a) {
        this.f16073a = interfaceC3543a;
    }
}
