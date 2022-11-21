package p018b5;
/* renamed from: b5.fb */
/* loaded from: classes2.dex */
public final class C0652fb {
    /* renamed from: a */
    public static String m25941a(AbstractC0937w7 abstractC0937w7) {
        StringBuilder sb = new StringBuilder(abstractC0937w7.mo25037g());
        for (int i = 0; i < abstractC0937w7.mo25037g(); i++) {
            byte mo25039d = abstractC0937w7.mo25039d(i);
            if (mo25039d != 34) {
                if (mo25039d != 39) {
                    if (mo25039d != 92) {
                        switch (mo25039d) {
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
                                if (mo25039d >= 32 && mo25039d <= 126) {
                                    sb.append((char) mo25039d);
                                    continue;
                                } else {
                                    sb.append('\\');
                                    sb.append((char) (((mo25039d >>> 6) & 3) + 48));
                                    sb.append((char) (((mo25039d >>> 3) & 7) + 48));
                                    sb.append((char) ((mo25039d & 7) + 48));
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
