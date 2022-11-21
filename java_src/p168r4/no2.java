package p168r4;

import android.util.JsonReader;
import com.badlogic.gdx.graphics.GL20;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.pool.TypePool;
import org.json.JSONObject;
import p016b3.C0460b1;
/* renamed from: r4.no2 */
/* loaded from: classes2.dex */
public final class no2 {

    /* renamed from: A */
    public final bj0 f28378A;

    /* renamed from: B */
    public final String f28379B;

    /* renamed from: C */
    public final JSONObject f28380C;

    /* renamed from: D */
    public final JSONObject f28381D;

    /* renamed from: E */
    public final String f28382E;

    /* renamed from: F */
    public final boolean f28383F;

    /* renamed from: G */
    public final boolean f28384G;

    /* renamed from: H */
    public final boolean f28385H;

    /* renamed from: I */
    public final boolean f28386I;

    /* renamed from: J */
    public final boolean f28387J;

    /* renamed from: K */
    public final boolean f28388K;

    /* renamed from: L */
    public final boolean f28389L;

    /* renamed from: M */
    public final int f28390M;

    /* renamed from: N */
    public final int f28391N;

    /* renamed from: O */
    public final boolean f28392O;

    /* renamed from: P */
    public final boolean f28393P;

    /* renamed from: Q */
    public final String f28394Q;

    /* renamed from: R */
    public final kp2 f28395R;

    /* renamed from: S */
    public final boolean f28396S;

    /* renamed from: T */
    public final boolean f28397T;

    /* renamed from: U */
    public final int f28398U;

    /* renamed from: V */
    public final String f28399V;

    /* renamed from: W */
    public final int f28400W;

    /* renamed from: X */
    public final String f28401X;

    /* renamed from: Y */
    public final boolean f28402Y;

    /* renamed from: Z */
    public final cf0 f28403Z;

    /* renamed from: a */
    public final List<String> f28404a;

    /* renamed from: a0 */
    public final boolean f28405a0;

    /* renamed from: b */
    public final int f28406b;

    /* renamed from: b0 */
    public final C5591au f28407b0;

    /* renamed from: c */
    public final List<String> f28408c;

    /* renamed from: c0 */
    public final String f28409c0;

    /* renamed from: d */
    public final List<String> f28410d;

    /* renamed from: d0 */
    public final boolean f28411d0;

    /* renamed from: e */
    public final List<String> f28412e;

    /* renamed from: e0 */
    public final JSONObject f28413e0;

    /* renamed from: f */
    public final int f28414f;

    /* renamed from: f0 */
    public final boolean f28415f0;

    /* renamed from: g */
    public final List<String> f28416g;

    /* renamed from: g0 */
    public final JSONObject f28417g0;

    /* renamed from: h */
    public final List<String> f28418h;

    /* renamed from: h0 */
    public final boolean f28419h0;

    /* renamed from: i */
    public final List<String> f28420i;

    /* renamed from: i0 */
    public final String f28421i0;

    /* renamed from: j */
    public final List<String> f28422j;

    /* renamed from: j0 */
    public final boolean f28423j0;

    /* renamed from: k */
    public final String f28424k;

    /* renamed from: l */
    public final String f28425l;

    /* renamed from: m */
    public final rh0 f28426m;

    /* renamed from: n */
    public final List<String> f28427n;

    /* renamed from: o */
    public final List<String> f28428o;

    /* renamed from: p */
    public final List<String> f28429p;

    /* renamed from: q */
    public final int f28430q;

    /* renamed from: r */
    public final List<qo2> f28431r;

    /* renamed from: s */
    public final uo2 f28432s;

    /* renamed from: t */
    public final List<String> f28433t;

    /* renamed from: u */
    public final List<qo2> f28434u;

    /* renamed from: v */
    public final JSONObject f28435v;

    /* renamed from: w */
    public final String f28436w;

    /* renamed from: x */
    public final String f28437x;

    /* renamed from: y */
    public final String f28438y;

    /* renamed from: z */
    public final String f28439z;

    /* renamed from: a */
    public static String m9024a(int i) {
        switch (i) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }

