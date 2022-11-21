package p018b5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: b5.e1 */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC0625e1 extends BinderC0811p0 implements InterfaceC0642f1 {
    public AbstractBinderC0625e1() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static InterfaceC0642f1 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        if (queryLocalInterface instanceof InterfaceC0642f1) {
            return (InterfaceC0642f1) queryLocalInterface;
        }
        return new C0608d1(iBinder);
    }

    @Override // p018b5.BinderC0811p0
    /* renamed from: j0 */
    public final boolean mo18385j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        InterfaceC0693i1 c0659g1;
        InterfaceC0693i1 interfaceC0693i1;
        InterfaceC0693i1 interfaceC0693i12 = null;
        InterfaceC0693i1 interfaceC0693i13 = null;
        InterfaceC0693i1 interfaceC0693i14 = null;
        InterfaceC0744l1 interfaceC0744l1 = null;
        InterfaceC0744l1 interfaceC0744l12 = null;
        InterfaceC0744l1 interfaceC0744l13 = null;
        InterfaceC0693i1 interfaceC0693i15 = null;
        InterfaceC0693i1 interfaceC0693i16 = null;
        InterfaceC0693i1 interfaceC0693i17 = null;
        InterfaceC0693i1 interfaceC0693i18 = null;
        InterfaceC0693i1 interfaceC0693i19 = null;
        InterfaceC0693i1 interfaceC0693i110 = null;
        InterfaceC0778n1 interfaceC0778n1 = null;
        InterfaceC0693i1 interfaceC0693i111 = null;
        InterfaceC0693i1 interfaceC0693i112 = null;
        InterfaceC0693i1 interfaceC0693i113 = null;
        InterfaceC0693i1 interfaceC0693i114 = null;
        switch (i) {
            case 1:
                initialize(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), (C0795o1) C0828q0.m25479a(parcel, C0795o1.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR), C0828q0.m25474f(parcel), C0828q0.m25474f(parcel), parcel.readLong());
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    interfaceC0693i1 = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface instanceof InterfaceC0693i1) {
                        c0659g1 = (InterfaceC0693i1) queryLocalInterface;
                    } else {
                        c0659g1 = new C0659g1(readStrongBinder);
                    }
                    interfaceC0693i1 = c0659g1;
                }
                logEventAndBundle(readString, readString2, bundle, interfaceC0693i1, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), C0828q0.m25474f(parcel), parcel.readLong());
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean m25474f = C0828q0.m25474f(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface2 instanceof InterfaceC0693i1) {
                        interfaceC0693i12 = (InterfaceC0693i1) queryLocalInterface2;
                    } else {
                        interfaceC0693i12 = new C0659g1(readStrongBinder2);
                    }
                }
                getUserProperties(readString3, readString4, m25474f, interfaceC0693i12);
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface3 instanceof InterfaceC0693i1) {
                        interfaceC0693i114 = (InterfaceC0693i1) queryLocalInterface3;
                    } else {
                        interfaceC0693i114 = new C0659g1(readStrongBinder3);
                    }
                }
                getMaxUserProperties(readString5, interfaceC0693i114);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface4 instanceof InterfaceC0693i1) {
                        interfaceC0693i113 = (InterfaceC0693i1) queryLocalInterface4;
                    } else {
                        interfaceC0693i113 = new C0659g1(readStrongBinder4);
                    }
                }
                getConditionalUserProperties(readString6, readString7, interfaceC0693i113);
                break;
            case 11:
                setMeasurementEnabled(C0828q0.m25474f(parcel), parcel.readLong());
                break;
            case 12:
                resetAnalyticsData(parcel.readLong());
                break;
            case 13:
                setMinimumSessionDuration(parcel.readLong());
                break;
            case 14:
                setSessionTimeoutDuration(parcel.readLong());
                break;
            case 15:
                setCurrentScreen(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface5 instanceof InterfaceC0693i1) {
                        interfaceC0693i112 = (InterfaceC0693i1) queryLocalInterface5;
                    } else {
                        interfaceC0693i112 = new C0659g1(readStrongBinder5);
                    }
                }
                getCurrentScreenName(interfaceC0693i112);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface6 instanceof InterfaceC0693i1) {
                        interfaceC0693i111 = (InterfaceC0693i1) queryLocalInterface6;
                    } else {
                        interfaceC0693i111 = new C0659g1(readStrongBinder6);
                    }
                }
                getCurrentScreenClass(interfaceC0693i111);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    if (queryLocalInterface7 instanceof InterfaceC0778n1) {
                        interfaceC0778n1 = (InterfaceC0778n1) queryLocalInterface7;
                    } else {
                        interfaceC0778n1 = new C0761m1(readStrongBinder7);
                    }
                }
                setInstanceIdProvider(interfaceC0778n1);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface8 instanceof InterfaceC0693i1) {
                        interfaceC0693i110 = (InterfaceC0693i1) queryLocalInterface8;
                    } else {
                        interfaceC0693i110 = new C0659g1(readStrongBinder8);
                    }
                }
                getCachedAppInstanceId(interfaceC0693i110);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface9 instanceof InterfaceC0693i1) {
                        interfaceC0693i19 = (InterfaceC0693i1) queryLocalInterface9;
                    } else {
                        interfaceC0693i19 = new C0659g1(readStrongBinder9);
                    }
                }
                getAppInstanceId(interfaceC0693i19);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface10 instanceof InterfaceC0693i1) {
                        interfaceC0693i18 = (InterfaceC0693i1) queryLocalInterface10;
                    } else {
                        interfaceC0693i18 = new C0659g1(readStrongBinder10);
                    }
                }
                getGmpAppId(interfaceC0693i18);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface11 instanceof InterfaceC0693i1) {
                        interfaceC0693i17 = (InterfaceC0693i1) queryLocalInterface11;
                    } else {
                        interfaceC0693i17 = new C0659g1(readStrongBinder11);
                    }
                }
                generateEventId(interfaceC0693i17);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), (Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface12 instanceof InterfaceC0693i1) {
                        interfaceC0693i16 = (InterfaceC0693i1) queryLocalInterface12;
                    } else {
                        interfaceC0693i16 = new C0659g1(readStrongBinder12);
                    }
                }
                onActivitySaveInstanceState(m18742o0, interfaceC0693i16, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface13 instanceof InterfaceC0693i1) {
                        interfaceC0693i15 = (InterfaceC0693i1) queryLocalInterface13;
                    } else {
                        interfaceC0693i15 = new C0659g1(readStrongBinder13);
                    }
                }
                performAction(bundle2, interfaceC0693i15, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface14 instanceof InterfaceC0744l1) {
                        interfaceC0744l13 = (InterfaceC0744l1) queryLocalInterface14;
                    } else {
                        interfaceC0744l13 = new C0710j1(readStrongBinder14);
                    }
                }
                setEventInterceptor(interfaceC0744l13);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface15 instanceof InterfaceC0744l1) {
                        interfaceC0744l12 = (InterfaceC0744l1) queryLocalInterface15;
                    } else {
                        interfaceC0744l12 = new C0710j1(readStrongBinder15);
                    }
                }
                registerOnMeasurementEventListener(interfaceC0744l12);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface16 instanceof InterfaceC0744l1) {
                        interfaceC0744l1 = (InterfaceC0744l1) queryLocalInterface16;
                    } else {
                        interfaceC0744l1 = new C0710j1(readStrongBinder16);
                    }
                }
                unregisterOnMeasurementEventListener(interfaceC0744l1);
                break;
            case 37:
                initForTests(C0828q0.m25478b(parcel));
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface17 instanceof InterfaceC0693i1) {
                        interfaceC0693i14 = (InterfaceC0693i1) queryLocalInterface17;
                    } else {
                        interfaceC0693i14 = new C0659g1(readStrongBinder17);
                    }
                }
                getTestFlag(interfaceC0693i14, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(C0828q0.m25474f(parcel));
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface18 instanceof InterfaceC0693i1) {
                        interfaceC0693i13 = (InterfaceC0693i1) queryLocalInterface18;
                    } else {
                        interfaceC0693i13 = new C0659g1(readStrongBinder18);
                    }
                }
                isDataCollectionEnabled(interfaceC0693i13);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
