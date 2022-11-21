package com.android.p030dx.dex.code;

import com.badlogic.gdx.net.HttpStatus;
import java.util.HashMap;
import p210w1.AbstractC7146h;
import p210w1.C7157q;
import p210w1.C7164t;
import p210w1.C7166v;
import p210w1.C7169y;
import p218x1.AbstractC7204a;
import p218x1.C7207b0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7226n;
import p218x1.C7237y;
/* renamed from: com.android.dx.dex.code.RopToDop */
/* loaded from: classes.dex */
public final class RopToDop {
    private static final HashMap<C7164t, Dop> MAP;

    private RopToDop() {
    }

    static {
        HashMap<C7164t, Dop> hashMap = new HashMap<>((int) HttpStatus.SC_BAD_REQUEST);
        MAP = hashMap;
        hashMap.put(C7166v.f36335a, Dops.NOP);
        C7164t c7164t = C7166v.f36339b;
        Dop dop = Dops.MOVE;
        hashMap.put(c7164t, dop);
        C7164t c7164t2 = C7166v.f36343c;
        Dop dop2 = Dops.MOVE_WIDE;
        hashMap.put(c7164t2, dop2);
        hashMap.put(C7166v.f36347d, dop);
        hashMap.put(C7166v.f36351e, dop2);
        C7164t c7164t3 = C7166v.f36355f;
        Dop dop3 = Dops.MOVE_OBJECT;
        hashMap.put(c7164t3, dop3);
        hashMap.put(C7166v.f36363h, dop);
        hashMap.put(C7166v.f36367i, dop2);
        hashMap.put(C7166v.f36371j, dop);
        hashMap.put(C7166v.f36375k, dop2);
        hashMap.put(C7166v.f36379l, dop3);
        C7164t c7164t4 = C7166v.f36383m;
        Dop dop4 = Dops.CONST_4;
        hashMap.put(c7164t4, dop4);
        C7164t c7164t5 = C7166v.f36387n;
        Dop dop5 = Dops.CONST_WIDE_16;
        hashMap.put(c7164t5, dop5);
        hashMap.put(C7166v.f36391o, dop4);
        hashMap.put(C7166v.f36395p, dop5);
        hashMap.put(C7166v.f36403r, dop4);
        hashMap.put(C7166v.f36407s, Dops.GOTO);
        C7164t c7164t6 = C7166v.f36411t;
        Dop dop6 = Dops.IF_EQZ;
        hashMap.put(c7164t6, dop6);
        C7164t c7164t7 = C7166v.f36415u;
        Dop dop7 = Dops.IF_NEZ;
        hashMap.put(c7164t7, dop7);
        hashMap.put(C7166v.f36419v, Dops.IF_LTZ);
        hashMap.put(C7166v.f36423w, Dops.IF_GEZ);
        hashMap.put(C7166v.f36427x, Dops.IF_LEZ);
        hashMap.put(C7166v.f36431y, Dops.IF_GTZ);
        hashMap.put(C7166v.f36435z, dop6);
        hashMap.put(C7166v.f36232A, dop7);
        C7164t c7164t8 = C7166v.f36236B;
        Dop dop8 = Dops.IF_EQ;
        hashMap.put(c7164t8, dop8);
        C7164t c7164t9 = C7166v.f36240C;
        Dop dop9 = Dops.IF_NE;
        hashMap.put(c7164t9, dop9);
        hashMap.put(C7166v.f36244D, Dops.IF_LT);
        hashMap.put(C7166v.f36248E, Dops.IF_GE);
        hashMap.put(C7166v.f36252F, Dops.IF_LE);
        hashMap.put(C7166v.f36256G, Dops.IF_GT);
        hashMap.put(C7166v.f36260H, dop8);
        hashMap.put(C7166v.f36264I, dop9);
        hashMap.put(C7166v.f36268J, Dops.SPARSE_SWITCH);
        hashMap.put(C7166v.f36272K, Dops.ADD_INT_2ADDR);
        hashMap.put(C7166v.f36276L, Dops.ADD_LONG_2ADDR);
        hashMap.put(C7166v.f36280M, Dops.ADD_FLOAT_2ADDR);
        hashMap.put(C7166v.f36284N, Dops.ADD_DOUBLE_2ADDR);
        hashMap.put(C7166v.f36288O, Dops.SUB_INT_2ADDR);
        hashMap.put(C7166v.f36292P, Dops.SUB_LONG_2ADDR);
        hashMap.put(C7166v.f36296Q, Dops.SUB_FLOAT_2ADDR);
        hashMap.put(C7166v.f36300R, Dops.SUB_DOUBLE_2ADDR);
        hashMap.put(C7166v.f36304S, Dops.MUL_INT_2ADDR);
        hashMap.put(C7166v.f36308T, Dops.MUL_LONG_2ADDR);
        hashMap.put(C7166v.f36312U, Dops.MUL_FLOAT_2ADDR);
        hashMap.put(C7166v.f36316V, Dops.MUL_DOUBLE_2ADDR);
        hashMap.put(C7166v.f36320W, Dops.DIV_INT_2ADDR);
        hashMap.put(C7166v.f36324X, Dops.DIV_LONG_2ADDR);
        hashMap.put(C7166v.f36328Y, Dops.DIV_FLOAT_2ADDR);
        hashMap.put(C7166v.f36332Z, Dops.DIV_DOUBLE_2ADDR);
        hashMap.put(C7166v.f36336a0, Dops.REM_INT_2ADDR);
        hashMap.put(C7166v.f36340b0, Dops.REM_LONG_2ADDR);
        hashMap.put(C7166v.f36344c0, Dops.REM_FLOAT_2ADDR);
        hashMap.put(C7166v.f36348d0, Dops.REM_DOUBLE_2ADDR);
        hashMap.put(C7166v.f36352e0, Dops.NEG_INT);
        hashMap.put(C7166v.f36356f0, Dops.NEG_LONG);
        hashMap.put(C7166v.f36360g0, Dops.NEG_FLOAT);
        hashMap.put(C7166v.f36364h0, Dops.NEG_DOUBLE);
        hashMap.put(C7166v.f36368i0, Dops.AND_INT_2ADDR);
        hashMap.put(C7166v.f36372j0, Dops.AND_LONG_2ADDR);
        hashMap.put(C7166v.f36376k0, Dops.OR_INT_2ADDR);
        hashMap.put(C7166v.f36380l0, Dops.OR_LONG_2ADDR);
        hashMap.put(C7166v.f36384m0, Dops.XOR_INT_2ADDR);
        hashMap.put(C7166v.f36388n0, Dops.XOR_LONG_2ADDR);
        hashMap.put(C7166v.f36392o0, Dops.SHL_INT_2ADDR);
        hashMap.put(C7166v.f36396p0, Dops.SHL_LONG_2ADDR);
        hashMap.put(C7166v.f36400q0, Dops.SHR_INT_2ADDR);
        hashMap.put(C7166v.f36404r0, Dops.SHR_LONG_2ADDR);
        hashMap.put(C7166v.f36408s0, Dops.USHR_INT_2ADDR);
        hashMap.put(C7166v.f36412t0, Dops.USHR_LONG_2ADDR);
        hashMap.put(C7166v.f36416u0, Dops.NOT_INT);
        hashMap.put(C7166v.f36420v0, Dops.NOT_LONG);
        hashMap.put(C7166v.f36424w0, Dops.ADD_INT_LIT8);
        hashMap.put(C7166v.f36233A0, Dops.RSUB_INT_LIT8);
        hashMap.put(C7166v.f36249E0, Dops.MUL_INT_LIT8);
        hashMap.put(C7166v.f36265I0, Dops.DIV_INT_LIT8);
        hashMap.put(C7166v.f36281M0, Dops.REM_INT_LIT8);
        hashMap.put(C7166v.f36297Q0, Dops.AND_INT_LIT8);
        hashMap.put(C7166v.f36305S0, Dops.OR_INT_LIT8);
        hashMap.put(C7166v.f36313U0, Dops.XOR_INT_LIT8);
        hashMap.put(C7166v.f36321W0, Dops.SHL_INT_LIT8);
        hashMap.put(C7166v.f36329Y0, Dops.SHR_INT_LIT8);
        hashMap.put(C7166v.f36337a1, Dops.USHR_INT_LIT8);
        hashMap.put(C7166v.f36345c1, Dops.CMP_LONG);
        hashMap.put(C7166v.f36349d1, Dops.CMPL_FLOAT);
        hashMap.put(C7166v.f36353e1, Dops.CMPL_DOUBLE);
        hashMap.put(C7166v.f36357f1, Dops.CMPG_FLOAT);
        hashMap.put(C7166v.f36361g1, Dops.CMPG_DOUBLE);
        hashMap.put(C7166v.f36365h1, Dops.LONG_TO_INT);
        hashMap.put(C7166v.f36369i1, Dops.FLOAT_TO_INT);
        hashMap.put(C7166v.f36373j1, Dops.DOUBLE_TO_INT);
        hashMap.put(C7166v.f36377k1, Dops.INT_TO_LONG);
        hashMap.put(C7166v.f36381l1, Dops.FLOAT_TO_LONG);
        hashMap.put(C7166v.f36385m1, Dops.DOUBLE_TO_LONG);
        hashMap.put(C7166v.f36389n1, Dops.INT_TO_FLOAT);
        hashMap.put(C7166v.f36393o1, Dops.LONG_TO_FLOAT);
        hashMap.put(C7166v.f36397p1, Dops.DOUBLE_TO_FLOAT);
        hashMap.put(C7166v.f36401q1, Dops.INT_TO_DOUBLE);
        hashMap.put(C7166v.f36405r1, Dops.LONG_TO_DOUBLE);
        hashMap.put(C7166v.f36409s1, Dops.FLOAT_TO_DOUBLE);
        hashMap.put(C7166v.f36413t1, Dops.INT_TO_BYTE);
        hashMap.put(C7166v.f36417u1, Dops.INT_TO_CHAR);
        hashMap.put(C7166v.f36421v1, Dops.INT_TO_SHORT);
        hashMap.put(C7166v.f36425w1, Dops.RETURN_VOID);
        C7164t c7164t10 = C7166v.f36429x1;
        Dop dop10 = Dops.RETURN;
        hashMap.put(c7164t10, dop10);
        C7164t c7164t11 = C7166v.f36433y1;
        Dop dop11 = Dops.RETURN_WIDE;
        hashMap.put(c7164t11, dop11);
        hashMap.put(C7166v.f36437z1, dop10);
        hashMap.put(C7166v.f36234A1, dop11);
        hashMap.put(C7166v.f36238B1, Dops.RETURN_OBJECT);
        hashMap.put(C7166v.f36242C1, Dops.ARRAY_LENGTH);
        hashMap.put(C7166v.f36246D1, Dops.THROW);
        hashMap.put(C7166v.f36250E1, Dops.MONITOR_ENTER);
        hashMap.put(C7166v.f36254F1, Dops.MONITOR_EXIT);
        C7164t c7164t12 = C7166v.f36258G1;
        Dop dop12 = Dops.AGET;
        hashMap.put(c7164t12, dop12);
        C7164t c7164t13 = C7166v.f36262H1;
        Dop dop13 = Dops.AGET_WIDE;
        hashMap.put(c7164t13, dop13);
        hashMap.put(C7166v.f36266I1, dop12);
        hashMap.put(C7166v.f36270J1, dop13);
        hashMap.put(C7166v.f36274K1, Dops.AGET_OBJECT);
        hashMap.put(C7166v.f36278L1, Dops.AGET_BOOLEAN);
        hashMap.put(C7166v.f36282M1, Dops.AGET_BYTE);
        hashMap.put(C7166v.f36286N1, Dops.AGET_CHAR);
        hashMap.put(C7166v.f36290O1, Dops.AGET_SHORT);
        C7164t c7164t14 = C7166v.f36294P1;
        Dop dop14 = Dops.APUT;
        hashMap.put(c7164t14, dop14);
        C7164t c7164t15 = C7166v.f36298Q1;
        Dop dop15 = Dops.APUT_WIDE;
        hashMap.put(c7164t15, dop15);
        hashMap.put(C7166v.f36302R1, dop14);
        hashMap.put(C7166v.f36306S1, dop15);
        hashMap.put(C7166v.f36310T1, Dops.APUT_OBJECT);
        hashMap.put(C7166v.f36314U1, Dops.APUT_BOOLEAN);
        hashMap.put(C7166v.f36318V1, Dops.APUT_BYTE);
        hashMap.put(C7166v.f36322W1, Dops.APUT_CHAR);
        hashMap.put(C7166v.f36326X1, Dops.APUT_SHORT);
        hashMap.put(C7166v.f36330Y1, Dops.NEW_INSTANCE);
        hashMap.put(C7166v.f36366h2, Dops.CHECK_CAST);
        hashMap.put(C7166v.f36370i2, Dops.INSTANCE_OF);
        C7164t c7164t16 = C7166v.f36378k2;
        Dop dop16 = Dops.IGET_WIDE;
        hashMap.put(c7164t16, dop16);
        hashMap.put(C7166v.f36382l2, Dops.IGET);
        hashMap.put(C7166v.f36386m2, dop16);
        hashMap.put(C7166v.f36390n2, Dops.IGET_OBJECT);
        C7164t c7164t17 = C7166v.f36414t2;
        Dop dop17 = Dops.SGET_WIDE;
        hashMap.put(c7164t17, dop17);
        hashMap.put(C7166v.f36418u2, Dops.SGET);
        hashMap.put(C7166v.f36422v2, dop17);
        hashMap.put(C7166v.f36426w2, Dops.SGET_OBJECT);
        C7164t c7164t18 = C7166v.f36243C2;
        Dop dop18 = Dops.IPUT_WIDE;
        hashMap.put(c7164t18, dop18);
        hashMap.put(C7166v.f36247D2, Dops.IPUT);
        hashMap.put(C7166v.f36251E2, dop18);
        hashMap.put(C7166v.f36255F2, Dops.IPUT_OBJECT);
        C7164t c7164t19 = C7166v.f36279L2;
        Dop dop19 = Dops.SPUT_WIDE;
        hashMap.put(c7164t19, dop19);
        hashMap.put(C7166v.f36283M2, Dops.SPUT);
        hashMap.put(C7166v.f36287N2, dop19);
        hashMap.put(C7166v.f36291O2, Dops.SPUT_OBJECT);
    }

