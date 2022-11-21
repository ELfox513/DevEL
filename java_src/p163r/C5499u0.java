package p163r;

import android.app.Notification;
import android.app.Notification$Action$Builder;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p145p.C5272b;
import p163r.C5481o;
/* renamed from: r.u0 */
/* loaded from: classes.dex */
public class C5499u0 implements InterfaceC5479n {

    /* renamed from: a */
    public final Context f20230a;

    /* renamed from: b */
    public final Notification.Builder f20231b;

    /* renamed from: c */
    public final C5481o.C5485d f20232c;

    /* renamed from: d */
    public RemoteViews f20233d;

    /* renamed from: e */
    public RemoteViews f20234e;

    /* renamed from: f */
    public final List<Bundle> f20235f = new ArrayList();

    /* renamed from: g */
    public final Bundle f20236g = new Bundle();

    /* renamed from: h */
    public int f20237h;

    /* renamed from: i */
    public RemoteViews f20238i;

    @Override // p163r.InterfaceC5479n
    /* renamed from: a */
    public Notification.Builder mo13188a() {
        return this.f20231b;
    }

    /* renamed from: g */
    public final void m13182g(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults = notification.defaults & (-2) & (-3);
    }

    /* renamed from: e */
    public static List<String> m13184e(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        C5272b c5272b = new C5272b(list.size() + list2.size());
        c5272b.addAll(list);
        c5272b.addAll(list2);
        return new ArrayList(c5272b);
    }

    /* renamed from: f */
    public static List<String> m13183f(List<C5512y0> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (C5512y0 c5512y0 : list) {
            arrayList.add(c5512y0.m13146g());
        }
        return arrayList;
    }

    /* renamed from: b */
    public final void m13187b(C5481o.C5482a c5482a) {
        Notification$Action$Builder notification$Action$Builder;
        int i;
        Bundle bundle;
        Icon icon;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            IconCompat m13233e = c5482a.m13233e();
            if (i2 >= 23) {
                if (m13233e != null) {
                    icon = m13233e.m27209n();
                } else {
                    icon = null;
                }
                notification$Action$Builder = new Notification$Action$Builder(icon, c5482a.m13229i(), c5482a.m13237a());
            } else {
                if (m13233e != null) {
                    i = m13233e.m27220c();
                } else {
                    i = 0;
                }
                notification$Action$Builder = new Notification$Action$Builder(i, c5482a.m13229i(), c5482a.m13237a());
            }
            if (c5482a.m13232f() != null) {
                for (RemoteInput remoteInput : C5514z0.m13142b(c5482a.m13232f())) {
                    notification$Action$Builder.addRemoteInput(remoteInput);
                }
            }
            if (c5482a.m13234d() != null) {
                bundle = new Bundle(c5482a.m13234d());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", c5482a.m13236b());
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 24) {
                notification$Action$Builder.setAllowGeneratedReplies(c5482a.m13236b());
            }
            bundle.putInt("android.support.action.semanticAction", c5482a.m13231g());
            if (i3 >= 28) {
                notification$Action$Builder.setSemanticAction(c5482a.m13231g());
            }
            if (i3 >= 29) {
                notification$Action$Builder.setContextual(c5482a.m13228j());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", c5482a.m13230h());
            notification$Action$Builder.addExtras(bundle);
            this.f20231b.addAction(notification$Action$Builder.build());
            return;
        }
        this.f20235f.add(C5501v0.m13175f(this.f20231b, c5482a));
    }

    /* renamed from: c */
    public Notification m13186c() {
        RemoteViews remoteViews;
        Bundle m13238a;
        RemoteViews m13202f;
        RemoteViews m13204d;
        C5481o.AbstractC5486e abstractC5486e = this.f20232c.f20215p;
        if (abstractC5486e != null) {
            abstractC5486e.mo13206b(this);
        }
        if (abstractC5486e != null) {
            remoteViews = abstractC5486e.m13203e(this);
        } else {
            remoteViews = null;
        }
        Notification m13185d = m13185d();
        if (remoteViews != null) {
            m13185d.contentView = remoteViews;
        } else {
            RemoteViews remoteViews2 = this.f20232c.f20187H;
            if (remoteViews2 != null) {
                m13185d.contentView = remoteViews2;
            }
        }
        int i = Build.VERSION.SDK_INT;
        if (abstractC5486e != null && (m13204d = abstractC5486e.m13204d(this)) != null) {
            m13185d.bigContentView = m13204d;
        }
        if (i >= 21 && abstractC5486e != null && (m13202f = this.f20232c.f20215p.m13202f(this)) != null) {
            m13185d.headsUpContentView = m13202f;
        }
        if (abstractC5486e != null && (m13238a = C5481o.m13238a(m13185d)) != null) {
            abstractC5486e.mo13207a(m13238a);
        }
        return m13185d;
    }

