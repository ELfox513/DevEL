package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.C0227c;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
import p021c.C1008a;
import p021c.C1013f;
import p021c.C1017j;
import p037d.DialogC3137k;
import p038d0.C3218s0;
/* loaded from: classes.dex */
public class AlertController {

    /* renamed from: A */
    public NestedScrollView f211A;

    /* renamed from: C */
    public Drawable f213C;

    /* renamed from: D */
    public ImageView f214D;

    /* renamed from: E */
    public TextView f215E;

    /* renamed from: F */
    public TextView f216F;

    /* renamed from: G */
    public View f217G;

    /* renamed from: H */
    public ListAdapter f218H;

    /* renamed from: J */
    public int f220J;

    /* renamed from: K */
    public int f221K;

    /* renamed from: L */
    public int f222L;

    /* renamed from: M */
    public int f223M;

    /* renamed from: N */
    public int f224N;

    /* renamed from: O */
    public int f225O;

    /* renamed from: P */
    public boolean f226P;

    /* renamed from: R */
    public Handler f228R;

    /* renamed from: a */
    public final Context f230a;

    /* renamed from: b */
    public final DialogC3137k f231b;

    /* renamed from: c */
    public final Window f232c;

    /* renamed from: d */
    public final int f233d;

    /* renamed from: e */
    public CharSequence f234e;

    /* renamed from: f */
    public CharSequence f235f;

    /* renamed from: g */
    public ListView f236g;

    /* renamed from: h */
    public View f237h;

    /* renamed from: i */
    public int f238i;

    /* renamed from: j */
    public int f239j;

    /* renamed from: k */
    public int f240k;

    /* renamed from: l */
    public int f241l;

    /* renamed from: m */
    public int f242m;

    /* renamed from: o */
    public Button f244o;

    /* renamed from: p */
    public CharSequence f245p;

    /* renamed from: q */
    public Message f246q;

    /* renamed from: r */
    public Drawable f247r;

    /* renamed from: s */
    public Button f248s;

    /* renamed from: t */
    public CharSequence f249t;

    /* renamed from: u */
    public Message f250u;

    /* renamed from: v */
    public Drawable f251v;

    /* renamed from: w */
    public Button f252w;

    /* renamed from: x */
    public CharSequence f253x;

    /* renamed from: y */
    public Message f254y;

    /* renamed from: z */
    public Drawable f255z;

    /* renamed from: n */
    public boolean f243n = false;

    /* renamed from: B */
    public int f212B = 0;

    /* renamed from: I */
    public int f219I = -1;

    /* renamed from: Q */
    public int f227Q = 0;

    /* renamed from: S */
    public final View.OnClickListener f229S = new View$OnClickListenerC0135a();

    /* loaded from: classes.dex */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        public final int f256a;

        /* renamed from: b */
        public final int f257b;

