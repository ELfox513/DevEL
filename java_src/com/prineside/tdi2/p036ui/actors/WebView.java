package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.net.HttpRequestHeader;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.XmlReader;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.List;
import java.util.Map;
/* renamed from: com.prineside.tdi2.ui.actors.WebView */
/* loaded from: classes2.dex */
public class WebView extends Table implements Disposable {
    public int pageHeight;
    public int pageWidth;

    /* renamed from: x0 */
    public Net.HttpRequest f12760x0;

    /* renamed from: y0 */
    public final ObjectMap<String, String> f12761y0;

    /* renamed from: z0 */
    public Array<WebViewListener> f12762z0;

    /* renamed from: com.prineside.tdi2.ui.actors.WebView$SharedStyle */
    /* loaded from: classes2.dex */
    public class SharedStyle {
        public int fontSize;

        public SharedStyle() {
            this.fontSize = 24;
        }

        public SharedStyle cpy() {
            SharedStyle sharedStyle = new SharedStyle();
            sharedStyle.fontSize = this.fontSize;
            return sharedStyle;
        }
    }

    /* renamed from: com.prineside.tdi2.ui.actors.WebView$WebViewListener */
    /* loaded from: classes2.dex */
    public interface WebViewListener {
        void modalLoadRequested(String str);

        void urlLoadFinish(boolean z, String str, boolean z2);

        void urlLoadStart(Net.HttpRequest httpRequest);
    }

    /* renamed from: D */
    public final boolean m20658D() {
        return false;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        clear();
    }

    public void removeListener(WebViewListener webViewListener) {
        this.f12762z0.removeValue(webViewListener, true);
    }

    /* renamed from: G */
    public static String m20655G(Net.HttpRequest httpRequest, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(httpRequest.getUrl()).append(httpRequest.getMethod()).append(httpRequest.getContent()).append(str);
        return StringFormatter.md5Hash(stringBuilder.toString());
    }

    /* renamed from: H */
    public static Color m20654H(String str) {
        Color cpy = Color.WHITE.cpy();
        try {
            if (str.startsWith("#")) {
                if (str.length() == 9) {
                    Color.rgb888ToColor(cpy, Integer.parseInt(str.substring(1, 7), 16));
                    cpy.f3889a = Integer.parseInt(str.substring(7), 16) / 255.0f;
                } else {
                    Color.rgb888ToColor(cpy, Integer.parseInt(str.substring(1), 16));
                }
            } else if (str.contains(":")) {
                String[] split = str.split(":");
                cpy.set(MaterialColor.allColors[MaterialColor.Colors.valueOf(split[0]).ordinal()][MaterialColor.Variants.valueOf(split[1]).ordinal()]);
            } else {
                cpy.set(MaterialColor.allColors[MaterialColor.Colors.valueOf(str).ordinal()][MaterialColor.Variants.P500.ordinal()]);
            }
        } catch (Exception e) {
            Logger.error("WebView", "Failed to read color", e);
        }
        return cpy;
    }

