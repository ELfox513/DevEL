package p168r4;

import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: r4.ao */
/* loaded from: classes2.dex */
public final class C5585ao {

    /* renamed from: a */
    public final AbstractC6139pn f20557a;

    /* renamed from: b */
    public final int f20558b;

    /* renamed from: c */
    public String f20559c;

    /* renamed from: d */
    public final int f20560d;

    public C5585ao(int i, int i2, int i3) {
        this.f20558b = i;
        i2 = (i2 > 64 || i2 < 0) ? 64 : 64;
        if (i3 <= 0) {
            this.f20560d = 1;
        } else {
            this.f20560d = i3;
        }
        this.f20557a = new C6472yn(i2);
    }

    /* renamed from: a */
    public final String m12989a(ArrayList<String> arrayList, ArrayList<C6102on> arrayList2) {
        String str;
        Collections.sort(arrayList2, new C6509zn(this));
        HashSet hashSet = new HashSet();
        loop0: for (int i = 0; i < arrayList2.size(); i++) {
            String[] split = Normalizer.normalize(arrayList.get(arrayList2.get(i).m8753e()), Normalizer.Form.NFKC).toLowerCase(Locale.US).split("\n");
            if (split.length != 0) {
                for (String str2 : split) {
                    if (str2.contains("'")) {
                        StringBuilder sb = new StringBuilder(str2);
                        int i2 = 1;
                        boolean z = false;
                        while (true) {
                            int i3 = i2 + 2;
                            if (i3 > sb.length()) {
                                break;
                            }
                            if (sb.charAt(i2) == '\'') {
                                if (sb.charAt(i2 - 1) != ' ') {
                                    int i4 = i2 + 1;
                                    if ((sb.charAt(i4) == 's' || sb.charAt(i4) == 'S') && (i3 == sb.length() || sb.charAt(i3) == ' ')) {
                                        sb.insert(i2, ' ');
                                        i2 = i3;
                                        z = true;
                                    }
                                }
                                sb.setCharAt(i2, ' ');
                                z = true;
                            }
                            i2++;
                        }
                        if (z) {
                            str = sb.toString();
                        } else {
                            str = null;
                        }
                        if (str != null) {
                            this.f20559c = str;
                            str2 = str;
                        }
                    }
                    String[] m6787b = C6287tn.m6787b(str2, true);
                    if (m6787b.length >= this.f20560d) {
                        for (int i5 = 0; i5 < m6787b.length; i5++) {
                            String str3 = "";
                            for (int i6 = 0; i6 < this.f20560d; i6++) {
                                int i7 = i5 + i6;
                                if (i7 >= m6787b.length) {
                                    break;
                                }
                                if (i6 > 0) {
                                    str3 = String.valueOf(str3).concat(" ");
                                }
                                String valueOf = String.valueOf(str3);
                                String valueOf2 = String.valueOf(m6787b[i7]);
                                if (valueOf2.length() != 0) {
                                    str3 = valueOf.concat(valueOf2);
                                } else {
                                    str3 = new String(valueOf);
                                }
                            }
                            hashSet.add(str3);
                            if (hashSet.size() >= this.f20558b) {
                                break loop0;
                            }
                        }
                        if (hashSet.size() >= this.f20558b) {
                            break loop0;
                        }
                    }
                }
                continue;
            }
        }
        C6213rn c6213rn = new C6213rn();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                c6213rn.f30632b.write(this.f20557a.mo4628a((String) it.next()));
            } catch (IOException e) {
                cm0.m12439d("Error while writing hash to byteStream", e);
            }
        }
        return c6213rn.toString();
    }
}