        /* renamed from: a */
        public void m27590a(boolean z, boolean z2) {
            int i;
            int i2;
            if (!z2 || !z) {
                int paddingLeft = getPaddingLeft();
                if (z) {
                    i = getPaddingTop();
                } else {
                    i = this.f256a;
                }
                int paddingRight = getPaddingRight();
                if (z2) {
                    i2 = getPaddingBottom();
                } else {
                    i2 = this.f257b;
                }
                setPadding(paddingLeft, i, paddingRight, i2);
            }
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1017j.f2819f2);
            this.f257b = obtainStyledAttributes.getDimensionPixelOffset(C1017j.f2824g2, -1);
            this.f256a = obtainStyledAttributes.getDimensionPixelOffset(C1017j.f2829h2, -1);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0135a implements View.OnClickListener {
        public View$OnClickListenerC0135a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            Message message4;
            AlertController alertController = AlertController.this;
            if (view == alertController.f244o && (message4 = alertController.f246q) != null) {
                message = Message.obtain(message4);
            } else if (view == alertController.f248s && (message3 = alertController.f250u) != null) {
                message = Message.obtain(message3);
            } else if (view == alertController.f252w && (message2 = alertController.f254y) != null) {
                message = Message.obtain(message2);
            } else {
                message = null;
            }
            if (message != null) {
                message.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.f228R.obtainMessage(1, alertController2.f231b).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes.dex */
    public class C0136b implements NestedScrollView.InterfaceC0239b {

        /* renamed from: a */
        public final /* synthetic */ View f259a;

        /* renamed from: b */
        public final /* synthetic */ View f260b;

        public C0136b(View view, View view2) {
            this.f259a = view;
            this.f260b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.InterfaceC0239b
        /* renamed from: a */
        public void mo27169a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            AlertController.m27611f(nestedScrollView, this.f259a, this.f260b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes.dex */
    public class RunnableC0137c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f262a;

        /* renamed from: b */
        public final /* synthetic */ View f263b;

        public RunnableC0137c(View view, View view2) {
            this.f262a = view;
            this.f263b = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m27611f(AlertController.this.f211A, this.f262a, this.f263b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes.dex */
    public class C0138d implements AbsListView.OnScrollListener {

        /* renamed from: a */
        public final /* synthetic */ View f265a;

        /* renamed from: b */
        public final /* synthetic */ View f266b;

        public C0138d(View view, View view2) {
            this.f265a = view;
            this.f266b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.m27611f(absListView, this.f265a, this.f266b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$e */
    /* loaded from: classes.dex */
    public class RunnableC0139e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f268a;

        /* renamed from: b */
        public final /* synthetic */ View f269b;

        public RunnableC0139e(View view, View view2) {
            this.f268a = view;
            this.f269b = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m27611f(AlertController.this.f236g, this.f268a, this.f269b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$f */
    /* loaded from: classes.dex */
    public static class C0140f {

        /* renamed from: A */
        public int f271A;

        /* renamed from: B */
        public int f272B;

        /* renamed from: C */
        public int f273C;

        /* renamed from: D */
        public int f274D;

        /* renamed from: F */
        public boolean[] f276F;

        /* renamed from: G */
        public boolean f277G;

        /* renamed from: H */
        public boolean f278H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f280J;

        /* renamed from: K */
        public Cursor f281K;

        /* renamed from: L */
        public String f282L;

        /* renamed from: M */
        public String f283M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f284N;

        /* renamed from: O */
        public InterfaceC0145e f285O;

        /* renamed from: a */
        public final Context f287a;

        /* renamed from: b */
        public final LayoutInflater f288b;

        /* renamed from: d */
        public Drawable f290d;

        /* renamed from: f */
        public CharSequence f292f;

        /* renamed from: g */
        public View f293g;

        /* renamed from: h */
        public CharSequence f294h;

        /* renamed from: i */
        public CharSequence f295i;

        /* renamed from: j */
        public Drawable f296j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f297k;

        /* renamed from: l */
        public CharSequence f298l;

        /* renamed from: m */
        public Drawable f299m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f300n;

        /* renamed from: o */
        public CharSequence f301o;

        /* renamed from: p */
        public Drawable f302p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f303q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f305s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f306t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f307u;

        /* renamed from: v */
        public CharSequence[] f308v;

        /* renamed from: w */
        public ListAdapter f309w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f310x;

        /* renamed from: y */
        public int f311y;

        /* renamed from: z */
        public View f312z;

        /* renamed from: c */
        public int f289c = 0;

        /* renamed from: e */
        public int f291e = 0;

        /* renamed from: E */
        public boolean f275E = false;

        /* renamed from: I */
        public int f279I = -1;

        /* renamed from: P */
        public boolean f286P = true;

        /* renamed from: r */
        public boolean f304r = true;

        /* renamed from: androidx.appcompat.app.AlertController$f$b */
        /* loaded from: classes.dex */
        public class C0142b extends CursorAdapter {

            /* renamed from: a */
            public final int f315a;

            /* renamed from: b */
            public final int f316b;

            /* renamed from: d */
            public final /* synthetic */ RecycleListView f317d;

            /* renamed from: k */
            public final /* synthetic */ AlertController f318k;

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return C0140f.this.f288b.inflate(this.f318k.f223M, viewGroup, false);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0142b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                this.f317d = recycleListView;
                this.f318k = alertController;
                Cursor cursor2 = getCursor();
                this.f315a = cursor2.getColumnIndexOrThrow(C0140f.this.f282L);
                this.f316b = cursor2.getColumnIndexOrThrow(C0140f.this.f283M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f315a));
                RecycleListView recycleListView = this.f317d;
                int position = cursor.getPosition();
                boolean z = true;
                if (cursor.getInt(this.f316b) != 1) {
                    z = false;
                }
                recycleListView.setItemChecked(position, z);
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$c */
        /* loaded from: classes.dex */
        public class C0143c implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            public final /* synthetic */ AlertController f320a;

            public C0143c(AlertController alertController) {
                this.f320a = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0140f.this.f310x.onClick(this.f320a.f231b, i);
                if (!C0140f.this.f278H) {
                    this.f320a.f231b.dismiss();
                }
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$d */
        /* loaded from: classes.dex */
        public class C0144d implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            public final /* synthetic */ RecycleListView f322a;

            /* renamed from: b */
            public final /* synthetic */ AlertController f323b;

            public C0144d(RecycleListView recycleListView, AlertController alertController) {
                this.f322a = recycleListView;
                this.f323b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = C0140f.this.f276F;
                if (zArr != null) {
                    zArr[i] = this.f322a.isItemChecked(i);
                }
                C0140f.this.f280J.onClick(this.f323b.f231b, i, this.f322a.isItemChecked(i));
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$e */
        /* loaded from: classes.dex */
        public interface InterfaceC0145e {
            /* renamed from: a */
            void m27587a(ListView listView);
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$a */
        /* loaded from: classes.dex */
        public class C0141a extends ArrayAdapter<CharSequence> {

            /* renamed from: a */
            public final /* synthetic */ RecycleListView f313a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0141a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                this.f313a = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = C0140f.this.f276F;
                if (zArr != null && zArr[i]) {
                    this.f313a.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* renamed from: a */
        public void m27589a(AlertController alertController) {
            View view = this.f293g;
            if (view != null) {
                alertController.m27605l(view);
            } else {
                CharSequence charSequence = this.f292f;
                if (charSequence != null) {
                    alertController.m27600q(charSequence);
                }
                Drawable drawable = this.f290d;
                if (drawable != null) {
                    alertController.m27603n(drawable);
                }
                int i = this.f289c;
                if (i != 0) {
                    alertController.m27604m(i);
                }
                int i2 = this.f291e;
                if (i2 != 0) {
                    alertController.m27604m(alertController.m27614c(i2));
                }
            }
            CharSequence charSequence2 = this.f294h;
            if (charSequence2 != null) {
                alertController.m27602o(charSequence2);
            }
            CharSequence charSequence3 = this.f295i;
            if (charSequence3 != null || this.f296j != null) {
                alertController.m27606k(-1, charSequence3, this.f297k, null, this.f296j);
            }
            CharSequence charSequence4 = this.f298l;
            if (charSequence4 != null || this.f299m != null) {
                alertController.m27606k(-2, charSequence4, this.f300n, null, this.f299m);
            }
            CharSequence charSequence5 = this.f301o;
            if (charSequence5 != null || this.f302p != null) {
                alertController.m27606k(-3, charSequence5, this.f303q, null, this.f302p);
            }
            if (this.f308v != null || this.f281K != null || this.f309w != null) {
                m27588b(alertController);
            }
            View view2 = this.f312z;
            if (view2 != null) {
                if (this.f275E) {
                    alertController.m27597t(view2, this.f271A, this.f272B, this.f273C, this.f274D);
                    return;
                } else {
                    alertController.m27598s(view2);
                    return;
                }
            }
            int i3 = this.f311y;
            if (i3 != 0) {
                alertController.m27599r(i3);
            }
        }

        /* renamed from: b */
        public final void m27588b(AlertController alertController) {
            int i;
            ListAdapter listAdapter;
            RecycleListView recycleListView = (RecycleListView) this.f288b.inflate(alertController.f222L, (ViewGroup) null);
            if (this.f277G) {
                if (this.f281K == null) {
                    listAdapter = new C0141a(this.f287a, alertController.f223M, 16908308, this.f308v, recycleListView);
                } else {
                    listAdapter = new C0142b(this.f287a, this.f281K, false, recycleListView, alertController);
                }
            } else {
                if (this.f278H) {
                    i = alertController.f224N;
                } else {
                    i = alertController.f225O;
                }
                int i2 = i;
                if (this.f281K != null) {
                    listAdapter = new SimpleCursorAdapter(this.f287a, i2, this.f281K, new String[]{this.f282L}, new int[]{16908308});
                } else {
                    listAdapter = this.f309w;
                    if (listAdapter == null) {
                        listAdapter = new C0147h(this.f287a, i2, 16908308, this.f308v);
                    }
                }
            }
            InterfaceC0145e interfaceC0145e = this.f285O;
            if (interfaceC0145e != null) {
                interfaceC0145e.m27587a(recycleListView);
            }
            alertController.f218H = listAdapter;
            alertController.f219I = this.f279I;
            if (this.f310x != null) {
                recycleListView.setOnItemClickListener(new C0143c(alertController));
            } else if (this.f280J != null) {
                recycleListView.setOnItemClickListener(new C0144d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f284N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.f278H) {
                recycleListView.setChoiceMode(1);
            } else if (this.f277G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f236g = recycleListView;
        }

        public C0140f(Context context) {
            this.f287a = context;
            this.f288b = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$g */
    /* loaded from: classes.dex */
    public static final class HandlerC0146g extends Handler {

        /* renamed from: a */
        public WeakReference<DialogInterface> f325a;

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != -3 && i != -2 && i != -1) {
                if (i == 1) {
                    ((DialogInterface) message.obj).dismiss();
                    return;
                }
                return;
            }
            ((DialogInterface.OnClickListener) message.obj).onClick(this.f325a.get(), message.what);
        }

        public HandlerC0146g(DialogInterface dialogInterface) {
            this.f325a = new WeakReference<>(dialogInterface);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$h */
    /* loaded from: classes.dex */
    public static class C0147h extends ArrayAdapter<CharSequence> {
        public C0147h(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    /* renamed from: f */
    public static void m27611f(View view, View view2, View view3) {
        int i;
        if (view2 != null) {
            if (view.canScrollVertically(-1)) {
                i = 0;
            } else {
                i = 4;
            }
            view2.setVisibility(i);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: d */
    public ListView m27613d() {
        return this.f236g;
    }

    /* renamed from: g */
    public boolean m27610g(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f211A;
        return nestedScrollView != null && nestedScrollView.m27179q(keyEvent);
    }

    /* renamed from: h */
    public boolean m27609h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f211A;
        return nestedScrollView != null && nestedScrollView.m27179q(keyEvent);
    }

    /* renamed from: l */
    public void m27605l(View view) {
        this.f217G = view;
    }

    /* renamed from: m */
    public void m27604m(int i) {
        this.f213C = null;
        this.f212B = i;
        ImageView imageView = this.f214D;
        if (imageView != null) {
            if (i != 0) {
                imageView.setVisibility(0);
                this.f214D.setImageResource(this.f212B);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    /* renamed from: r */
    public void m27599r(int i) {
        this.f237h = null;
        this.f238i = i;
        this.f243n = false;
    }

    /* renamed from: z */
    public static boolean m27591z(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C1008a.f2517m, typedValue, true);
        if (typedValue.data != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public int m27614c(int i) {
        TypedValue typedValue = new TypedValue();
        this.f230a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: i */
    public final ViewGroup m27608i(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    /* renamed from: j */
    public final int m27607j() {
        int i = this.f221K;
        if (i == 0) {
            return this.f220J;
        }
        if (this.f227Q == 1) {
            return i;
        }
        return this.f220J;
    }

    /* renamed from: k */
    public void m27606k(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.f228R.obtainMessage(i, onClickListener);
        }
        if (i != -3) {
            if (i != -2) {
                if (i == -1) {
                    this.f245p = charSequence;
                    this.f246q = message;
                    this.f247r = drawable;
                    return;
                }
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f249t = charSequence;
            this.f250u = message;
            this.f251v = drawable;
            return;
        }
        this.f253x = charSequence;
        this.f254y = message;
        this.f255z = drawable;
    }

    /* renamed from: n */
    public void m27603n(Drawable drawable) {
        this.f213C = drawable;
        this.f212B = 0;
        ImageView imageView = this.f214D;
        if (imageView != null) {
            if (drawable != null) {
                imageView.setVisibility(0);
                this.f214D.setImageDrawable(drawable);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    /* renamed from: o */
    public void m27602o(CharSequence charSequence) {
        this.f235f = charSequence;
        TextView textView = this.f216F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: p */
    public final void m27601p(ViewGroup viewGroup, View view, int i, int i2) {
        View findViewById = this.f232c.findViewById(C1013f.f2635v);
        View findViewById2 = this.f232c.findViewById(C1013f.f2634u);
        if (Build.VERSION.SDK_INT >= 23) {
            C3218s0.m19356O(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        if (findViewById != null && (i & 1) == 0) {
            viewGroup.removeView(findViewById);
            findViewById = null;
        }
        if (findViewById2 != null && (i & 2) == 0) {
            viewGroup.removeView(findViewById2);
            findViewById2 = null;
        }
        if (findViewById != null || findViewById2 != null) {
            if (this.f235f != null) {
                this.f211A.setOnScrollChangeListener(new C0136b(findViewById, findViewById2));
                this.f211A.post(new RunnableC0137c(findViewById, findViewById2));
                return;
            }
            ListView listView = this.f236g;
            if (listView != null) {
                listView.setOnScrollListener(new C0138d(findViewById, findViewById2));
                this.f236g.post(new RunnableC0139e(findViewById, findViewById2));
                return;
            }
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
            }
        }
    }

    /* renamed from: q */
    public void m27600q(CharSequence charSequence) {
        this.f234e = charSequence;
        TextView textView = this.f215E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: s */
    public void m27598s(View view) {
        this.f237h = view;
        this.f238i = 0;
        this.f243n = false;
    }

    /* renamed from: t */
    public void m27597t(View view, int i, int i2, int i3, int i4) {
        this.f237h = view;
        this.f238i = 0;
        this.f243n = true;
        this.f239j = i;
        this.f240k = i2;
        this.f241l = i3;
        this.f242m = i4;
    }

    /* renamed from: v */
    public final void m27595v(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f232c.findViewById(C1013f.f2636w);
        this.f211A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.f211A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.f216F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f235f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f211A.removeView(this.f216F);
        if (this.f236g != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.f211A.getParent();
            int indexOfChild = viewGroup2.indexOfChild(this.f211A);
            viewGroup2.removeViewAt(indexOfChild);
            viewGroup2.addView(this.f236g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        viewGroup.setVisibility(8);
    }

    /* renamed from: w */
    public final void m27594w(ViewGroup viewGroup) {
        View view = this.f237h;
        boolean z = false;
        if (view == null) {
            if (this.f238i != 0) {
                view = LayoutInflater.from(this.f230a).inflate(this.f238i, viewGroup, false);
            } else {
                view = null;
            }
        }
        if (view != null) {
            z = true;
        }
        if (!z || !m27616a(view)) {
            this.f232c.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) this.f232c.findViewById(C1013f.f2627n);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.f243n) {
                frameLayout.setPadding(this.f239j, this.f240k, this.f241l, this.f242m);
            }
            if (this.f236g != null) {
                ((C0227c.C0228a) viewGroup.getLayoutParams()).f792a = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    /* renamed from: x */
    public final void m27593x(ViewGroup viewGroup) {
        if (this.f217G != null) {
            viewGroup.addView(this.f217G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f232c.findViewById(C1013f.f2612O).setVisibility(8);
            return;
        }
        this.f214D = (ImageView) this.f232c.findViewById(16908294);
        if ((!TextUtils.isEmpty(this.f234e)) && this.f226P) {
            TextView textView = (TextView) this.f232c.findViewById(C1013f.f2623j);
            this.f215E = textView;
            textView.setText(this.f234e);
            int i = this.f212B;
            if (i != 0) {
                this.f214D.setImageResource(i);
                return;
            }
            Drawable drawable = this.f213C;
            if (drawable != null) {
                this.f214D.setImageDrawable(drawable);
                return;
            }
            this.f215E.setPadding(this.f214D.getPaddingLeft(), this.f214D.getPaddingTop(), this.f214D.getPaddingRight(), this.f214D.getPaddingBottom());
            this.f214D.setVisibility(8);
            return;
        }
        this.f232c.findViewById(C1013f.f2612O).setVisibility(8);
        this.f214D.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: y */
    public final void m27592y() {
        boolean z;
        boolean z2;
        boolean z3;
        View findViewById;
        ListAdapter listAdapter;
        View findViewById2;
        View findViewById3 = this.f232c.findViewById(C1013f.f2633t);
        int i = C1013f.f2613P;
        View findViewById4 = findViewById3.findViewById(i);
        int i2 = C1013f.f2626m;
        View findViewById5 = findViewById3.findViewById(i2);
        int i3 = C1013f.f2624k;
        View findViewById6 = findViewById3.findViewById(i3);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(C1013f.f2628o);
        m27594w(viewGroup);
        View findViewById7 = viewGroup.findViewById(i);
        View findViewById8 = viewGroup.findViewById(i2);
        View findViewById9 = viewGroup.findViewById(i3);
        ViewGroup m27608i = m27608i(findViewById7, findViewById4);
        ViewGroup m27608i2 = m27608i(findViewById8, findViewById5);
        ViewGroup m27608i3 = m27608i(findViewById9, findViewById6);
        m27595v(m27608i2);
        m27596u(m27608i3);
        m27593x(m27608i);
        int i4 = 0;
        if (viewGroup.getVisibility() != 8) {
            z = true;
        } else {
            z = false;
        }
        if (m27608i != null && m27608i.getVisibility() != 8) {
            z2 = 1;
        } else {
            z2 = 0;
        }
        if (m27608i3 != null && m27608i3.getVisibility() != 8) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z3 && m27608i2 != null && (findViewById2 = m27608i2.findViewById(C1013f.f2608K)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            NestedScrollView nestedScrollView = this.f211A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (this.f235f != null || this.f236g != null) {
                view = m27608i.findViewById(C1013f.f2611N);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (m27608i2 != null && (findViewById = m27608i2.findViewById(C1013f.f2609L)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f236g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).m27590a(z2, z3);
        }
        if (!z) {
            View view2 = this.f236g;
            if (view2 == null) {
                view2 = this.f211A;
            }
            if (view2 != null) {
                if (z3) {
                    i4 = 2;
                }
                m27601p(m27608i2, view2, z2 | i4, 3);
            }
        }
        ListView listView2 = this.f236g;
        if (listView2 != null && (listAdapter = this.f218H) != null) {
            listView2.setAdapter(listAdapter);
            int i5 = this.f219I;
            if (i5 > -1) {
                listView2.setItemChecked(i5, true);
                listView2.setSelection(i5);
            }
        }
    }

    public AlertController(Context context, DialogC3137k dialogC3137k, Window window) {
        this.f230a = context;
        this.f231b = dialogC3137k;
        this.f232c = window;
        this.f228R = new HandlerC0146g(dialogC3137k);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C1017j.f2701F, C1008a.f2518n, 0);
        this.f220J = obtainStyledAttributes.getResourceId(C1017j.f2706G, 0);
        this.f221K = obtainStyledAttributes.getResourceId(C1017j.f2716I, 0);
        this.f222L = obtainStyledAttributes.getResourceId(C1017j.f2726K, 0);
        this.f223M = obtainStyledAttributes.getResourceId(C1017j.f2731L, 0);
        this.f224N = obtainStyledAttributes.getResourceId(C1017j.f2739N, 0);
        this.f225O = obtainStyledAttributes.getResourceId(C1017j.f2721J, 0);
        this.f226P = obtainStyledAttributes.getBoolean(C1017j.f2735M, true);
        this.f233d = obtainStyledAttributes.getDimensionPixelSize(C1017j.f2711H, 0);
        obtainStyledAttributes.recycle();
        dialogC3137k.m19565e(1);
    }

    /* renamed from: a */
    public static boolean m27616a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (m27616a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m27615b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: e */
    public void m27612e() {
        this.f231b.setContentView(m27607j());
        m27592y();
    }

    /* renamed from: u */
    public final void m27596u(ViewGroup viewGroup) {
        boolean z;
        Button button = (Button) viewGroup.findViewById(16908313);
        this.f244o = button;
        button.setOnClickListener(this.f229S);
        boolean z2 = true;
        if (TextUtils.isEmpty(this.f245p) && this.f247r == null) {
            this.f244o.setVisibility(8);
            z = false;
        } else {
            this.f244o.setText(this.f245p);
            Drawable drawable = this.f247r;
            if (drawable != null) {
                int i = this.f233d;
                drawable.setBounds(0, 0, i, i);
                this.f244o.setCompoundDrawables(this.f247r, null, null, null);
            }
            this.f244o.setVisibility(0);
            z = true;
        }
        Button button2 = (Button) viewGroup.findViewById(16908314);
        this.f248s = button2;
        button2.setOnClickListener(this.f229S);
        if (TextUtils.isEmpty(this.f249t) && this.f251v == null) {
            this.f248s.setVisibility(8);
        } else {
            this.f248s.setText(this.f249t);
            Drawable drawable2 = this.f251v;
            if (drawable2 != null) {
                int i2 = this.f233d;
                drawable2.setBounds(0, 0, i2, i2);
                this.f248s.setCompoundDrawables(this.f251v, null, null, null);
            }
            this.f248s.setVisibility(0);
            z |= true;
        }
        Button button3 = (Button) viewGroup.findViewById(16908315);
        this.f252w = button3;
        button3.setOnClickListener(this.f229S);
        if (TextUtils.isEmpty(this.f253x) && this.f255z == null) {
            this.f252w.setVisibility(8);
        } else {
            this.f252w.setText(this.f253x);
            Drawable drawable3 = this.f255z;
            if (drawable3 != null) {
                int i3 = this.f233d;
                drawable3.setBounds(0, 0, i3, i3);
                this.f252w.setCompoundDrawables(this.f255z, null, null, null);
            }
            this.f252w.setVisibility(0);
            z |= true;
        }
        if (m27591z(this.f230a)) {
            if (z) {
                m27615b(this.f244o);
            } else if (z) {
                m27615b(this.f248s);
            } else if (z) {
                m27615b(this.f252w);
            }
        }
        if (!z) {
            z2 = false;
        }
        if (!z2) {
            viewGroup.setVisibility(8);
        }
    }
}
