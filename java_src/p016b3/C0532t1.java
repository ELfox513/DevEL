package p016b3;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo$VideoCapabilities;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: b3.t1 */
/* loaded from: classes.dex */
public final class C0532t1 {

    /* renamed from: b */
    public static List<MediaCodecInfo> f1683b;

    /* renamed from: a */
    public static final Map<String, List<Map<String, Object>>> f1682a = new HashMap();

    /* renamed from: c */
    public static final Object f1684c = new Object();

    @TargetApi(21)
    /* renamed from: b */
    public static Integer[] m26265b(Range range) {
        return new Integer[]{(Integer) range.getLower(), (Integer) range.getUpper()};
    }

    @TargetApi(16)
    /* renamed from: a */
    public static List<Map<String, Object>> m26266a(String str) {
        MediaCodecInfo[] codecInfos;
        ArrayList arrayList;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        int maxSupportedInstances;
        MediaCodecInfo$VideoCapabilities videoCapabilities;
        Object obj = f1684c;
        synchronized (obj) {
            Map<String, List<Map<String, Object>>> map = f1682a;
            if (map.containsKey(str)) {
                return map.get(str);
            }
            try {
                synchronized (obj) {
                    if (f1683b == null) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            codecInfos = new MediaCodecList(0).getCodecInfos();
                            f1683b = Arrays.asList(codecInfos);
                        } else {
                            int codecCount = MediaCodecList.getCodecCount();
                            f1683b = new ArrayList(codecCount);
                            for (int i = 0; i < codecCount; i++) {
                                f1683b.add(MediaCodecList.getCodecInfoAt(i));
                            }
                        }
                    }
                    arrayList = new ArrayList();
                    for (MediaCodecInfo mediaCodecInfo : f1683b) {
                        if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                            HashMap hashMap = new HashMap();
                            hashMap.put("codecName", mediaCodecInfo.getName());
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                            ArrayList arrayList2 = new ArrayList();
                            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                            }
                            hashMap.put("profileLevels", arrayList2);
                            int i2 = Build.VERSION.SDK_INT;
                            if (i2 >= 21) {
                                videoCapabilities = capabilitiesForType.getVideoCapabilities();
                                hashMap.put("bitRatesBps", m26265b(videoCapabilities.getBitrateRange()));
                                hashMap.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                                hashMap.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                                hashMap.put("frameRates", m26265b(videoCapabilities.getSupportedFrameRates()));
                                hashMap.put("widths", m26265b(videoCapabilities.getSupportedWidths()));
                                hashMap.put("heights", m26265b(videoCapabilities.getSupportedHeights()));
                            }
                            if (i2 >= 23) {
                                maxSupportedInstances = capabilitiesForType.getMaxSupportedInstances();
                                hashMap.put("instancesLimit", Integer.valueOf(maxSupportedInstances));
                            }
                            arrayList.add(hashMap);
                        }
                    }
                    f1682a.put(str, arrayList);
                }
                return arrayList;
            } catch (LinkageError | RuntimeException e) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("error", e.getClass().getSimpleName());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(hashMap2);
                f1682a.put(str, arrayList3);
                return arrayList3;
            }
        }
    }
}