    /* renamed from: d */
    public Notification m13185d() {
        String group;
        String group2;
        String group3;
        String group4;
        String group5;
        String group6;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return this.f20231b.build();
        }
        if (i >= 24) {
            Notification build = this.f20231b.build();
            if (this.f20237h != 0) {
                group5 = build.getGroup();
                if (group5 != null && (build.flags & 512) != 0 && this.f20237h == 2) {
                    m13182g(build);
                }
                group6 = build.getGroup();
                if (group6 != null && (build.flags & 512) == 0 && this.f20237h == 1) {
                    m13182g(build);
                }
            }
            return build;
        } else if (i >= 21) {
            this.f20231b.setExtras(this.f20236g);
            Notification build2 = this.f20231b.build();
            RemoteViews remoteViews = this.f20233d;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f20234e;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f20238i;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f20237h != 0) {
                group3 = build2.getGroup();
                if (group3 != null && (build2.flags & 512) != 0 && this.f20237h == 2) {
                    m13182g(build2);
                }
                group4 = build2.getGroup();
                if (group4 != null && (build2.flags & 512) == 0 && this.f20237h == 1) {
                    m13182g(build2);
                }
            }
            return build2;
        } else if (i >= 20) {
            this.f20231b.setExtras(this.f20236g);
            Notification build3 = this.f20231b.build();
            RemoteViews remoteViews4 = this.f20233d;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f20234e;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f20237h != 0) {
                group = build3.getGroup();
                if (group != null && (build3.flags & 512) != 0 && this.f20237h == 2) {
                    m13182g(build3);
                }
                group2 = build3.getGroup();
                if (group2 != null && (build3.flags & 512) == 0 && this.f20237h == 1) {
                    m13182g(build3);
                }
            }
            return build3;
        } else if (i >= 19) {
            SparseArray<Bundle> m13180a = C5501v0.m13180a(this.f20235f);
            if (m13180a != null) {
                this.f20236g.putSparseParcelableArray("android.support.actionExtras", m13180a);
            }
            this.f20231b.setExtras(this.f20236g);
            Notification build4 = this.f20231b.build();
            RemoteViews remoteViews6 = this.f20233d;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f20234e;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        } else {
            Notification build5 = this.f20231b.build();
            Bundle m13238a = C5481o.m13238a(build5);
            Bundle bundle = new Bundle(this.f20236g);
            for (String str : this.f20236g.keySet()) {
                if (m13238a.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            m13238a.putAll(bundle);
            SparseArray<Bundle> m13180a2 = C5501v0.m13180a(this.f20235f);
            if (m13180a2 != null) {
                C5481o.m13238a(build5).putSparseParcelableArray("android.support.actionExtras", m13180a2);
            }
            RemoteViews remoteViews8 = this.f20233d;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f20234e;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
    }

    public C5499u0(C5481o.C5485d c5485d) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Notification.Builder badgeIconType;
        Notification.Builder settingsText;
        Notification.Builder shortcutId;
        Notification.Builder timeoutAfter;
        Notification.Builder extras;
        Icon icon;
        Notification.Builder category;
        Notification.Builder color;
        Notification.Builder visibility;
        Notification.Builder publicVersion;
        List<String> list;
        Notification.Builder localOnly;
        Notification.Builder group;
        Notification.Builder groupSummary;
        List<String> m13184e;
        this.f20232c = c5485d;
        this.f20230a = c5485d.f20200a;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f20231b = new Notification.Builder(c5485d.f20200a, c5485d.f20190K);
        } else {
            this.f20231b = new Notification.Builder(c5485d.f20200a);
        }
        Notification notification = c5485d.f20196Q;
        Notification.Builder lights = this.f20231b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, c5485d.f20208i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        if ((notification.flags & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        Notification.Builder ongoing = lights.setOngoing(z);
        if ((notification.flags & 8) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Notification.Builder onlyAlertOnce = ongoing.setOnlyAlertOnce(z2);
        if ((notification.flags & 16) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        Notification.Builder deleteIntent = onlyAlertOnce.setAutoCancel(z3).setDefaults(notification.defaults).setContentTitle(c5485d.f20204e).setContentText(c5485d.f20205f).setContentInfo(c5485d.f20210k).setContentIntent(c5485d.f20206g).setDeleteIntent(notification.deleteIntent);
        PendingIntent pendingIntent = c5485d.f20207h;
        if ((notification.flags & 128) != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        deleteIntent.setFullScreenIntent(pendingIntent, z4).setLargeIcon(c5485d.f20209j).setNumber(c5485d.f20211l).setProgress(c5485d.f20219t, c5485d.f20220u, c5485d.f20221v);
        if (i < 21) {
            this.f20231b.setSound(notification.sound, notification.audioStreamType);
        }
        this.f20231b.setSubText(c5485d.f20216q).setUsesChronometer(c5485d.f20214o).setPriority(c5485d.f20212m);
        Iterator<C5481o.C5482a> it = c5485d.f20201b.iterator();
        while (it.hasNext()) {
            m13187b(it.next());
        }
        Bundle bundle = c5485d.f20183D;
        if (bundle != null) {
            this.f20236g.putAll(bundle);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 20) {
            if (c5485d.f20225z) {
                this.f20236g.putBoolean("android.support.localOnly", true);
            }
            String str = c5485d.f20222w;
            if (str != null) {
                this.f20236g.putString("android.support.groupKey", str);
                if (c5485d.f20223x) {
                    this.f20236g.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.f20236g.putBoolean("android.support.useSideChannel", true);
                }
            }
            String str2 = c5485d.f20224y;
            if (str2 != null) {
                this.f20236g.putString("android.support.sortKey", str2);
            }
        }
        this.f20233d = c5485d.f20187H;
        this.f20234e = c5485d.f20188I;
        if (i2 >= 17) {
            this.f20231b.setShowWhen(c5485d.f20213n);
        }
        if (i2 >= 19 && i2 < 21 && (m13184e = m13184e(m13183f(c5485d.f20202c), c5485d.f20199T)) != null && !m13184e.isEmpty()) {
            this.f20236g.putStringArray("android.people", (String[]) m13184e.toArray(new String[m13184e.size()]));
        }
        if (i2 >= 20) {
            localOnly = this.f20231b.setLocalOnly(c5485d.f20225z);
            group = localOnly.setGroup(c5485d.f20222w);
            groupSummary = group.setGroupSummary(c5485d.f20223x);
            groupSummary.setSortKey(c5485d.f20224y);
            this.f20237h = c5485d.f20194O;
        }
        if (i2 >= 21) {
            category = this.f20231b.setCategory(c5485d.f20182C);
            color = category.setColor(c5485d.f20184E);
            visibility = color.setVisibility(c5485d.f20185F);
            publicVersion = visibility.setPublicVersion(c5485d.f20186G);
            publicVersion.setSound(notification.sound, notification.audioAttributes);
            if (i2 < 28) {
                list = m13184e(m13183f(c5485d.f20202c), c5485d.f20199T);
            } else {
                list = c5485d.f20199T;
            }
            if (list != null && !list.isEmpty()) {
                for (String str3 : list) {
                    this.f20231b.addPerson(str3);
                }
            }
            this.f20238i = c5485d.f20189J;
            if (c5485d.f20203d.size() > 0) {
                Bundle bundle2 = c5485d.m13223c().getBundle("android.car.EXTENSIONS");
                bundle2 = bundle2 == null ? new Bundle() : bundle2;
                Bundle bundle3 = new Bundle(bundle2);
                Bundle bundle4 = new Bundle();
                for (int i3 = 0; i3 < c5485d.f20203d.size(); i3++) {
                    bundle4.putBundle(Integer.toString(i3), C5501v0.m13179b(c5485d.f20203d.get(i3)));
                }
                bundle2.putBundle("invisible_actions", bundle4);
                bundle3.putBundle("invisible_actions", bundle4);
                c5485d.m13223c().putBundle("android.car.EXTENSIONS", bundle2);
                this.f20236g.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23 && (icon = c5485d.f20198S) != null) {
            this.f20231b.setSmallIcon(icon);
        }
        if (i4 >= 24) {
            extras = this.f20231b.setExtras(c5485d.f20183D);
            extras.setRemoteInputHistory(c5485d.f20218s);
            RemoteViews remoteViews = c5485d.f20187H;
            if (remoteViews != null) {
                this.f20231b.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = c5485d.f20188I;
            if (remoteViews2 != null) {
                this.f20231b.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = c5485d.f20189J;
            if (remoteViews3 != null) {
                this.f20231b.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (i4 >= 26) {
            badgeIconType = this.f20231b.setBadgeIconType(c5485d.f20191L);
            settingsText = badgeIconType.setSettingsText(c5485d.f20217r);
            shortcutId = settingsText.setShortcutId(c5485d.f20192M);
            timeoutAfter = shortcutId.setTimeoutAfter(c5485d.f20193N);
            timeoutAfter.setGroupAlertBehavior(c5485d.f20194O);
            if (c5485d.f20181B) {
                this.f20231b.setColorized(c5485d.f20180A);
            }
            if (!TextUtils.isEmpty(c5485d.f20190K)) {
                this.f20231b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i4 >= 28) {
            Iterator<C5512y0> it2 = c5485d.f20202c.iterator();
            while (it2.hasNext()) {
                this.f20231b.addPerson(it2.next().m13145h());
            }
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 29) {
            this.f20231b.setAllowSystemGeneratedContextualActions(c5485d.f20195P);
            this.f20231b.setBubbleMetadata(C5481o.C5484c.m13226a(null));
        }
        if (c5485d.f20197R) {
            if (this.f20232c.f20223x) {
                this.f20237h = 2;
            } else {
                this.f20237h = 1;
            }
            this.f20231b.setVibrate(null);
            this.f20231b.setSound(null);
            int i6 = notification.defaults & (-2) & (-3);
            notification.defaults = i6;
            this.f20231b.setDefaults(i6);
            if (i5 >= 26) {
                if (TextUtils.isEmpty(this.f20232c.f20222w)) {
                    this.f20231b.setGroup("silent");
                }
                this.f20231b.setGroupAlertBehavior(this.f20237h);
            }
        }
    }
}
