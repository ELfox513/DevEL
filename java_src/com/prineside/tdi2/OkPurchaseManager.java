package com.prineside.tdi2;

import com.badlogic.gdx.pay.Information;
import com.badlogic.gdx.pay.PurchaseManager;
import com.badlogic.gdx.pay.PurchaseManagerConfig;
import com.badlogic.gdx.pay.PurchaseObserver;
/* loaded from: classes2.dex */
public abstract class OkPurchaseManager implements PurchaseManager {

    /* renamed from: a */
    public boolean f8780a;

    /* renamed from: b */
    public PurchaseObserver f8781b;

    /* renamed from: c */
    public PurchaseManagerConfig f8782c;

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void dispose() {
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public boolean installed() {
        return this.f8780a;
    }

    public abstract void purchaseOk(String str, String str2);

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void purchaseRestore() {
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void install(PurchaseObserver purchaseObserver, PurchaseManagerConfig purchaseManagerConfig, boolean z) {
        Logger.log("OkPurchaseManager", "installing");
        this.f8781b = purchaseObserver;
        this.f8782c = purchaseManagerConfig;
        purchaseObserver.handleInstall();
        this.f8780a = true;
    }

    @Override // com.badlogic.gdx.pay.InformationFinder
    public Information getInformation(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1618132179:
                if (str.equals("double_gain")) {
                    c = 0;
                    break;
                }
                break;
            case -1470282617:
                if (str.equals("accelerator_pack_medium")) {
                    c = 1;
                    break;
                }
                break;
            case -693810085:
                if (str.equals("pack_medium")) {
                    c = 2;
                    break;
                }
                break;
            case -658645955:
                if (str.equals("accelerator_pack_huge")) {
                    c = 3;
                    break;
                }
                break;
            case -658299758:
                if (str.equals("accelerator_pack_tiny")) {
                    c = 4;
                    break;
                }
                break;
            case -23410283:
                if (str.equals("pack_large")) {
                    c = 5;
                    break;
                }
                break;
            case -16604319:
                if (str.equals("pack_small")) {
                    c = 6;
                    break;
                }
                break;
            case 1059920873:
                if (str.equals("accelerator_pack_large")) {
                    c = 7;
                    break;
                }
                break;
            case 1066726837:
                if (str.equals("accelerator_pack_small")) {
                    c = '\b';
                    break;
                }
                break;
            case 1800259857:
                if (str.equals("pack_huge")) {
                    c = '\t';
                    break;
                }
                break;
            case 1800606054:
                if (str.equals("pack_tiny")) {
                    c = '\n';
                    break;
                }
                break;
        }
        String str7 = "¥328";
        String str8 = "";
        switch (c) {
            case 0:
                str7 = "¥30";
                str8 = "Double Gain";
                str2 = "Double rewards";
                break;
            case 1:
                str8 = "Medium Accelerator";
                str3 = "Medium amount of Accelerators";
                str2 = str3;
                str7 = "¥68";
                break;
            case 2:
                str8 = "Medium Paper Pack";
                str3 = "Medium amount of Green Papers";
                str2 = str3;
                str7 = "¥68";
                break;
            case 3:
                str8 = "Huge Accelerator";
                str2 = "Huge amount of Accelerators";
                break;
            case 4:
                str8 = "Tiny Accelerator Pack";
                str4 = "Tiny amount of Accelerators";
                str2 = str4;
                str7 = "¥6";
                break;
            case 5:
                str8 = "Large Paper Pack";
                str5 = "Large amount of Green Papers";
                str2 = str5;
                str7 = "¥168";
                break;
            case 6:
                str8 = "Small Paper Pack";
                str6 = "Small amount of Green Papers";
                str2 = str6;
                str7 = "¥18";
                break;
            case 7:
                str8 = "Large Accelerator";
                str5 = "Large amount of Accelerators";
                str2 = str5;
                str7 = "¥168";
                break;
            case '\b':
                str8 = "Small Accelerator";
                str6 = "Small amount of Accelerators";
                str2 = str6;
                str7 = "¥18";
                break;
            case '\t':
                str8 = "Huge Paper Pack";
                str2 = "Huge amount of Green Papers";
                break;
            case '\n':
                str8 = "Tiny Paper Pack";
                str4 = "Tiny amount of Green Papers";
                str2 = str4;
                str7 = "¥6";
                break;
            default:
                str7 = "¥";
                str2 = "";
                break;
        }
        return new Information(str8, str2, str7);
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void purchase(String str) {
        String str2;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1618132179:
                if (str.equals("double_gain")) {
                    c = 0;
                    break;
                }
                break;
            case -1470282617:
                if (str.equals("accelerator_pack_medium")) {
                    c = 1;
                    break;
                }
                break;
            case -693810085:
                if (str.equals("pack_medium")) {
                    c = 2;
                    break;
                }
                break;
            case -658645955:
                if (str.equals("accelerator_pack_huge")) {
                    c = 3;
                    break;
                }
                break;
            case -658299758:
                if (str.equals("accelerator_pack_tiny")) {
                    c = 4;
                    break;
                }
                break;
            case -23410283:
                if (str.equals("pack_large")) {
                    c = 5;
                    break;
                }
                break;
            case -16604319:
                if (str.equals("pack_small")) {
                    c = 6;
                    break;
                }
                break;
            case 1059920873:
                if (str.equals("accelerator_pack_large")) {
                    c = 7;
                    break;
                }
                break;
            case 1066726837:
                if (str.equals("accelerator_pack_small")) {
                    c = '\b';
                    break;
                }
                break;
            case 1800259857:
                if (str.equals("pack_huge")) {
                    c = '\t';
                    break;
                }
                break;
            case 1800606054:
                if (str.equals("pack_tiny")) {
                    c = '\n';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                str2 = Config.SITE_API_VERSION;
                break;
            case 1:
                str2 = "7";
                break;
            case 2:
                str2 = "6";
                break;
            case 3:
                str2 = "11";
                break;
            case 4:
                str2 = "3";
                break;
            case 5:
                str2 = "8";
                break;
            case 6:
                str2 = "4";
                break;
            case 7:
                str2 = "9";
                break;
            case '\b':
                str2 = "5";
                break;
            case '\t':
                str2 = "10";
                break;
            case '\n':
                str2 = "2";
                break;
            default:
                str2 = null;
                break;
        }
        purchaseOk(str2, str);
    }
}
