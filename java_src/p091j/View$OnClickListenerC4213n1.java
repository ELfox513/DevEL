package p091j;

import android.annotation.SuppressLint;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import p021c.C1008a;
import p021c.C1013f;
import p065g0.AbstractC3544c;
import p172s.C6550a;
@SuppressLint({"RestrictedAPI"})
/* renamed from: j.n1 */
/* loaded from: classes.dex */
public class View$OnClickListenerC4213n1 extends AbstractC3544c implements View.OnClickListener {

    /* renamed from: A */
    public final int f17951A;

    /* renamed from: B */
    public boolean f17952B;

    /* renamed from: C */
    public int f17953C;

    /* renamed from: D */
    public ColorStateList f17954D;

    /* renamed from: E */
    public int f17955E;

    /* renamed from: F */
    public int f17956F;

    /* renamed from: G */
    public int f17957G;

    /* renamed from: H */
    public int f17958H;

    /* renamed from: I */
    public int f17959I;

    /* renamed from: J */
    public int f17960J;

    /* renamed from: w */
    public final SearchView f17961w;

    /* renamed from: x */
    public final SearchableInfo f17962x;

    /* renamed from: y */
    public final Context f17963y;

    /* renamed from: z */
    public final WeakHashMap<String, Drawable.ConstantState> f17964z;