    /* renamed from: c */
    public static int m9022c(int i) {
        if (i == 0 || i == 1) {
            return i;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public no2(JsonReader jsonReader) {
        String str;
        List<String> list;
        List<String> list2;
        char c;
        List<String> emptyList = Collections.emptyList();
        List<String> emptyList2 = Collections.emptyList();
        List<String> emptyList3 = Collections.emptyList();
        List<String> emptyList4 = Collections.emptyList();
        List<String> emptyList5 = Collections.emptyList();
        Collections.emptyList();
        List<String> emptyList6 = Collections.emptyList();
        List<String> emptyList7 = Collections.emptyList();
        List<String> emptyList8 = Collections.emptyList();
        List<String> emptyList9 = Collections.emptyList();
        List<String> emptyList10 = Collections.emptyList();
        List<qo2> emptyList11 = Collections.emptyList();
        List<String> emptyList12 = Collections.emptyList();
        List<qo2> emptyList13 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        List m8900q = o33.m8900q();
        jsonReader.beginObject();
        JSONObject jSONObject7 = jSONObject3;
        JSONObject jSONObject8 = jSONObject4;
        JSONObject jSONObject9 = jSONObject5;
        JSONObject jSONObject10 = jSONObject6;
        List list3 = m8900q;
        uo2 uo2Var = null;
        bj0 bj0Var = null;
        cf0 cf0Var = null;
        C5591au c5591au = null;
        String str2 = null;
        String str3 = "";
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        String str12 = str11;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i2 = -1;
        int i3 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        int i4 = 0;
        int i5 = -1;
        boolean z11 = false;
        boolean z12 = true;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        List<String> list4 = emptyList12;
        List<qo2> list5 = emptyList13;
        JSONObject jSONObject11 = jSONObject;
        JSONObject jSONObject12 = jSONObject2;
        rh0 rh0Var = null;
        String str13 = str12;
        int i6 = 0;
        int i7 = 0;
        List<qo2> list6 = emptyList11;
        String str14 = str13;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName == null) {
                str = "";
            } else {
                str = nextName;
            }
            switch (str.hashCode()) {
                case -1980587809:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("debug_signals")) {
                        c = 28;
                        break;
                    }
                    c = 65535;
                    break;
                case -1965512151:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("omid_settings")) {
                        c = ')';
                        break;
                    }
                    c = 65535;
                    break;
                case -1812055556:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("play_prewarm_options")) {
                        c = '1';
                        break;
                    }
                    c = 65535;
                    break;
                case -1662989631:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("is_interscroller")) {
                        c = '5';
                        break;
                    }
                    c = 65535;
                    break;
                case -1620470467:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("backend_query_id")) {
                        c = '/';
                        break;
                    }
                    c = 65535;
                    break;
                case -1440104884:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("is_custom_close_blocked")) {
                        c = '#';
                        break;
                    }
                    c = 65535;
                    break;
                case -1439500848:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("orientation")) {
                        c = '%';
                        break;
                    }
                    c = 65535;
                    break;
                case -1428969291:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("enable_omid")) {
                        c = '\'';
                        break;
                    }
                    c = 65535;
                    break;
                case -1406227629:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("buffer_click_url_as_ready_to_ping")) {
                        c = '>';
                        break;
                    }
                    c = 65535;
                    break;
                case -1403779768:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("showable_impression_type")) {
                        c = ',';
                        break;
                    }
                    c = 65535;
                    break;
                case -1375413093:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("ad_cover")) {
                        c = '6';
                        break;
                    }
                    c = 65535;
                    break;
                case -1360811658:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("ad_sizes")) {
                        c = 19;
                        break;
                    }
                    c = 65535;
                    break;
                case -1306015996:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("adapters")) {
                        c = 20;
                        break;
                    }
                    c = 65535;
                    break;
                case -1303332046:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("test_mode_enabled")) {
                        c = '\"';
                        break;
                    }
                    c = 65535;
                    break;
                case -1289032093:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("extras")) {
                        c = 29;
                        break;
                    }
                    c = 65535;
                    break;
                case -1240082064:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("ad_event_value")) {
                        c = '3';
                        break;
                    }
                    c = 65535;
                    break;
                case -1234181075:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("allow_pub_rendered_attribution")) {
                        c = 30;
                        break;
                    }
                    c = 65535;
                    break;
                case -1168140544:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("presentation_error_urls")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case -1152230954:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("ad_type")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -1146534047:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("is_scroll_aware")) {
                        c = SignatureVisitor.EXTENDS;
                        break;
                    }
                    c = 65535;
                    break;
                case -1115838944:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("fill_urls")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case -1081936678:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("allocation_id")) {
                        c = 21;
                        break;
                    }
                    c = 65535;
                    break;
                case -1078050970:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("video_complete_urls")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -1051269058:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("active_view")) {
                        c = 25;
                        break;
                    }
                    c = 65535;
                    break;
                case -982608540:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("valid_from_timestamp")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -776859333:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("click_urls")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -544216775:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("safe_browsing")) {
                        c = 26;
                        break;
                    }
                    c = 65535;
                    break;
                case -437057161:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("imp_urls")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -404433734:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("rtb_native_required_assets")) {
                        c = '9';
                        break;
                    }
                    c = 65535;
                    break;
                case -404326515:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("render_timeout_ms")) {
                        c = '&';
                        break;
                    }
                    c = 65535;
                    break;
                case -397704715:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("ad_close_time_ms")) {
                        c = SignatureVisitor.SUPER;
                        break;
                    }
                    c = 65535;
                    break;
                case -388807511:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("content_url")) {
                        c = TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER;
                        break;
                    }
                    c = 65535;
                    break;
                case -369773488:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("is_close_button_enabled")) {
                        c = '2';
                        break;
                    }
                    c = 65535;
                    break;
                case -213449460:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("force_disable_hardware_acceleration")) {
                        c = '<';
                        break;
                    }
                    c = 65535;
                    break;
                case -213424028:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("watermark")) {
                        c = TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH;
                        break;
                    }
                    c = 65535;
                    break;
                case -180214626:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("native_required_asset_viewability")) {
                        c = ':';
                        break;
                    }
                    c = 65535;
                    break;
                case -154616268:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("is_offline_ad")) {
                        c = '8';
                        break;
                    }
                    c = 65535;
                    break;
                case -29338502:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("allow_custom_click_gesture")) {
                        c = ' ';
                        break;
                    }
                    c = 65535;
                    break;
                case GL20.GL_COLOR_WRITEMASK /* 3107 */:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("ad")) {
                        c = 18;
                        break;
                    }
                    c = 65535;
                    break;
                case 3355:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("id")) {
                        c = 23;
                        break;
                    }
                    c = 65535;
                    break;
                case 3076010:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("data")) {
                        c = 22;
                        break;
                    }
                    c = 65535;
                    break;
                case 63195984:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("render_test_label")) {
                        c = '!';
                        break;
                    }
                    c = 65535;
                    break;
                case 107433883:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("qdata")) {
                        c = 24;
                        break;
                    }
                    c = 65535;
                    break;
                case 230323073:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("ad_load_urls")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 418392395:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("is_closable_area_disabled")) {
                        c = '$';
                        break;
                    }
                    c = 65535;
                    break;
                case 549176928:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("presentation_error_timeout_ms")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case 597473788:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("debug_dialog_string")) {
                        c = 27;
                        break;
                    }
                    c = 65535;
                    break;
                case 673261304:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("reward_granted_urls")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 754887508:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("container_sizes")) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case 791122864:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("impression_type")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1010584092:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("transaction_id")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 1100650276:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("rewards")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 1186014765:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("cache_hit_urls")) {
                        c = SignatureVisitor.INSTANCEOF;
                        break;
                    }
                    c = 65535;
                    break;
                case 1321720943:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("allow_pub_owned_ad_view")) {
                        c = 31;
                        break;
                    }
                    c = 65535;
                    break;
                case 1637553475:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("bid_response")) {
                        c = '(';
                        break;
                    }
                    c = 65535;
                    break;
                case 1638957285:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("video_start_urls")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1686319423:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("ad_network_class_name")) {
                        c = '7';
                        break;
                    }
                    c = 65535;
                    break;
                case 1688341040:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("video_reward_urls")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 1799285870:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("use_third_party_container_height")) {
                        c = '0';
                        break;
                    }
                    c = 65535;
                    break;
                case 1839650832:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("renderers")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1875425491:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("is_analytics_logging_enabled")) {
                        c = TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH;
                        break;
                    }
                    c = 65535;
                    break;
                case 2068142375:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str.equals("rule_line_external_id")) {
                        c = '4';
                        break;
                    }
                    c = 65535;
                    break;
                case 2072888499:
                    list2 = emptyList10;
                    list = emptyList9;
                    if (str.equals("manual_tracking_urls")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    list = emptyList9;
                    list2 = emptyList10;
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    emptyList = C0460b1.m26428b(jsonReader);
                    break;
                case 1:
                    i7 = m9023b(jsonReader.nextString());
                    break;
                case 2:
                    emptyList2 = C0460b1.m26428b(jsonReader);
                    break;
                case 3:
                    emptyList3 = C0460b1.m26428b(jsonReader);
                    break;
                case 4:
                    emptyList4 = C0460b1.m26428b(jsonReader);
                    break;
                case 5:
                    i6 = m9022c(jsonReader.nextInt());
                    break;
                case 6:
                    emptyList5 = C0460b1.m26428b(jsonReader);
                    break;
                case 7:
                    C0460b1.m26428b(jsonReader);
                    break;
                case '\b':
                    emptyList6 = C0460b1.m26428b(jsonReader);
                    break;
                case '\t':
                    emptyList7 = C0460b1.m26428b(jsonReader);
                    break;
                case '\n':
                    str13 = jsonReader.nextString();
                    break;
                case 11:
                    str14 = jsonReader.nextString();
                    break;
                case '\f':
                    rh0Var = rh0.m7501X0(C0460b1.m26426d(jsonReader));
                    break;
                case '\r':
                    emptyList8 = C0460b1.m26428b(jsonReader);
                    break;
                case 14:
                    emptyList9 = C0460b1.m26428b(jsonReader);
                    continue;
                    emptyList10 = list2;
                case 15:
                    list2 = C0460b1.m26428b(jsonReader);
                    break;
                case 16:
                    i = jsonReader.nextInt();
                    break;
                case 17:
                    list6 = qo2.m7758a(jsonReader);
                    break;
                case 18:
                    uo2Var = new uo2(jsonReader);
                    break;
                case 19:
                    list5 = qo2.m7758a(jsonReader);
                    break;
                case 20:
                    list4 = C0460b1.m26428b(jsonReader);
                    break;
                case 21:
                    str3 = jsonReader.nextString();
                    break;
                case 22:
                    jSONObject11 = C0460b1.m26427c(jsonReader);
                    break;
                case 23:
                    str4 = jsonReader.nextString();
                    break;
                case 24:
                    str5 = jsonReader.nextString();
                    break;
                case 25:
                    str6 = C0460b1.m26427c(jsonReader).toString();
                    break;
                case 26:
                    bj0Var = bj0.m12770X0(C0460b1.m26427c(jsonReader));
                    break;
                case 27:
                    str7 = jsonReader.nextString();
                    break;
                case 28:
                    jSONObject12 = C0460b1.m26427c(jsonReader);
                    break;
                case 29:
                    jSONObject7 = C0460b1.m26427c(jsonReader);
                    break;
                case 30:
                    z = jsonReader.nextBoolean();
                    break;
                case 31:
                    z2 = jsonReader.nextBoolean();
                    break;
                case ' ':
                    z3 = jsonReader.nextBoolean();
                    break;
                case '!':
                    z4 = jsonReader.nextBoolean();
                    break;
                case '\"':
                    z5 = jsonReader.nextBoolean();
                    break;
                case '#':
                    z6 = jsonReader.nextBoolean();
                    break;
                case '$':
                    z7 = jsonReader.nextBoolean();
                    break;
                case '%':
                    i2 = m9021d(jsonReader.nextString());
                    break;
                case '&':
                    i3 = jsonReader.nextInt();
                    break;
                case '\'':
                    z8 = jsonReader.nextBoolean();
                    break;
                case '(':
                    str8 = jsonReader.nextString();
                    break;
                case ')':
                    jSONObject8 = C0460b1.m26427c(jsonReader);
                    break;
                case '*':
                    z9 = jsonReader.nextBoolean();
                    break;
                case '+':
                    z10 = jsonReader.nextBoolean();
                    break;
                case ',':
                    i4 = jsonReader.nextInt();
                    break;
                case '-':
                    i5 = jsonReader.nextInt();
                    break;
                case '.':
                    str9 = jsonReader.nextString();
                    break;
                case '/':
                    str10 = jsonReader.nextString();
                    break;
                case '0':
                    z11 = jsonReader.nextBoolean();
                    break;
                case '1':
                    cf0Var = cf0.m12476a(C0460b1.m26427c(jsonReader));
                    break;
                case '2':
                    z12 = jsonReader.nextBoolean();
                    break;
                case '3':
                    c5591au = C5591au.m12939X0(C0460b1.m26427c(jsonReader));
                    break;
                case '4':
                    str11 = jsonReader.nextString();
                    break;
                case '5':
                    z13 = jsonReader.nextBoolean();
                    break;
                case '6':
                    jSONObject9 = C0460b1.m26427c(jsonReader);
                    break;
                case '7':
                    str12 = jsonReader.nextString();
                    break;
                case '8':
                    z14 = jsonReader.nextBoolean();
                    break;
                case '9':
                    jSONObject10 = C0460b1.m26427c(jsonReader);
                    break;
                case ':':
                    z15 = jsonReader.nextBoolean();
                    break;
                case ';':
                    str2 = jsonReader.nextString();
                    break;
                case '<':
                    z16 = jsonReader.nextBoolean();
                    break;
                case '=':
                    list3 = C0460b1.m26428b(jsonReader);
                    break;
                case '>':
                    z17 = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
            emptyList9 = list;
            emptyList10 = list2;
        }
        jsonReader.endObject();
        this.f28404a = emptyList;
        this.f28406b = i7;
        this.f28408c = emptyList2;
        this.f28410d = emptyList3;
        this.f28416g = emptyList4;
        this.f28414f = i6;
        this.f28418h = emptyList5;
        this.f28420i = emptyList6;
        this.f28422j = emptyList7;
        this.f28424k = str13;
        this.f28425l = str14;
        this.f28426m = rh0Var;
        this.f28427n = emptyList8;
        this.f28428o = emptyList9;
        this.f28429p = emptyList10;
        this.f28430q = i;
        this.f28431r = list6;
        this.f28432s = uo2Var;
        this.f28433t = list4;
        this.f28434u = list5;
        this.f28436w = str3;
        this.f28435v = jSONObject11;
        this.f28437x = str4;
        this.f28438y = str5;
        this.f28439z = str6;
        this.f28378A = bj0Var;
        this.f28379B = str7;
        this.f28380C = jSONObject12;
        this.f28381D = jSONObject7;
        this.f28383F = z;
        this.f28384G = z2;
        this.f28385H = z3;
        this.f28386I = z4;
        this.f28387J = z5;
        this.f28388K = z6;
        this.f28389L = z7;
        this.f28390M = i2;
        this.f28391N = i3;
        this.f28393P = z8;
        this.f28394Q = str8;
        this.f28395R = new kp2(jSONObject8);
        this.f28396S = z9;
        this.f28397T = z10;
        this.f28398U = i4;
        this.f28399V = str9;
        this.f28400W = i5;
        this.f28401X = str10;
        this.f28402Y = z11;
        this.f28403Z = cf0Var;
        this.f28405a0 = z12;
        this.f28407b0 = c5591au;
        this.f28409c0 = str11;
        this.f28411d0 = z13;
        this.f28413e0 = jSONObject9;
        this.f28382E = str12;
        this.f28415f0 = z14;
        this.f28417g0 = jSONObject10;
        this.f28419h0 = z15;
        this.f28421i0 = str2;
        this.f28423j0 = z16;
        this.f28412e = list3;
        this.f28392O = z17;
    }

    /* renamed from: b */
    public static int m9023b(String str) {
        if ("banner".equals(str)) {
            return 1;
        }
        if ("interstitial".equals(str)) {
            return 2;
        }
        if ("native_express".equals(str)) {
            return 3;
        }
        if ("native".equals(str)) {
            return 4;
        }
        if ("rewarded".equals(str)) {
            return 5;
        }
        if (!"app_open_ad".equals(str) && !"app_open_ad_v2".equals(str)) {
            if ("rewarded_interstitial".equals(str)) {
                return 7;
            }
            return 0;
        }
        return 6;
    }

    /* renamed from: d */
    public static final int m9021d(String str) {
        if ("landscape".equalsIgnoreCase(str)) {
            return 6;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            return 7;
        }
        return -1;
    }
}
