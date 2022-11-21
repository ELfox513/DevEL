package com.android.p030dx.dex.file;

import java.util.Collection;
import java.util.TreeMap;
import p218x1.AbstractC7204a;
import p218x1.C7219h;
import p218x1.C7222j;
/* renamed from: com.android.dx.dex.file.CallSiteIdsSection */
/* loaded from: classes.dex */
public final class CallSiteIdsSection extends UniformItemSection {
    private final TreeMap<C7222j, CallSiteIdItem> callSiteIds;
    private final TreeMap<C7219h, CallSiteItem> callSites;

    public synchronized void intern(C7222j c7222j) {
        if (c7222j != null) {
            throwIfPrepared();
            if (this.callSiteIds.get(c7222j) == null) {
                this.callSiteIds.put(c7222j, new CallSiteIdItem(c7222j));
            }
        } else {
            throw new NullPointerException("cstRef");
        }
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.callSiteIds.values();
    }

    public CallSiteIdsSection(DexFile dexFile) {
        super("call_site_ids", dexFile, 4);
        this.callSiteIds = new TreeMap<>();
        this.callSites = new TreeMap<>();
    }

    /* renamed from: a */
    public void m24493a(C7219h c7219h, CallSiteItem callSiteItem) {
        if (c7219h != null) {
            if (callSiteItem != null) {
                this.callSites.put(c7219h, callSiteItem);
                return;
            }
            throw new NullPointerException("callSiteItem == null");
        }
        throw new NullPointerException("callSite == null");
    }

    /* renamed from: b */
    public CallSiteItem m24492b(C7219h c7219h) {
        if (c7219h != null) {
            return this.callSites.get(c7219h);
        }
        throw new NullPointerException("callSite == null");
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            throwIfNotPrepared();
            CallSiteIdItem callSiteIdItem = this.callSiteIds.get((C7222j) abstractC7204a);
            if (callSiteIdItem != null) {
                return callSiteIdItem;
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("cst == null");
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public void orderItems() {
        int i = 0;
        for (CallSiteIdItem callSiteIdItem : this.callSiteIds.values()) {
            callSiteIdItem.setIndex(i);
            i++;
        }
    }
}
