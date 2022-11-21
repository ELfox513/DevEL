package p168r4;
/* renamed from: r4.fp3 */
/* loaded from: classes2.dex */
public final class fp3 {
    /* renamed from: a */
    public static String m11398a(ll3 ll3Var) {
        StringBuilder sb = new StringBuilder(ll3Var.mo7747o());
        for (int i = 0; i < ll3Var.mo7747o(); i++) {
            byte mo7749l = ll3Var.mo7749l(i);
            if (mo7749l != 34) {
                if (mo7749l != 39) {
                    if (mo7749l != 92) {
                        switch (mo7749l) {
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
                                if (mo7749l >= 32 && mo7749l <= 126) {
                                    sb.append((char) mo7749l);
                                    continue;
                                } else {
                                    sb.append('\\');
                                    sb.append((char) (((mo7749l >>> 6) & 3) + 48));
                                    sb.append((char) (((mo7749l >>> 3) & 7) + 48));
                                    sb.append((char) ((mo7749l & 7) + 48));
                                    break;
                                }
                                break;
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