    /* renamed from: D */
    public static String m17082D(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    /* renamed from: C */
    public Cursor m17083C(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.f16066k.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }

    /* renamed from: E */
    public void m17081E(int i) {
        this.f17953C = i;
    }

    /* renamed from: H */
    public final void m17078H(String str, Drawable drawable) {
        if (drawable != null) {
            this.f17964z.put(str, drawable.getConstantState());
        }
    }

    @Override // p065g0.AbstractC3539a, p065g0.C3542b.InterfaceC3543a
    public CharSequence convertToString(Cursor cursor) {
        String m17068v;
        String m17068v2;
        if (cursor == null) {
            return null;
        }
        String m17068v3 = m17068v(cursor, "suggest_intent_query");
        if (m17068v3 != null) {
            return m17068v3;
        }
        if (this.f17962x.shouldRewriteQueryFromData() && (m17068v2 = m17068v(cursor, "suggest_intent_data")) != null) {
            return m17068v2;
        }
        if (!this.f17962x.shouldRewriteQueryFromText() || (m17068v = m17068v(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return m17068v;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    /* renamed from: z */
    public final Drawable m17064z(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f17963y.getPackageName() + "/" + parseInt;
            Drawable m17072r = m17072r(str2);
            if (m17072r != null) {
                return m17072r;
            }
            Drawable m3935e = C6550a.m3935e(this.f17963y, parseInt);
            m17078H(str2, m3935e);
            return m3935e;
        } catch (Resources.NotFoundException unused) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable m17072r2 = m17072r(str);
            if (m17072r2 != null) {
                return m17072r2;
            }
            Drawable m17066x = m17066x(Uri.parse(str));
            m17078H(str, m17066x);
            return m17066x;
        }
    }

    /* renamed from: j.n1$a */
    /* loaded from: classes.dex */
    public static final class C4214a {

        /* renamed from: a */
        public final TextView f17965a;

        /* renamed from: b */
        public final TextView f17966b;

        /* renamed from: c */
        public final ImageView f17967c;

        /* renamed from: d */
        public final ImageView f17968d;

        /* renamed from: e */
        public final ImageView f17969e;

        public C4214a(View view) {
            this.f17965a = (TextView) view.findViewById(16908308);
            this.f17966b = (TextView) view.findViewById(16908309);
            this.f17967c = (ImageView) view.findViewById(16908295);
            this.f17968d = (ImageView) view.findViewById(16908296);
            this.f17969e = (ImageView) view.findViewById(C1013f.f2630q);
        }
    }

    /* renamed from: A */
    public final Drawable m17085A(Cursor cursor) {
        int i = this.f17958H;
        if (i == -1) {
            return null;
        }
        Drawable m17064z = m17064z(cursor.getString(i));
        if (m17064z != null) {
            return m17064z;
        }
        return m17067w();
    }

    /* renamed from: B */
    public final Drawable m17084B(Cursor cursor) {
        int i = this.f17959I;
        if (i == -1) {
            return null;
        }
        return m17064z(cursor.getString(i));
    }

    /* renamed from: I */
    public final void m17077I(Cursor cursor) {
        Bundle bundle;
        if (cursor != null) {
            bundle = cursor.getExtras();
        } else {
            bundle = null;
        }
        if (bundle != null) {
            bundle.getBoolean("in_progress");
        }
    }

    @Override // p065g0.AbstractC3539a, p065g0.C3542b.InterfaceC3543a
    /* renamed from: b */
    public void mo17076b(Cursor cursor) {
        if (this.f17952B) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.mo17076b(cursor);
            if (cursor != null) {
                this.f17955E = cursor.getColumnIndex("suggest_text_1");
                this.f17956F = cursor.getColumnIndex("suggest_text_2");
                this.f17957G = cursor.getColumnIndex("suggest_text_2_url");
                this.f17958H = cursor.getColumnIndex("suggest_icon_1");
                this.f17959I = cursor.getColumnIndex("suggest_icon_2");
                this.f17960J = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // p065g0.C3542b.InterfaceC3543a
    /* renamed from: c */
    public Cursor mo17075c(CharSequence charSequence) {
        String charSequence2;
        if (charSequence == null) {
            charSequence2 = "";
        } else {
            charSequence2 = charSequence.toString();
        }
        if (this.f17961w.getVisibility() == 0 && this.f17961w.getWindowVisibility() == 0) {
            try {
                Cursor m17083C = m17083C(this.f17962x, charSequence2, 50);
                if (m17083C != null) {
                    m17083C.getCount();
                    return m17083C;
                }
            } catch (RuntimeException e) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
            }
        }
        return null;
    }

    /* renamed from: r */
    public final Drawable m17072r(String str) {
        Drawable.ConstantState constantState = this.f17964z.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* renamed from: s */
    public final CharSequence m17071s(CharSequence charSequence) {
        if (this.f17954D == null) {
            TypedValue typedValue = new TypedValue();
            this.f16066k.getTheme().resolveAttribute(C1008a.f2502J, typedValue, true);
            this.f17954D = this.f16066k.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f17954D, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* renamed from: t */
    public final Drawable m17070t(ComponentName componentName) {
        PackageManager packageManager = this.f16066k.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable == null) {
                Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
                return null;
            }
            return drawable;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("SuggestionsAdapter", e.toString());
            return null;
        }
    }

    /* renamed from: w */
    public final Drawable m17067w() {
        Drawable m17069u = m17069u(this.f17962x.getSearchActivity());
        if (m17069u != null) {
            return m17069u;
        }
        return this.f16066k.getPackageManager().getDefaultActivityIcon();
    }

    /* renamed from: x */
    public final Drawable m17066x(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m17065y(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.f17963y.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                try {
                    openInputStream.close();
                } catch (IOException e) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e);
                }
                return createFromStream;
            }
            throw new FileNotFoundException("Failed to open " + uri);
        } catch (FileNotFoundException e2) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e2.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e2.getMessage());
        return null;
    }

    public View$OnClickListenerC4213n1(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f17952B = false;
        this.f17953C = 1;
        this.f17955E = -1;
        this.f17956F = -1;
        this.f17957G = -1;
        this.f17958H = -1;
        this.f17959I = -1;
        this.f17960J = -1;
        this.f17961w = searchView;
        this.f17962x = searchableInfo;
        this.f17951A = searchView.getSuggestionCommitIconResId();
        this.f17963y = context;
        this.f17964z = weakHashMap;
    }

    /* renamed from: v */
    public static String m17068v(Cursor cursor, String str) {
        return m17082D(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: F */
    public final void m17080F(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    /* renamed from: G */
    public final void m17079G(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    @Override // p065g0.AbstractC3539a
    /* renamed from: d */
    public void mo17074d(View view, Context context, Cursor cursor) {
        int i;
        CharSequence m17082D;
        C4214a c4214a = (C4214a) view.getTag();
        int i2 = this.f17960J;
        if (i2 != -1) {
            i = cursor.getInt(i2);
        } else {
            i = 0;
        }
        if (c4214a.f17965a != null) {
            m17079G(c4214a.f17965a, m17082D(cursor, this.f17955E));
        }
        if (c4214a.f17966b != null) {
            String m17082D2 = m17082D(cursor, this.f17957G);
            if (m17082D2 != null) {
                m17082D = m17071s(m17082D2);
            } else {
                m17082D = m17082D(cursor, this.f17956F);
            }
            if (TextUtils.isEmpty(m17082D)) {
                TextView textView = c4214a.f17965a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    c4214a.f17965a.setMaxLines(2);
                }
            } else {
                TextView textView2 = c4214a.f17965a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    c4214a.f17965a.setMaxLines(1);
                }
            }
            m17079G(c4214a.f17966b, m17082D);
        }
        ImageView imageView = c4214a.f17967c;
        if (imageView != null) {
            m17080F(imageView, m17085A(cursor), 4);
        }
        ImageView imageView2 = c4214a.f17968d;
        if (imageView2 != null) {
            m17080F(imageView2, m17084B(cursor), 8);
        }
        int i3 = this.f17953C;
        if (i3 != 2 && (i3 != 1 || (i & 1) == 0)) {
            c4214a.f17969e.setVisibility(8);
            return;
        }
        c4214a.f17969e.setVisibility(0);
        c4214a.f17969e.setTag(c4214a.f17965a.getText());
        c4214a.f17969e.setOnClickListener(this);
    }

    @Override // p065g0.AbstractC3539a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View mo18646g = mo18646g(this.f16066k, this.f16065d, viewGroup);
            if (mo18646g != null) {
                ((C4214a) mo18646g.getTag()).f17965a.setText(e.toString());
            }
            return mo18646g;
        }
    }

    @Override // p065g0.AbstractC3539a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View mo17073j = mo17073j(this.f16066k, this.f16065d, viewGroup);
            if (mo17073j != null) {
                ((C4214a) mo17073j.getTag()).f17965a.setText(e.toString());
            }
            return mo17073j;
        }
    }

    @Override // p065g0.AbstractC3544c, p065g0.AbstractC3539a
    /* renamed from: j */
    public View mo17073j(Context context, Cursor cursor, ViewGroup viewGroup) {
        View mo17073j = super.mo17073j(context, cursor, viewGroup);
        mo17073j.setTag(new C4214a(mo17073j));
        ((ImageView) mo17073j.findViewById(C1013f.f2630q)).setImageResource(this.f17951A);
        return mo17073j;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m17077I(mo18647a());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m17077I(mo18647a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f17961w.m27383Q((CharSequence) tag);
        }
    }

    /* renamed from: u */
    public final Drawable m17069u(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        Drawable.ConstantState constantState = null;
        if (this.f17964z.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState2 = this.f17964z.get(flattenToShortString);
            if (constantState2 == null) {
                return null;
            }
            return constantState2.newDrawable(this.f17963y.getResources());
        }
        Drawable m17070t = m17070t(componentName);
        if (m17070t != null) {
            constantState = m17070t.getConstantState();
        }
        this.f17964z.put(flattenToShortString, constantState);
        return m17070t;
    }

    /* renamed from: y */
    public Drawable m17065y(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f16066k.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException unused) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                        }
                    } else if (size == 2) {
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: " + uri);
                    }
                    if (parseInt != 0) {
                        return resourcesForApplication.getDrawable(parseInt);
                    }
                    throw new FileNotFoundException("No resource found for: " + uri);
                }
                throw new FileNotFoundException("No path: " + uri);
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new FileNotFoundException("No package found for authority: " + uri);
            }
        }
        throw new FileNotFoundException("No authority: " + uri);
    }
}