    /* renamed from: I */
    public static Color m20653I(XmlReader.Element element) {
        String attribute = element.getAttribute("color", null);
        if (attribute != null) {
            return m20654H(attribute);
        }
        return Color.WHITE.cpy();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
        com.prineside.tdi2.Logger.error("WebView", "div data not recognized (" + r11 + ")");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
        return;
     */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20657E(com.badlogic.gdx.scenes.scene2d.Group r9, com.badlogic.gdx.utils.XmlReader.Element r10, java.lang.String r11) {
        /*
            r8 = this;
            java.lang.String r0 = "WebView"
            java.lang.String r1 = "size"
            r2 = 0
            float r1 = r10.getFloatAttribute(r1, r2)
            java.lang.String r3 = "width"
            float r3 = r10.getFloatAttribute(r3, r1)
            java.lang.String r4 = "height"
            r10.getFloatAttribute(r4, r1)
            java.lang.String r10 = ":"
            java.lang.String[] r10 = r11.split(r10)
            r1 = 0
            r4 = r10[r1]     // Catch: java.lang.Exception -> L70
            r5 = -1
            int r6 = r4.hashCode()     // Catch: java.lang.Exception -> L70
            r7 = -841024722(0xffffffffcddefb2e, float:-4.67625408E8)
            if (r6 == r7) goto L28
            goto L31
        L28:
            java.lang.String r6 = "player-level-badge"
            boolean r4 = r4.equals(r6)     // Catch: java.lang.Exception -> L70
            if (r4 == 0) goto L31
            r5 = 0
        L31:
            if (r5 == 0) goto L4d
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L70
            r9.<init>()     // Catch: java.lang.Exception -> L70
            java.lang.String r10 = "div data not recognized ("
            r9.append(r10)     // Catch: java.lang.Exception -> L70
            r9.append(r11)     // Catch: java.lang.Exception -> L70
            java.lang.String r10 = ")"
            r9.append(r10)     // Catch: java.lang.Exception -> L70
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Exception -> L70
            com.prineside.tdi2.Logger.error(r0, r9)     // Catch: java.lang.Exception -> L70
            goto L76
        L4d:
            com.prineside.tdi2.Game r11 = com.prineside.tdi2.Game.f8589i     // Catch: java.lang.Exception -> L70
            com.prineside.tdi2.managers.AuthManager r11 = r11.authManager     // Catch: java.lang.Exception -> L70
            r4 = 1
            r10 = r10[r4]     // Catch: java.lang.Exception -> L70
            int r10 = java.lang.Integer.parseInt(r10)     // Catch: java.lang.Exception -> L70
            com.badlogic.gdx.utils.Array r10 = r11.getProfileLevelTextures(r10)     // Catch: java.lang.Exception -> L70
        L5c:
            int r11 = r10.size     // Catch: java.lang.Exception -> L70
            if (r1 >= r11) goto L76
            T[] r11 = r10.items     // Catch: java.lang.Exception -> L70
            com.prineside.tdi2.utils.TextureRegionConfig[] r11 = (com.prineside.tdi2.utils.TextureRegionConfig[]) r11     // Catch: java.lang.Exception -> L70
            r11 = r11[r1]     // Catch: java.lang.Exception -> L70
            com.badlogic.gdx.scenes.scene2d.ui.Image r11 = r11.createImage(r2, r2, r3)     // Catch: java.lang.Exception -> L70
            r9.addActor(r11)     // Catch: java.lang.Exception -> L70
            int r1 = r1 + 1
            goto L5c
        L70:
            r9 = move-exception
            java.lang.String r10 = "failed to generate div data"
            com.prineside.tdi2.Logger.error(r0, r10, r9)
        L76:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.actors.WebView.m20657E(com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.utils.XmlReader$Element, java.lang.String):void");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:193:0x0343
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: J */
    public final void m20652J(com.badlogic.gdx.scenes.scene2d.Group r23, com.badlogic.gdx.utils.XmlReader.Element r24, com.prineside.tdi2.p036ui.actors.WebView.SharedStyle r25) {
        /*
            Method dump skipped, instructions count: 1656
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.actors.WebView.m20652J(com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.utils.XmlReader$Element, com.prineside.tdi2.ui.actors.WebView$SharedStyle):void");
    }

    public void addListener(WebViewListener webViewListener) {
        if (!this.f12762z0.contains(webViewListener, true)) {
            this.f12762z0.add(webViewListener);
        }
    }

    public void copyCookies(WebView webView) {
        this.f12761y0.clear();
        this.f12761y0.putAll(webView.f12761y0);
    }

    public void loadPage(String str) {
        clear();
        if (Game.f8589i.settingsManager.isInDebugDetailedMode()) {
            Logger.log("WebView", str);
        }
        try {
            XmlReader.Element parse = new XmlReader().parse(str);
            this.pageWidth = 0;
            this.pageHeight = 0;
            if (parse.hasAttribute("width") && parse.hasAttribute("height")) {
                try {
                    this.pageWidth = Integer.parseInt(parse.getAttribute("width"));
                    this.pageHeight = Integer.parseInt(parse.getAttribute("height"));
                } catch (Exception e) {
                    Logger.error("WebView", "failed to size of body", e);
                }
            }
            m20652J(this, parse, new SharedStyle());
            row();
            add().expand().fill().row();
        } catch (Exception e2) {
            Logger.error("WebView", "failed to load page", e2);
            Logger.error("WebView", str);
        }
    }

    public void stopCurrentRequest() {
        Net.HttpRequest httpRequest = this.f12760x0;
        if (httpRequest != null) {
            Gdx.f38302net.cancelHttpRequest(httpRequest);
            this.f12760x0 = null;
        }
    }

    public WebView() {
        ObjectMap<String, String> objectMap = new ObjectMap<>();
        this.f12761y0 = objectMap;
        this.f12762z0 = new Array<>(WebViewListener.class);
        objectMap.put("tdi2-build", "184");
    }

    /* renamed from: F */
    public static String m20656F(XmlReader.Element element, String str, String str2) {
        String attribute = element.getAttribute(str, str2);
        if (attribute.contains("&")) {
            return attribute.replaceAll("&amp;", "&").replaceAll("&quot;", "\"").replaceAll("&apos;", "'").replaceAll("&lt;", "<").replaceAll("&gt;", ">");
        }
        return attribute;
    }

    public void loadUrl(final String str, final String str2, Map<String, String> map) {
        int i;
        stopCurrentRequest();
        if (Config.isModdingMode()) {
            return;
        }
        Net.HttpRequest httpRequest = new Net.HttpRequest(str);
        httpRequest.setUrl(str2);
        if (map != null) {
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(map));
        }
        synchronized (this.f12761y0) {
            this.f12761y0.put("tdi2-locale", Game.f8589i.localeManager.getLocale());
            this.f12761y0.put("tdi2-platform", Gdx.app.getType().name());
            this.f12761y0.put("tdi2-build", "184");
            if (Game.f8589i.authManager.getSignInStatus() == AuthManager.SignInStatus.SIGNED_IN) {
                this.f12761y0.put("tdi2-session", Game.f8589i.authManager.getSessionId());
            } else {
                this.f12761y0.remove("tdi2-session");
            }
            StringBuilder stringBuilder = new StringBuilder();
            ObjectMap.Entries<String, String> it = this.f12761y0.iterator();
            i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                ObjectMap.Entry next = it.next();
                stringBuilder.append((String) next.key).append("=").append((String) next.value);
                i2++;
                if (i2 != this.f12761y0.size) {
                    stringBuilder.append("; ");
                }
            }
            httpRequest.setHeader(HttpRequestHeader.Cookie, stringBuilder.toString());
        }
        final String m20655G = m20655G(httpRequest, Game.f8589i.localeManager.getLocale());
        while (true) {
            Array<WebViewListener> array = this.f12762z0;
            if (i < array.size) {
                array.items[i].urlLoadStart(httpRequest);
                i++;
            } else {
                Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.ui.actors.WebView.3
                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void cancelled() {
                        Logger.log("WebView", "cancelled: " + str2 + " (" + str + ")");
                        WebView.this.f12760x0 = null;
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.actors.WebView.3.3
                            @Override // java.lang.Runnable
                            public void run() {
                                for (int i3 = 0; i3 < WebView.this.f12762z0.size; i3++) {
                                    ((WebViewListener[]) WebView.this.f12762z0.items)[i3].urlLoadFinish(false, null, false);
                                }
                            }
                        });
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void failed(Throwable th) {
                        Logger.error("WebView", "failed: " + str2 + " (" + str + ")", th);
                        WebView.this.f12760x0 = null;
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.actors.WebView.3.2
                            /* JADX WARN: Removed duplicated region for block: B:15:0x005e  */
                            /* JADX WARN: Removed duplicated region for block: B:19:0x0080 A[ORIG_RETURN, RETURN] */
                            @Override // java.lang.Runnable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public void run() {
                                /*
                                    r5 = this;
                                    r0 = 1
                                    r1 = 0
                                    com.badlogic.gdx.Files r2 = com.badlogic.gdx.Gdx.files     // Catch: java.lang.Exception -> L5a
                                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5a
                                    r3.<init>()     // Catch: java.lang.Exception -> L5a
                                    java.lang.String r4 = "cache/web/"
                                    r3.append(r4)     // Catch: java.lang.Exception -> L5a
                                    com.prineside.tdi2.ui.actors.WebView$3 r4 = com.prineside.tdi2.p036ui.actors.WebView.C24813.this     // Catch: java.lang.Exception -> L5a
                                    java.lang.String r4 = r2     // Catch: java.lang.Exception -> L5a
                                    r3.append(r4)     // Catch: java.lang.Exception -> L5a
                                    java.lang.String r4 = ".xml"
                                    r3.append(r4)     // Catch: java.lang.Exception -> L5a
                                    java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L5a
                                    com.badlogic.gdx.files.FileHandle r2 = r2.local(r3)     // Catch: java.lang.Exception -> L5a
                                    boolean r3 = r2.exists()     // Catch: java.lang.Exception -> L5a
                                    if (r3 == 0) goto L58
                                    java.lang.String r3 = "UTF-8"
                                    java.lang.String r2 = r2.readString(r3)     // Catch: java.lang.Exception -> L5a
                                    com.prineside.tdi2.ui.actors.WebView$3 r3 = com.prineside.tdi2.p036ui.actors.WebView.C24813.this     // Catch: java.lang.Exception -> L5a
                                    com.prineside.tdi2.ui.actors.WebView r3 = com.prineside.tdi2.p036ui.actors.WebView.this     // Catch: java.lang.Exception -> L5a
                                    r3.loadPage(r2)     // Catch: java.lang.Exception -> L5a
                                    r3 = 0
                                L36:
                                    com.prineside.tdi2.ui.actors.WebView$3 r4 = com.prineside.tdi2.p036ui.actors.WebView.C24813.this     // Catch: java.lang.Exception -> L56
                                    com.prineside.tdi2.ui.actors.WebView r4 = com.prineside.tdi2.p036ui.actors.WebView.this     // Catch: java.lang.Exception -> L56
                                    com.badlogic.gdx.utils.Array r4 = com.prineside.tdi2.p036ui.actors.WebView.m20651z(r4)     // Catch: java.lang.Exception -> L56
                                    int r4 = r4.size     // Catch: java.lang.Exception -> L56
                                    if (r3 >= r4) goto L5c
                                    com.prineside.tdi2.ui.actors.WebView$3 r4 = com.prineside.tdi2.p036ui.actors.WebView.C24813.this     // Catch: java.lang.Exception -> L56
                                    com.prineside.tdi2.ui.actors.WebView r4 = com.prineside.tdi2.p036ui.actors.WebView.this     // Catch: java.lang.Exception -> L56
                                    com.badlogic.gdx.utils.Array r4 = com.prineside.tdi2.p036ui.actors.WebView.m20651z(r4)     // Catch: java.lang.Exception -> L56
                                    T[] r4 = r4.items     // Catch: java.lang.Exception -> L56
                                    com.prineside.tdi2.ui.actors.WebView$WebViewListener[] r4 = (com.prineside.tdi2.p036ui.actors.WebView.WebViewListener[]) r4     // Catch: java.lang.Exception -> L56
                                    r4 = r4[r3]     // Catch: java.lang.Exception -> L56
                                    r4.urlLoadFinish(r0, r2, r0)     // Catch: java.lang.Exception -> L56
                                    int r3 = r3 + 1
                                    goto L36
                                L56:
                                    goto L5c
                                L58:
                                    r0 = 0
                                    goto L5c
                                L5a:
                                    goto L58
                                L5c:
                                    if (r0 != 0) goto L80
                                    r0 = 0
                                L5f:
                                    com.prineside.tdi2.ui.actors.WebView$3 r2 = com.prineside.tdi2.p036ui.actors.WebView.C24813.this
                                    com.prineside.tdi2.ui.actors.WebView r2 = com.prineside.tdi2.p036ui.actors.WebView.this
                                    com.badlogic.gdx.utils.Array r2 = com.prineside.tdi2.p036ui.actors.WebView.m20651z(r2)
                                    int r2 = r2.size
                                    if (r0 >= r2) goto L80
                                    com.prineside.tdi2.ui.actors.WebView$3 r2 = com.prineside.tdi2.p036ui.actors.WebView.C24813.this
                                    com.prineside.tdi2.ui.actors.WebView r2 = com.prineside.tdi2.p036ui.actors.WebView.this
                                    com.badlogic.gdx.utils.Array r2 = com.prineside.tdi2.p036ui.actors.WebView.m20651z(r2)
                                    T[] r2 = r2.items
                                    com.prineside.tdi2.ui.actors.WebView$WebViewListener[] r2 = (com.prineside.tdi2.p036ui.actors.WebView.WebViewListener[]) r2
                                    r2 = r2[r0]
                                    r3 = 0
                                    r2.urlLoadFinish(r1, r3, r1)
                                    int r0 = r0 + 1
                                    goto L5f
                                L80:
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.actors.WebView.C24813.RunnableC24832.run():void");
                            }
                        });
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void handleHttpResponse(Net.HttpResponse httpResponse) {
                        final String resultAsString = httpResponse.getResultAsString();
                        for (Map.Entry<String, List<String>> entry : httpResponse.getHeaders().entrySet()) {
                            if (entry.getKey() != null && entry.getKey().equals(HttpResponseHeader.SetCookie)) {
                                synchronized (WebView.this.f12761y0) {
                                    for (String str3 : entry.getValue()) {
                                        String[] split = str3.split("=");
                                        WebView.this.f12761y0.put(split[0], split[1].split(";")[0]);
                                    }
                                }
                            }
                        }
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.actors.WebView.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (WebView.this.m20658D()) {
                                    try {
                                        Files files = Gdx.files;
                                        files.local("cache/web/" + m20655G + ".xml").writeString(resultAsString, false, "UTF-8");
                                    } catch (Exception unused) {
                                    }
                                }
                                WebView.this.loadPage(resultAsString);
                                WebView.this.f12760x0 = null;
                                for (int i3 = 0; i3 < WebView.this.f12762z0.size; i3++) {
                                    ((WebViewListener[]) WebView.this.f12762z0.items)[i3].urlLoadFinish(true, resultAsString, false);
                                }
                            }
                        });
                    }
                });
                this.f12760x0 = httpRequest;
                return;
            }
        }
    }
}
