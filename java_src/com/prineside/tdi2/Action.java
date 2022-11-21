package com.prineside.tdi2;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.KryoSerializable;
import com.prineside.tdi2.actions.BuildMinerAction;
import com.prineside.tdi2.actions.BuildModifierAction;
import com.prineside.tdi2.actions.BuildTowerAction;
import com.prineside.tdi2.actions.CallWaveAction;
import com.prineside.tdi2.actions.ChangeTowerAimStrategyAction;
import com.prineside.tdi2.actions.CoreUpgradeAction;
import com.prineside.tdi2.actions.CustomAction;
import com.prineside.tdi2.actions.CustomModifierButtonAction;
import com.prineside.tdi2.actions.CustomTowerButtonAction;
import com.prineside.tdi2.actions.GlobalUpgradeMinerAction;
import com.prineside.tdi2.actions.GlobalUpgradeTowerAction;
import com.prineside.tdi2.actions.RewardingAdAction;
import com.prineside.tdi2.actions.ScriptAction;
import com.prineside.tdi2.actions.SelectGlobalTowerAbilityAction;
import com.prineside.tdi2.actions.SelectTowerAbilityAction;
import com.prineside.tdi2.actions.SellMinerAction;
import com.prineside.tdi2.actions.SellModifierAction;
import com.prineside.tdi2.actions.SellTowerAction;
import com.prineside.tdi2.actions.UpgradeMinerAction;
import com.prineside.tdi2.actions.UpgradeTowerAction;
import com.prineside.tdi2.actions.UseAbilityAction;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public abstract class Action implements KryoSerializable {

    /* renamed from: com.prineside.tdi2.Action$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C14601 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8401a;

        static {
            int[] iArr = new int[ActionType.values().length];
            f8401a = iArr;
            try {
                iArr[ActionType.S.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8401a[ActionType.BT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8401a[ActionType.CW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8401a[ActionType.RA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8401a[ActionType.UT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8401a[ActionType.GUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8401a[ActionType.ST.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8401a[ActionType.BM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8401a[ActionType.UM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8401a[ActionType.GUM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8401a[ActionType.SM.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8401a[ActionType.BMO.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f8401a[ActionType.STA.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8401a[ActionType.SGTA.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8401a[ActionType.CTAS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8401a[ActionType.UA.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8401a[ActionType.CTB.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f8401a[ActionType.SMO.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f8401a[ActionType.CU.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f8401a[ActionType.CMB.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f8401a[ActionType.C.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    public boolean affectsPlayerXp() {
        return false;
    }

    public abstract ActionType getType();

    public void toJson(Json json) {
    }

    public static Action fromJson(JsonValue jsonValue) {
        ActionType valueOf = ActionType.valueOf(jsonValue.getString("t"));
        switch (C14601.f8401a[valueOf.ordinal()]) {
            case 1:
                return new ScriptAction(jsonValue);
            case 2:
                return new BuildTowerAction(jsonValue);
            case 3:
                return new CallWaveAction(jsonValue);
            case 4:
                return new RewardingAdAction(jsonValue);
            case 5:
                return new UpgradeTowerAction(jsonValue);
            case 6:
                return new GlobalUpgradeTowerAction(jsonValue);
            case 7:
                return new SellTowerAction(jsonValue);
            case 8:
                return new BuildMinerAction(jsonValue);
            case 9:
                return new UpgradeMinerAction(jsonValue);
            case 10:
                return new GlobalUpgradeMinerAction(jsonValue);
            case 11:
                return new SellMinerAction(jsonValue);
            case 12:
                return new BuildModifierAction(jsonValue);
            case 13:
                return new SelectTowerAbilityAction(jsonValue);
            case 14:
                return new SelectGlobalTowerAbilityAction(jsonValue);
            case 15:
                return new ChangeTowerAimStrategyAction(jsonValue);
            case 16:
                return new UseAbilityAction(jsonValue);
            case 17:
                return new CustomTowerButtonAction(jsonValue);
            case 18:
                return new SellModifierAction(jsonValue);
            case 19:
                return new CoreUpgradeAction(jsonValue);
            case 20:
                return new CustomModifierButtonAction(jsonValue);
            case 21:
                return new CustomAction(jsonValue);
            default:
                throw new RuntimeException("Not implemented: " + valueOf.name());
        }
    }
}
