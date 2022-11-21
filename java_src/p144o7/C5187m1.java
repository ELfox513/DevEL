package p144o7;
/* renamed from: o7.m1 */
/* loaded from: classes2.dex */
public final class C5187m1 {

    /* renamed from: o7.m1$a */
    /* loaded from: classes2.dex */
    public static class C5188a implements InterfaceC5189b {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5137h f19514a;

        public C5188a(AbstractC5137h abstractC5137h) {
            this.f19514a = abstractC5137h;
        }

        @Override // p144o7.C5187m1.InterfaceC5189b
        /* renamed from: a */
        public byte mo14181a(int i) {
            return this.f19514a.mo14537e(i);
        }

        @Override // p144o7.C5187m1.InterfaceC5189b
        public int size() {
            return this.f19514a.size();
        }
    }

    /* renamed from: o7.m1$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC5189b {
        /* renamed from: a */
        byte mo14181a(int i);

        int size();
    }

    /* renamed from: a */
    public static String m14184a(AbstractC5137h abstractC5137h) {
        return m14183b(new C5188a(abstractC5137h));
    }

    /* renamed from: c */
    public static String m14182c(String str) {
        return m14184a(AbstractC5137h.m14553l(str));
    }

    /* renamed from: b */
    public static String m14183b(InterfaceC5189b interfaceC5189b) {
        StringBuilder sb = new StringBuilder(interfaceC5189b.size());
        for (int i = 0; i < interfaceC5189b.size(); i++) {
            byte mo14181a = interfaceC5189b.mo14181a(i);
            if (mo14181a != 34) {
                if (mo14181a != 39) {
                    if (mo14181a != 92) {
                        switch (mo14181a) {
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
                                if (mo14181a >= 32 && mo14181a <= 126) {
                                    sb.append((char) mo14181a);
                                    continue;
                                } else {
                                    sb.append('\\');
                                    sb.append((char) (((mo14181a >>> 6) & 3) + 48));
                                    sb.append((char) (((mo14181a >>> 3) & 7) + 48));
                                    sb.append((char) ((mo14181a & 7) + 48));
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
