package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.AbstractC0285n;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.LayoutInflater$Factory2C0264j;
import java.io.PrintWriter;
import java.util.ArrayList;
import p022c0.C1020c;
/* renamed from: androidx.fragment.app.a */
/* loaded from: classes.dex */
public final class C0251a extends AbstractC0285n implements LayoutInflater$Factory2C0264j.InterfaceC0276k {

    /* renamed from: s */
    public final LayoutInflater$Factory2C0264j f956s;

    /* renamed from: t */
    public boolean f957t;

    /* renamed from: u */
    public int f958u = -1;

    @Override // androidx.fragment.app.AbstractC0285n
    /* renamed from: d */
    public int mo26889d() {
        return m27113i(false);
    }

    @Override // androidx.fragment.app.AbstractC0285n
    /* renamed from: e */
    public int mo26888e() {
        return m27113i(true);
    }

    /* renamed from: j */
    public void m27112j(String str, PrintWriter printWriter) {
        m27111k(str, printWriter, true);
    }

    /* renamed from: o */
    public String m27107o() {
        return this.f1106j;
    }

    /* renamed from: q */
    public boolean m27105q(ArrayList<C0251a> arrayList, int i, int i2) {
        int i3;
        int i4;
        if (i2 == i) {
            return false;
        }
        int size = this.f1097a.size();
        int i5 = -1;
        for (int i6 = 0; i6 < size; i6++) {
            Fragment fragment = this.f1097a.get(i6).f1116b;
            if (fragment != null) {
                i3 = fragment.f892H;
            } else {
                i3 = 0;
            }
            if (i3 != 0 && i3 != i5) {
                for (int i7 = i; i7 < i2; i7++) {
                    C0251a c0251a = arrayList.get(i7);
                    int size2 = c0251a.f1097a.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        Fragment fragment2 = c0251a.f1097a.get(i8).f1116b;
                        if (fragment2 != null) {
                            i4 = fragment2.f892H;
                        } else {
                            i4 = 0;
                        }
                        if (i4 == i3) {
                            return true;
                        }
                    }
                }
                i5 = i3;
            }
        }
        return false;
    }

    /* renamed from: s */
    public boolean m27103s() {
        for (int i = 0; i < this.f1097a.size(); i++) {
            if (m27104r(this.f1097a.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: u */
    public void m27101u(Fragment.InterfaceC0248f interfaceC0248f) {
        for (int i = 0; i < this.f1097a.size(); i++) {
            AbstractC0285n.C0286a c0286a = this.f1097a.get(i);
            if (m27104r(c0286a)) {
                c0286a.f1116b.m27141Z(interfaceC0248f);
            }
        }
    }

    /* renamed from: r */
    public static boolean m27104r(AbstractC0285n.C0286a c0286a) {
        Fragment fragment = c0286a.f1116b;
        if (fragment != null && fragment.f929v && fragment.f902R != null && !fragment.f895K && !fragment.f894J && fragment.m27124t()) {
            return true;
        }
        return false;
    }

    @Override // androidx.fragment.app.LayoutInflater$Factory2C0264j.InterfaceC0276k
    /* renamed from: a */
    public boolean mo26911a(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2) {
        if (LayoutInflater$Factory2C0264j.f1006S) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.f1104h) {
            this.f956s.m26953j(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.AbstractC0285n
    /* renamed from: g */
    public AbstractC0285n mo26886g(Fragment fragment) {
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = fragment.f887C;
        if (layoutInflater$Factory2C0264j != null && layoutInflater$Factory2C0264j != this.f956s) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.mo26886g(fragment);
    }

    /* renamed from: h */
    public void m27114h(int i) {
        AbstractC0285n.C0286a c0286a;
        if (!this.f1104h) {
            return;
        }
        if (LayoutInflater$Factory2C0264j.f1006S) {
            Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
        }
        int size = this.f1097a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f1097a.get(i2).f1116b;
            if (fragment != null) {
                fragment.f886B += i;
                if (LayoutInflater$Factory2C0264j.f1006S) {
                    Log.v("FragmentManager", "Bump nesting of " + c0286a.f1116b + " to " + c0286a.f1116b.f886B);
                }
            }
        }
    }

    /* renamed from: i */
    public int m27113i(boolean z) {
        if (!this.f957t) {
            if (LayoutInflater$Factory2C0264j.f1006S) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new C1020c("FragmentManager"));
                m27112j("  ", printWriter);
                printWriter.close();
            }
            this.f957t = true;
            if (this.f1104h) {
                this.f958u = this.f956s.m26944m(this);
            } else {
                this.f958u = -1;
            }
            this.f956s.m26958h0(this, z);
            return this.f958u;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: k */
    public void m27111k(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f1106j);
            printWriter.print(" mIndex=");
            printWriter.print(this.f958u);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f957t);
            if (this.f1102f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f1102f));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.f1103g));
            }
            if (this.f1098b != 0 || this.f1099c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1098b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1099c));
            }
            if (this.f1100d != 0 || this.f1101e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1100d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1101e));
            }
            if (this.f1107k != 0 || this.f1108l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1107k));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f1108l);
            }
            if (this.f1109m != 0 || this.f1110n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1109m));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f1110n);
            }
        }
        if (!this.f1097a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f1097a.size();
            for (int i = 0; i < size; i++) {
                AbstractC0285n.C0286a c0286a = this.f1097a.get(i);
                switch (c0286a.f1115a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + c0286a.f1115a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(c0286a.f1116b);
                if (z) {
                    if (c0286a.f1117c != 0 || c0286a.f1118d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(c0286a.f1117c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(c0286a.f1118d));
                    }
                    if (c0286a.f1119e != 0 || c0286a.f1120f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(c0286a.f1119e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(c0286a.f1120f));
                    }
                }
            }
        }
    }

    /* renamed from: l */
    public void m27110l() {
        int size = this.f1097a.size();
        for (int i = 0; i < size; i++) {
            AbstractC0285n.C0286a c0286a = this.f1097a.get(i);
            Fragment fragment = c0286a.f1116b;
            if (fragment != null) {
                fragment.m27142Y(this.f1102f, this.f1103g);
            }
            switch (c0286a.f1115a) {
                case 1:
                    fragment.m27143X(c0286a.f1117c);
                    this.f956s.m26950k(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0286a.f1115a);
                case 3:
                    fragment.m27143X(c0286a.f1118d);
                    this.f956s.m26984X0(fragment);
                    break;
                case 4:
                    fragment.m27143X(c0286a.f1118d);
                    this.f956s.m27028B0(fragment);
                    break;
                case 5:
                    fragment.m27143X(c0286a.f1117c);
                    this.f956s.m26948k1(fragment);
                    break;
                case 6:
                    fragment.m27143X(c0286a.f1118d);
                    this.f956s.m26921w(fragment);
                    break;
                case 7:
                    fragment.m27143X(c0286a.f1117c);
                    this.f956s.m26935p(fragment);
                    break;
                case 8:
                    this.f956s.m26951j1(fragment);
                    break;
                case 9:
                    this.f956s.m26951j1(null);
                    break;
                case 10:
                    this.f956s.m26954i1(fragment, c0286a.f1122h);
                    break;
            }
            if (!this.f1113q && c0286a.f1115a != 1 && fragment != null) {
                this.f956s.m27004N0(fragment);
            }
        }
        if (!this.f1113q) {
            LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f956s;
            layoutInflater$Factory2C0264j.m27002O0(layoutInflater$Factory2C0264j.f1009A, true);
        }
    }

    /* renamed from: m */
    public void m27109m(boolean z) {
        for (int size = this.f1097a.size() - 1; size >= 0; size--) {
            AbstractC0285n.C0286a c0286a = this.f1097a.get(size);
            Fragment fragment = c0286a.f1116b;
            if (fragment != null) {
                fragment.m27142Y(LayoutInflater$Factory2C0264j.m26971c1(this.f1102f), this.f1103g);
            }
            switch (c0286a.f1115a) {
                case 1:
                    fragment.m27143X(c0286a.f1120f);
                    this.f956s.m26984X0(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0286a.f1115a);
                case 3:
                    fragment.m27143X(c0286a.f1119e);
                    this.f956s.m26950k(fragment, false);
                    break;
                case 4:
                    fragment.m27143X(c0286a.f1119e);
                    this.f956s.m26948k1(fragment);
                    break;
                case 5:
                    fragment.m27143X(c0286a.f1120f);
                    this.f956s.m27028B0(fragment);
                    break;
                case 6:
                    fragment.m27143X(c0286a.f1119e);
                    this.f956s.m26935p(fragment);
                    break;
                case 7:
                    fragment.m27143X(c0286a.f1120f);
                    this.f956s.m26921w(fragment);
                    break;
                case 8:
                    this.f956s.m26951j1(null);
                    break;
                case 9:
                    this.f956s.m26951j1(fragment);
                    break;
                case 10:
                    this.f956s.m26954i1(fragment, c0286a.f1121g);
                    break;
            }
            if (!this.f1113q && c0286a.f1115a != 3 && fragment != null) {
                this.f956s.m27004N0(fragment);
            }
        }
        if (!this.f1113q && z) {
            LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f956s;
            layoutInflater$Factory2C0264j.m27002O0(layoutInflater$Factory2C0264j.f1009A, true);
        }
    }

    /* renamed from: n */
    public Fragment m27108n(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i = 0;
        while (i < this.f1097a.size()) {
            AbstractC0285n.C0286a c0286a = this.f1097a.get(i);
            int i2 = c0286a.f1115a;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3 && i2 != 6) {
                        if (i2 != 7) {
                            if (i2 == 8) {
                                this.f1097a.add(i, new AbstractC0285n.C0286a(9, fragment2));
                                i++;
                                fragment2 = c0286a.f1116b;
                            }
                        }
                    } else {
                        arrayList.remove(c0286a.f1116b);
                        Fragment fragment3 = c0286a.f1116b;
                        if (fragment3 == fragment2) {
                            this.f1097a.add(i, new AbstractC0285n.C0286a(9, fragment3));
                            i++;
                            fragment2 = null;
                        }
                    }
                } else {
                    Fragment fragment4 = c0286a.f1116b;
                    int i3 = fragment4.f892H;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment5 = arrayList.get(size);
                        if (fragment5.f892H == i3) {
                            if (fragment5 == fragment4) {
                                z = true;
                            } else {
                                if (fragment5 == fragment2) {
                                    this.f1097a.add(i, new AbstractC0285n.C0286a(9, fragment5));
                                    i++;
                                    fragment2 = null;
                                }
                                AbstractC0285n.C0286a c0286a2 = new AbstractC0285n.C0286a(3, fragment5);
                                c0286a2.f1117c = c0286a.f1117c;
                                c0286a2.f1119e = c0286a.f1119e;
                                c0286a2.f1118d = c0286a.f1118d;
                                c0286a2.f1120f = c0286a.f1120f;
                                this.f1097a.add(i, c0286a2);
                                arrayList.remove(fragment5);
                                i++;
                            }
                        }
                    }
                    if (z) {
                        this.f1097a.remove(i);
                        i--;
                    } else {
                        c0286a.f1115a = 1;
                        arrayList.add(fragment4);
                    }
                }
                i++;
            }
            arrayList.add(c0286a.f1116b);
            i++;
        }
        return fragment2;
    }

    /* renamed from: p */
    public boolean m27106p(int i) {
        int i2;
        int size = this.f1097a.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = this.f1097a.get(i3).f1116b;
            if (fragment != null) {
                i2 = fragment.f892H;
            } else {
                i2 = 0;
            }
            if (i2 != 0 && i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: t */
    public void m27102t() {
        if (this.f1114r != null) {
            for (int i = 0; i < this.f1114r.size(); i++) {
                this.f1114r.get(i).run();
            }
            this.f1114r = null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f958u >= 0) {
            sb.append(" #");
            sb.append(this.f958u);
        }
        if (this.f1106j != null) {
            sb.append(" ");
            sb.append(this.f1106j);
        }
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: v */
    public Fragment m27100v(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f1097a.size() - 1; size >= 0; size--) {
            AbstractC0285n.C0286a c0286a = this.f1097a.get(size);
            int i = c0286a.f1115a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = c0286a.f1116b;
                            break;
                        case 10:
                            c0286a.f1122h = c0286a.f1121g;
                            break;
                    }
                }
                arrayList.add(c0286a.f1116b);
            }
            arrayList.remove(c0286a.f1116b);
        }
        return fragment;
    }

    public C0251a(LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j) {
        this.f956s = layoutInflater$Factory2C0264j;
    }

    @Override // androidx.fragment.app.AbstractC0285n
    /* renamed from: f */
    public void mo26887f(int i, Fragment fragment, String str, int i2) {
        super.mo26887f(i, fragment, str, i2);
        fragment.f887C = this.f956s;
    }
}