    public static Dop dopFor(AbstractC7146h abstractC7146h) {
        C7164t m2417i = abstractC7146h.m2417i();
        Dop dop = MAP.get(m2417i);
        if (dop != null) {
            return dop;
        }
        int m2314d = m2417i.m2314d();
        if (m2314d != 4) {
            if (m2314d != 5) {
                if (m2314d != 41) {
                    if (m2314d != 42) {
                        if (m2314d != 55) {
                            switch (m2314d) {
                                case 45:
                                    int mo1523f = ((C7226n) ((C7169y) abstractC7146h).m2427t()).mo1523f();
                                    if (mo1523f != 1) {
                                        if (mo1523f != 2) {
                                            if (mo1523f != 3) {
                                                if (mo1523f != 6) {
                                                    if (mo1523f == 8) {
                                                        return Dops.IGET_SHORT;
                                                    }
                                                } else {
                                                    return Dops.IGET;
                                                }
                                            } else {
                                                return Dops.IGET_CHAR;
                                            }
                                        } else {
                                            return Dops.IGET_BYTE;
                                        }
                                    } else {
                                        return Dops.IGET_BOOLEAN;
                                    }
                                    break;
                                case 46:
                                    int mo1523f2 = ((C7226n) ((C7169y) abstractC7146h).m2427t()).mo1523f();
                                    if (mo1523f2 != 1) {
                                        if (mo1523f2 != 2) {
                                            if (mo1523f2 != 3) {
                                                if (mo1523f2 != 6) {
                                                    if (mo1523f2 == 8) {
                                                        return Dops.SGET_SHORT;
                                                    }
                                                } else {
                                                    return Dops.SGET;
                                                }
                                            } else {
                                                return Dops.SGET_CHAR;
                                            }
                                        } else {
                                            return Dops.SGET_BYTE;
                                        }
                                    } else {
                                        return Dops.SGET_BOOLEAN;
                                    }
                                    break;
                                case 47:
                                    int mo1523f3 = ((C7226n) ((C7169y) abstractC7146h).m2427t()).mo1523f();
                                    if (mo1523f3 != 1) {
                                        if (mo1523f3 != 2) {
                                            if (mo1523f3 != 3) {
                                                if (mo1523f3 != 6) {
                                                    if (mo1523f3 == 8) {
                                                        return Dops.IPUT_SHORT;
                                                    }
                                                } else {
                                                    return Dops.IPUT;
                                                }
                                            } else {
                                                return Dops.IPUT_CHAR;
                                            }
                                        } else {
                                            return Dops.IPUT_BYTE;
                                        }
                                    } else {
                                        return Dops.IPUT_BOOLEAN;
                                    }
                                    break;
                                case 48:
                                    int mo1523f4 = ((C7226n) ((C7169y) abstractC7146h).m2427t()).mo1523f();
                                    if (mo1523f4 != 1) {
                                        if (mo1523f4 != 2) {
                                            if (mo1523f4 != 3) {
                                                if (mo1523f4 != 6) {
                                                    if (mo1523f4 == 8) {
                                                        return Dops.SPUT_SHORT;
                                                    }
                                                } else {
                                                    return Dops.SPUT;
                                                }
                                            } else {
                                                return Dops.SPUT_CHAR;
                                            }
                                        } else {
                                            return Dops.SPUT_BYTE;
                                        }
                                    } else {
                                        return Dops.SPUT_BOOLEAN;
                                    }
                                    break;
                                case 49:
                                    return Dops.INVOKE_STATIC;
                                case 50:
                                    return Dops.INVOKE_VIRTUAL;
                                case 51:
                                    return Dops.INVOKE_SUPER;
                                case 52:
                                    return Dops.INVOKE_DIRECT;
                                case 53:
                                    return Dops.INVOKE_INTERFACE;
                                default:
                                    switch (m2314d) {
                                        case 57:
                                            return Dops.FILL_ARRAY_DATA;
                                        case 58:
                                            return Dops.INVOKE_POLYMORPHIC;
                                        case 59:
                                            return Dops.INVOKE_CUSTOM;
                                    }
                            }
                            throw new RuntimeException("unknown rop: " + m2417i);
                        }
                        C7157q m2415k = abstractC7146h.m2415k();
                        if (m2415k == null) {
                            return Dops.NOP;
                        }
                        switch (m2415k.mo1523f()) {
                            case 1:
                            case 2:
                            case 3:
                            case 5:
                            case 6:
                            case 8:
                                return Dops.MOVE_RESULT;
                            case 4:
                            case 7:
                                return Dops.MOVE_RESULT_WIDE;
                            case 9:
                                return Dops.MOVE_RESULT_OBJECT;
                            default:
                                throw new RuntimeException("Unexpected basic type");
                        }
                    }
                    return Dops.FILLED_NEW_ARRAY;
                }
                return Dops.NEW_ARRAY;
            }
            AbstractC7204a m2427t = ((C7169y) abstractC7146h).m2427t();
            if (m2427t instanceof C7214e0) {
                return Dops.CONST_CLASS;
            }
            if (m2427t instanceof C7212d0) {
                return Dops.CONST_STRING;
            }
            if (m2427t instanceof C7237y) {
                return Dops.CONST_METHOD_HANDLE;
            }
            if (m2427t instanceof C7207b0) {
                return Dops.CONST_METHOD_TYPE;
            }
            throw new RuntimeException("Unexpected constant type");
        }
        return Dops.MOVE_EXCEPTION;
    }
}
