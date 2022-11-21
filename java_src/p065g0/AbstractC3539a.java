package p065g0;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import p065g0.C3542b;
/* renamed from: g0.a */
/* loaded from: classes.dex */
public abstract class AbstractC3539a extends BaseAdapter implements Filterable, C3542b.InterfaceC3543a {

    /* renamed from: a */
    public boolean f16063a;

    /* renamed from: b */
    public boolean f16064b;

    /* renamed from: d */
    public Cursor f16065d;

    /* renamed from: k */
    public Context f16066k;

    /* renamed from: p */
    public int f16067p;

    /* renamed from: q */
    public C3540a f16068q;

    /* renamed from: r */
    public DataSetObserver f16069r;

    /* renamed from: s */
    public C3542b f16070s;

    /* renamed from: g0.a$a */
    /* loaded from: classes.dex */
    public class C3540a extends ContentObserver {
        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC3539a.this.m18649l();
        }

        public C3540a() {
            super(new Handler());
        }
    }

    /* renamed from: g0.a$b */
    /* loaded from: classes.dex */
    public class C3541b extends DataSetObserver {
        public C3541b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC3539a abstractC3539a = AbstractC3539a.this;
            abstractC3539a.f16063a = true;
            abstractC3539a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC3539a abstractC3539a = AbstractC3539a.this;
            abstractC3539a.f16063a = false;
            abstractC3539a.notifyDataSetInvalidated();
        }
    }

    @Override // p065g0.C3542b.InterfaceC3543a
    /* renamed from: a */
    public Cursor mo18647a() {
        return this.f16065d;
    }

    @Override // p065g0.C3542b.InterfaceC3543a
    public abstract CharSequence convertToString(Cursor cursor);

    /* renamed from: d */
    public abstract void mo17074d(View view, Context context, Cursor cursor);

    /* renamed from: g */
    public abstract View mo18646g(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: j */
    public abstract View mo17073j(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: e */
    public void m18650e(Context context, Cursor cursor, int i) {
        int i2;
        boolean z = false;
        if ((i & 1) == 1) {
            i |= 2;
            this.f16064b = true;
        } else {
            this.f16064b = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f16065d = cursor;
        this.f16063a = z;
        this.f16066k = context;
        if (z) {
            i2 = cursor.getColumnIndexOrThrow("_id");
        } else {
            i2 = -1;
        }
        this.f16067p = i2;
        if ((i & 2) == 2) {
            this.f16068q = new C3540a();
            this.f16069r = new C3541b();
        } else {
            this.f16068q = null;
            this.f16069r = null;
        }
        if (z) {
            C3540a c3540a = this.f16068q;
            if (c3540a != null) {
                cursor.registerContentObserver(c3540a);
            }
            DataSetObserver dataSetObserver = this.f16069r;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (this.f16063a && (cursor = this.f16065d) != null) {
            return cursor.getCount();
        }
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f16063a) {
            this.f16065d.moveToPosition(i);
            if (view == null) {
                view = mo18646g(this.f16066k, this.f16065d, viewGroup);
            }
            mo17074d(view, this.f16066k, this.f16065d);
            return view;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f16070s == null) {
            this.f16070s = new C3542b(this);
        }
        return this.f16070s;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (this.f16063a && (cursor = this.f16065d) != null) {
            cursor.moveToPosition(i);
            return this.f16065d;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f16063a || (cursor = this.f16065d) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f16065d.getLong(this.f16067p);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f16063a) {
            if (this.f16065d.moveToPosition(i)) {
                if (view == null) {
                    view = mo17073j(this.f16066k, this.f16065d, viewGroup);
                }
                mo17074d(view, this.f16066k, this.f16065d);
                return view;
            }
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    /* renamed from: l */
    public void m18649l() {
        Cursor cursor;
        if (this.f16064b && (cursor = this.f16065d) != null && !cursor.isClosed()) {
            this.f16063a = this.f16065d.requery();
        }
    }

    /* renamed from: n */
    public Cursor m18648n(Cursor cursor) {
        Cursor cursor2 = this.f16065d;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C3540a c3540a = this.f16068q;
            if (c3540a != null) {
                cursor2.unregisterContentObserver(c3540a);
            }
            DataSetObserver dataSetObserver = this.f16069r;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f16065d = cursor;
        if (cursor != null) {
            C3540a c3540a2 = this.f16068q;
            if (c3540a2 != null) {
                cursor.registerContentObserver(c3540a2);
            }
            DataSetObserver dataSetObserver2 = this.f16069r;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f16067p = cursor.getColumnIndexOrThrow("_id");
            this.f16063a = true;
            notifyDataSetChanged();
        } else {
            this.f16067p = -1;
            this.f16063a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    public AbstractC3539a(Context context, Cursor cursor, boolean z) {
        int i;
        if (z) {
            i = 1;
        } else {
            i = 2;
        }
        m18650e(context, cursor, i);
    }

    @Override // p065g0.C3542b.InterfaceC3543a
    /* renamed from: b */
    public void mo17076b(Cursor cursor) {
        Cursor m18648n = m18648n(cursor);
        if (m18648n != null) {
            m18648n.close();
        }
    }
}
