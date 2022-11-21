package p237z4;
/* renamed from: z4.t2 */
/* loaded from: classes2.dex */
public final class C7713t2 {
    /* renamed from: a */
    public static String m589a(AbstractC7652i abstractC7652i) {
        C7717u2 c7717u2 = new C7717u2(abstractC7652i);
        StringBuilder sb = new StringBuilder(c7717u2.size());
        for (int i = 0; i < c7717u2.size(); i++) {
            byte mo556d0 = c7717u2.mo556d0(i);
            if (mo556d0 != 34) {
                if (mo556d0 != 39) {
                    if (mo556d0 != 92) {
                        switch (mo556d0) {
                            case 7:
                                sb.append("\\a");
                                continue;
                            case 8:
                                sb.append("\\b");
                                continue;
                            case 9:
                                sb.append("\\t");
                                continue;
                            case 10:
                                sb.append("\\n");
                                continue;
                            case 11:
                                sb.append("\\v");
                                continue;
                            case 12:
                                sb.append("\\f");
                                continue;
                            case 13:
                                sb.append("\\r");
                                continue;
                            default:
                                if (mo556d0 >= 32 && mo556d0 <= 126) {
                                    sb.append((char) mo556d0);
                                    continue;
                                } else {
                                    sb.append('\\');
                                    sb.append((char) (((mo556d0 >>> 6) & 3) + 48));
                                    sb.append((char) (((mo556d0 >>> 3) & 7) + 48));
                                    sb.append((char) ((mo556d0 & 7) + 48));
                                    break;
                                }
                        }
                    } else {
                        sb.append("\\\\");
                    }
                } else {
                    sb.append("\\'");
                }
            } else {
                sb.append("\\\"");
            }
        }
        return sb.toString();
    }
}
