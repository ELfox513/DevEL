package p105k4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import p006a5.BinderC0087a;
import p006a5.C0100n;
import p051e4.C3373a;
import p132n4.C4752b;
import p159q4.C5421a;
/* renamed from: k4.c */
/* loaded from: classes.dex */
public abstract class AbstractBinderC4445c extends BinderC0087a implements InterfaceC4460p {
    public AbstractBinderC4445c() {
        super("com.google.android.gms.games.internal.IGamesCallbacks");
    }

    @Override // p006a5.BinderC0087a
    /* renamed from: j0 */
    public final boolean mo16478j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 6001) {
            mo16440H(parcel.readString());
        } else if (i == 6002) {
            mo16366s(parcel.readString());
        } else if (i == 12011) {
            mo16394e6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
        } else if (i == 12012) {
            mo16396d4(parcel.readInt(), parcel.readString());
        } else if (i == 13001) {
            mo16402Z2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
        } else if (i == 13002) {
            mo16372p0(parcel.readInt());
        } else if (i == 19001) {
            mo16407X0(parcel.readInt(), (C5421a) C0100n.m27676a(parcel, C5421a.CREATOR));
        } else if (i != 19002) {
            switch (i) {
                case 5001:
                    mo16393f0(parcel.readInt(), parcel.readString());
                    break;
                case 5002:
                    mo16441E1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                    break;
                case 5003:
                    mo16373o3(parcel.readInt(), parcel.readString());
                    break;
                case 5004:
                    mo16408W6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                    break;
                case 5005:
                    Parcelable.Creator<DataHolder> creator = DataHolder.CREATOR;
                    mo16353y6((DataHolder) C0100n.m27676a(parcel, creator), (DataHolder) C0100n.m27676a(parcel, creator));
                    break;
                case 5006:
                    mo16369q4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                    break;
                case 5007:
                    mo16388g5((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                    break;
                case 5008:
                    mo16439H2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                    break;
                case 5009:
                    mo16386h3((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                    break;
                case 5010:
                    mo16371p1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                    break;
                case 5011:
                    mo16398d2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                    break;
                default:
                    switch (i) {
                        case 5016:
                            mo16429O0();
                            break;
                        case 5017:
                            mo16446B5((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5018:
                            mo16384h6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5019:
                            mo16404Y6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5020:
                            mo16401Z4(parcel.readInt(), parcel.readString());
                            break;
                        case 5021:
                            mo16365s4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5022:
                            mo16385h5((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5023:
                            mo16437I2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5024:
                            mo16379k3((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5025:
                            mo16368r1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5026:
                            mo16356y2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5027:
                            mo16432M1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5028:
                            mo16370q1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5029:
                            mo16420R6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5030:
                            mo16409W5((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5031:
                            mo16426P4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5032:
                            mo16415V3((C4752b) C0100n.m27676a(parcel, C4752b.CREATOR));
                            break;
                        case 5033:
                            mo16376m6(parcel.readInt(), parcel.readInt(), parcel.readString());
                            break;
                        case 5034:
                            mo16400a1(parcel.readInt(), parcel.readString(), C0100n.m27673d(parcel));
                            break;
                        case 5035:
                            mo16436J6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5036:
                            mo16359x(parcel.readInt());
                            break;
                        case 5037:
                            mo16433K6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5038:
                            mo16395e2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5039:
                            mo16431M6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 5040:
                            mo16444D(parcel.readInt());
                            break;
                        case 9001:
                            mo16424Q1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 11001:
                            mo16430N1(parcel.readInt(), (Bundle) C0100n.m27676a(parcel, Bundle.CREATOR));
                            break;
                        case 12001:
                            mo16427P2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 14001:
                            mo16443D2((DataHolder[]) parcel.createTypedArray(DataHolder.CREATOR));
                            break;
                        case 15001:
                            mo16358x2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 17002:
                            mo16419S(parcel.readInt());
                            break;
                        case 19008:
                            mo16445C(parcel.readInt());
                            break;
                        case 19009:
                            mo16413W(parcel.readInt());
                            break;
                        case 19010:
                            mo16406Y(parcel.readInt());
                            break;
                        case 20001:
                            mo16416U1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20002:
                            mo16387h1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20003:
                            mo16382j1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20004:
                            mo16428O6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20005:
                            mo16399b6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20006:
                            mo16410W4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20007:
                            mo16381j4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20008:
                            mo16355y3((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20009:
                            mo16423Q2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                            break;
                        case 20012:
                            mo16351z5((Status) C0100n.m27676a(parcel, Status.CREATOR));
                            break;
                        case 20019:
                            mo16361v2(parcel.readInt());
                            break;
                        case 20020:
                            mo16375o1(parcel.readInt(), (Bundle) C0100n.m27676a(parcel, Bundle.CREATOR));
                            break;
                        case 23001:
                            mo16390g1(parcel.readInt());
                            break;
                        case 23002:
                            mo16438I0(parcel.readInt());
                            break;
                        case 23003:
                            mo16435K0(parcel.readInt());
                            break;
                        case 23004:
                            mo16417T(parcel.readInt());
                            break;
                        case 23005:
                            mo16364t3(parcel.readInt());
                            break;
                        case 24002:
                            mo16422R(C0100n.m27673d(parcel));
                            break;
                        case 25002:
                            mo16425Q(parcel.readString());
                            break;
                        case 25003:
                            mo16374o2((Status) C0100n.m27676a(parcel, Status.CREATOR), parcel.readString());
                            break;
                        default:
                            switch (i) {
                                case 8001:
                                    mo16414V5((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                    break;
                                case 8002:
                                    mo16397d3(parcel.readInt(), (Bundle) C0100n.m27676a(parcel, Bundle.CREATOR));
                                    break;
                                case 8003:
                                    mo16354y4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                    break;
                                case 8004:
                                    mo16367r2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                    break;
                                case 8005:
                                    mo16405Y2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                    break;
                                case 8006:
                                    mo16412W0((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                    break;
                                case 8007:
                                    mo16357y0(parcel.readInt(), parcel.readString());
                                    break;
                                case 8008:
                                    mo16383i2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                    break;
                                case 8009:
                                    mo16442E0(parcel.readString());
                                    break;
                                case 8010:
                                    mo16363u(parcel.readString());
                                    break;
                                default:
                                    switch (i) {
                                        case 10001:
                                            mo16421R3((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                            break;
                                        case 10002:
                                            mo16448A(parcel.readString());
                                            break;
                                        case 10003:
                                            mo16418S4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                            break;
                                        case 10004:
                                            mo16391f4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                            break;
                                        case 10005:
                                            mo16362v0(parcel.readInt(), (Bundle) C0100n.m27676a(parcel, Bundle.CREATOR));
                                            break;
                                        case 10006:
                                            mo16360w3((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                            break;
                                        default:
                                            switch (i) {
                                                case 12004:
                                                    mo16392f1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR), (C3373a) C0100n.m27676a(parcel, C3373a.CREATOR));
                                                    break;
                                                case 12005:
                                                    mo16380k2((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                                    break;
                                                case 12006:
                                                    mo16447A1((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                                    break;
                                                case 12007:
                                                    mo16378l6((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                                    break;
                                                case 12008:
                                                    mo16434K3((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                                    break;
                                                default:
                                                    switch (i) {
                                                        case 12014:
                                                            mo16377m5((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                                            break;
                                                        case 12015:
                                                            mo16389g2(parcel.readInt(), (Bundle) C0100n.m27676a(parcel, Bundle.CREATOR));
                                                            break;
                                                        case 12016:
                                                            mo16352z4((DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR));
                                                            break;
                                                        case 12017:
                                                            DataHolder dataHolder = (DataHolder) C0100n.m27676a(parcel, DataHolder.CREATOR);
                                                            String readString = parcel.readString();
                                                            Parcelable.Creator<C3373a> creator2 = C3373a.CREATOR;
                                                            mo16411W3(dataHolder, readString, (C3373a) C0100n.m27676a(parcel, creator2), (C3373a) C0100n.m27676a(parcel, creator2), (C3373a) C0100n.m27676a(parcel, creator2));
                                                            break;
                                                        default:
                                                            return false;
                                                    }
                                            }
                                    }
                            }
                    }
            }
        } else {
            mo16403Z0(parcel.readInt(), C0100n.m27673d(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
