package com.prineside.tdi2.utils;

import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Logger;
import java.io.File;
/* loaded from: classes2.dex */
public class I18nGenerator {

    /* renamed from: a */
    public static final String[] f15101a = {".java", ".lua"};

    /* renamed from: b */
    public static final String[] f15102b = {"../src", "scripts", "../../core/src", "../../desktop/src", "../../ios/src"};

    /* renamed from: a */
    public final int m19835a(String str, String str2) {
        return str.length() - str.replace(str2, "").length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
        com.prineside.tdi2.Logger.error("I18nGenerator", r0.getPath() + ":" + r14 + " - multiple i18n calls");
        r24 = r2;
        r18 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0098, code lost:
        r19 = r5;
        r5 = r10.group(2).trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a3, code lost:
        r18 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a6, code lost:
        r7 = r10.group(3).trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ae, code lost:
        r22 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b1, code lost:
        r8 = r10.group(6).trim();
        r23 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c1, code lost:
        if (r7.contains("(") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c3, code lost:
        r5 = r7.split(",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ce, code lost:
        if (r5[0].startsWith("\"") == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d6, code lost:
        if (r5[0].endsWith("\"") == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00df, code lost:
        if (m19835a(r5[0], "\"") != 2) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e1, code lost:
        r3 = r5[0];
        r4.add(r3.substring(1, r3.length() - 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f1, code lost:
        com.prineside.tdi2.Logger.error("I18nGenerator", r0.getPath() + ":" + r14 + " - do not use '(' inside i18n.get() or i18n.format() to properly generate i18n lists");
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x010f, code lost:
        r24 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0117, code lost:
        if (r7.startsWith("\"") == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x011d, code lost:
        if (r7.endsWith("\"") == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0123, code lost:
        r24 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0126, code lost:
        if (m19835a(r7, "\"") != 2) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0128, code lost:
        r4.add(r7.substring(1, r7.length() - 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0137, code lost:
        r24 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x013d, code lost:
        if (r8.length() != 0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0145, code lost:
        if (r5.equals("format") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0147, code lost:
        r2 = r7.split(",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0152, code lost:
        if (r2[0].startsWith("\"") == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x015a, code lost:
        if (r2[0].endsWith("\"") == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0163, code lost:
        if (m19835a(r2[0], "\"") != 2) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0165, code lost:
        r2 = r2[0];
        r4.add(r2.substring(1, r2.length() - 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0176, code lost:
        com.prineside.tdi2.Logger.log("I18nGenerator", r0.getPath() + ":" + r14 + " - skipping format TODO");
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0195, code lost:
        com.prineside.tdi2.Logger.error("I18nGenerator", r0.getPath() + ":" + r14 + " - no comment found for runtime generated alias");
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01ba, code lost:
        if (r8.equals("_ignored") != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01c0, code lost:
        if (r6.containsKey(r8) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01c2, code lost:
        com.prineside.tdi2.Logger.log("I18nGenerator", r0.getPath() + ":" + r14 + " - warning: comment already used in " + ((java.lang.String) r6.get(r8)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01ea, code lost:
        r6.put(r8, r0.getPath() + ":" + r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0211, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0212, code lost:
        r24 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0215, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0216, code lost:
        r24 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 3313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.utils.I18nGenerator.run():void");
    }

    /* renamed from: b */
    public final void m19834b(File file, String[] strArr, Array<File> array) {
        int i = 0;
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                int length = listFiles.length;
                while (i < length) {
                    m19834b(listFiles[i], strArr, array);
                    i++;
                }
            }
        } else if (file.isFile()) {
            int length2 = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    break;
                }
                if (file.getName().endsWith(strArr[i2])) {
                    i = 1;
                    break;
                }
                i2++;
            }
            if (i != 0) {
                array.add(file);
            }
        } else {
            Logger.error("I18nGenerator", "unable to search in '" + file.getName() + "', it's not a file or dir");
        }
    }
}
