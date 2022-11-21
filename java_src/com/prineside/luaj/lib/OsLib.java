package com.prineside.luaj.lib;

import com.prineside.luaj.Buffer;
import com.prineside.luaj.Globals;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.tiles.CoreTile;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes2.dex */
public class OsLib extends TwoArgFunction {

    /* renamed from: A */
    public static long f8223A = 0;

    /* renamed from: B */
    public static final String[] f8224B;

    /* renamed from: C */
    public static final String[] f8225C;

    /* renamed from: D */
    public static final String[] f8226D;

    /* renamed from: E */
    public static final String[] f8227E;
    public static final String TMP_PREFIX = ".luaj";
    public static final String TMP_SUFFIX = "tmp";

    /* renamed from: y */
    public static final String[] f8228y = {"clock", "date", "difftime", "execute", "exit", "getenv", "remove", "rename", "setlocale", "time", "tmpname"};

    /* renamed from: z */
    public static final long f8229z;

    /* renamed from: x */
    public Globals f8230x;

    /* loaded from: classes2.dex */
    public class OsLibFunc extends VarArgFunction {
        public OsLibFunc(int i, String str) {
            this.f8218u = i;
            this.f8219w = str;
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            double m22460D;
            try {
                switch (this.f8218u) {
                    case 0:
                        return LuaValue.valueOf(OsLib.this.m22455u());
                    case 1:
                        String optjstring = varargs.optjstring(1, "%c");
                        if (varargs.isnumber(2)) {
                            m22460D = varargs.todouble(2);
                        } else {
                            m22460D = OsLib.this.m22460D(null);
                        }
                        if (optjstring.equals("*t")) {
                            Calendar calendar = Calendar.getInstance();
                            calendar.setTime(new Date((long) (m22460D * 1000.0d)));
                            LuaTable tableOf = LuaValue.tableOf();
                            tableOf.set("year", LuaValue.valueOf(calendar.get(1)));
                            tableOf.set("month", LuaValue.valueOf(calendar.get(2) + 1));
                            tableOf.set("day", LuaValue.valueOf(calendar.get(5)));
                            tableOf.set("hour", LuaValue.valueOf(calendar.get(11)));
                            tableOf.set("min", LuaValue.valueOf(calendar.get(12)));
                            tableOf.set("sec", LuaValue.valueOf(calendar.get(13)));
                            tableOf.set("wday", LuaValue.valueOf(calendar.get(7)));
                            tableOf.set("yday", LuaValue.valueOf(calendar.get(6)));
                            tableOf.set("isdst", LuaValue.valueOf(OsLib.this.m22452z(calendar)));
                            return tableOf;
                        }
                        OsLib osLib = OsLib.this;
                        if (m22460D == -1.0d) {
                            m22460D = osLib.m22460D(null);
                        }
                        return LuaValue.valueOf(osLib.date(optjstring, m22460D));
                    case 2:
                        return LuaValue.valueOf(OsLib.this.m22454v(varargs.checkdouble(1), varargs.checkdouble(2)));
                    case 3:
                        return OsLib.this.mo22393w(varargs.optjstring(1, null));
                    case 4:
                        OsLib.this.m22453x(varargs.optint(1, 0));
                        return LuaValue.NONE;
                    case 5:
                        String mo22392y = OsLib.this.mo22392y(varargs.checkjstring(1));
                        if (mo22392y != null) {
                            return LuaValue.valueOf(mo22392y);
                        }
                        return LuaValue.NIL;
                    case 6:
                        OsLib.this.mo22396A(varargs.checkjstring(1));
                        return LuaValue.TRUE;
                    case 7:
                        OsLib.this.mo22395B(varargs.checkjstring(1), varargs.checkjstring(2));
                        return LuaValue.TRUE;
                    case 8:
                        String m22461C = OsLib.this.m22461C(varargs.optjstring(1, null), varargs.optjstring(2, "all"));
                        if (m22461C != null) {
                            return LuaValue.valueOf(m22461C);
                        }
                        return LuaValue.NIL;
                    case 9:
                        return LuaValue.valueOf(OsLib.this.m22460D(varargs.opttable(1, null)));
                    case 10:
                        return LuaValue.valueOf(OsLib.this.mo22394F());
                    default:
                        return LuaValue.NONE;
                }
            } catch (IOException e) {
                return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(e.getMessage()));
            }
        }
    }

    /* renamed from: A */
    public void mo22396A(String str) {
        throw new IOException("not implemented");
    }

    /* renamed from: B */
    public void mo22395B(String str, String str2) {
        throw new IOException("not implemented");
    }

    /* renamed from: C */
    public String m22461C(String str, String str2) {
        return "C";
    }

    /* renamed from: u */
    public double m22455u() {
        double currentTimeMillis = System.currentTimeMillis() - f8229z;
        Double.isNaN(currentTimeMillis);
        return currentTimeMillis / 1000.0d;
    }

    /* renamed from: v */
    public double m22454v(double d, double d2) {
        return d - d2;
    }

    /* renamed from: w */
    public Varargs mo22393w(String str) {
        return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("exit"), LuaValue.ONE);
    }

    /* renamed from: x */
    public void m22453x(int i) {
        System.exit(i);
    }

    /* renamed from: y */
    public String mo22392y(String str) {
        return System.getProperty(str);
    }

    /* renamed from: z */
    public final boolean m22452z(Calendar calendar) {
        return m22459E(calendar) != calendar.getTimeZone().getRawOffset() / CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    }

    static {
        long currentTimeMillis = System.currentTimeMillis();
        f8229z = currentTimeMillis;
        f8223A = currentTimeMillis;
        f8224B = new String[]{"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
        f8225C = new String[]{"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        f8226D = new String[]{"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
        f8227E = new String[]{"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
    }

    /* renamed from: D */
    public double m22460D(LuaTable luaTable) {
        Date time;
        if (luaTable == null) {
            time = new Date();
        } else {
            Calendar calendar = Calendar.getInstance();
            calendar.set(1, luaTable.get("year").checkint());
            calendar.set(2, luaTable.get("month").checkint() - 1);
            calendar.set(5, luaTable.get("day").checkint());
            calendar.set(11, luaTable.get("hour").optint(12));
            calendar.set(12, luaTable.get("min").optint(0));
            calendar.set(13, luaTable.get("sec").optint(0));
            calendar.set(14, 0);
            time = calendar.getTime();
        }
        double time2 = time.getTime();
        Double.isNaN(time2);
        return time2 / 1000.0d;
    }

    /* renamed from: E */
    public final int m22459E(Calendar calendar) {
        return calendar.getTimeZone().getOffset(1, calendar.get(1), calendar.get(2), calendar.get(5), calendar.get(7), (((calendar.get(11) * 3600) + (calendar.get(12) * 60)) + calendar.get(13)) * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) / CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    }

    /* renamed from: F */
    public String mo22394F() {
        String sb;
        synchronized (OsLib.class) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(TMP_PREFIX);
            long j = f8223A;
            f8223A = 1 + j;
            sb2.append(j);
            sb2.append(TMP_SUFFIX);
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: G */
    public final int m22458G(Calendar calendar, int i) {
        Calendar m22456t = m22456t(calendar);
        int i2 = i + 8;
        m22456t.set(5, ((i2 - m22456t.get(7)) % 7) + 1);
        if (m22456t.after(calendar)) {
            m22456t.set(1, m22456t.get(1) - 1);
            m22456t.set(5, ((i2 - m22456t.get(7)) % 7) + 1);
        }
        return ((int) ((calendar.getTime().getTime() - m22456t.getTime().getTime()) / 604800000)) + 1;
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.f8230x = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        int i = 0;
        while (true) {
            String[] strArr = f8228y;
            if (i >= strArr.length) {
                break;
            }
            String str = strArr[i];
            luaTable.set(str, new OsLibFunc(i, str));
            i++;
        }
        luaValue2.set("os", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get("loaded").set("os", luaTable);
        }
        return luaTable;
    }

    public String date(String str, double d) {
        String str2;
        String str3;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date((long) (d * 1000.0d)));
        if (str.startsWith("!")) {
            double m22459E = m22459E(calendar);
            Double.isNaN(m22459E);
            d -= m22459E;
            calendar.setTime(new Date((long) (1000.0d * d)));
            str = str.substring(1);
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        Buffer buffer = new Buffer(length);
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            byte b = bytes[i];
            if (b != 10) {
                if (b != 37) {
                    buffer.append(b);
                } else if (i2 < length) {
                    i = i2 + 1;
                    byte b2 = bytes[i2];
                    if (b2 != 37) {
                        if (b2 != 77) {
                            if (b2 != 83) {
                                if (b2 != 85) {
                                    if (b2 != 106) {
                                        if (b2 != 109) {
                                            if (b2 != 112) {
                                                if (b2 != 65) {
                                                    if (b2 != 66) {
                                                        if (b2 != 72) {
                                                            if (b2 != 73) {
                                                                switch (b2) {
                                                                    case 87:
                                                                        buffer.append(String.valueOf(m22458G(calendar, 1)));
                                                                        continue;
                                                                    case 88:
                                                                        buffer.append(date("%H:%M:%S", d));
                                                                        continue;
                                                                    case 89:
                                                                        buffer.append(String.valueOf(calendar.get(1)));
                                                                        continue;
                                                                    default:
                                                                        switch (b2) {
                                                                            case 97:
                                                                                buffer.append(f8224B[calendar.get(7) - 1]);
                                                                                continue;
                                                                            case 98:
                                                                                buffer.append(f8226D[calendar.get(2)]);
                                                                                continue;
                                                                            case 99:
                                                                                buffer.append(date("%a %b %d %H:%M:%S %Y", d));
                                                                                continue;
                                                                            case 100:
                                                                                buffer.append(String.valueOf(calendar.get(5) + 100).substring(1));
                                                                                continue;
                                                                                continue;
                                                                            default:
                                                                                switch (b2) {
                                                                                    case 119:
                                                                                        buffer.append(String.valueOf((calendar.get(7) + 6) % 7));
                                                                                        continue;
                                                                                    case 120:
                                                                                        buffer.append(date("%m/%d/%y", d));
                                                                                        continue;
                                                                                    case 121:
                                                                                        buffer.append(String.valueOf(calendar.get(1)).substring(2));
                                                                                        continue;
                                                                                    case 122:
                                                                                        int m22459E2 = m22459E(calendar) / 60;
                                                                                        int abs = Math.abs(m22459E2);
                                                                                        String substring = String.valueOf((abs / 60) + 100).substring(1);
                                                                                        String substring2 = String.valueOf((abs % 60) + 100).substring(1);
                                                                                        StringBuilder sb = new StringBuilder();
                                                                                        if (m22459E2 >= 0) {
                                                                                            str2 = "+";
                                                                                        } else {
                                                                                            str2 = "-";
                                                                                        }
                                                                                        sb.append(str2);
                                                                                        sb.append(substring);
                                                                                        sb.append(substring2);
                                                                                        buffer.append(sb.toString());
                                                                                        continue;
                                                                                        continue;
                                                                                    default:
                                                                                        LuaValue.argerror(1, "invalid conversion specifier '%" + ((int) b2) + "'");
                                                                                        continue;
                                                                                }
                                                                        }
                                                                }
                                                            } else {
                                                                buffer.append(String.valueOf((calendar.get(11) % 12) + 100).substring(1));
                                                            }
                                                        } else {
                                                            buffer.append(String.valueOf(calendar.get(11) + 100).substring(1));
                                                        }
                                                    } else {
                                                        buffer.append(f8227E[calendar.get(2)]);
                                                    }
                                                } else {
                                                    buffer.append(f8225C[calendar.get(7) - 1]);
                                                }
                                            } else {
                                                if (calendar.get(11) < 12) {
                                                    str3 = "AM";
                                                } else {
                                                    str3 = "PM";
                                                }
                                                buffer.append(str3);
                                            }
                                        } else {
                                            buffer.append(String.valueOf(calendar.get(2) + 101).substring(1));
                                        }
                                    } else {
                                        buffer.append(String.valueOf(((int) ((calendar.getTime().getTime() - m22456t(calendar).getTime().getTime()) / 86400000)) + 1001).substring(1));
                                    }
                                } else {
                                    buffer.append(String.valueOf(m22458G(calendar, 0)));
                                }
                            } else {
                                buffer.append(String.valueOf(calendar.get(13) + 100).substring(1));
                            }
                        } else {
                            buffer.append(String.valueOf(calendar.get(12) + 100).substring(1));
                        }
                    } else {
                        buffer.append((byte) 37);
                    }
                }
            } else {
                buffer.append("\n");
            }
            i = i2;
        }
        return buffer.tojstring();
    }

    /* renamed from: t */
    public final Calendar m22456t(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(calendar.getTime());
        calendar2.set(2, 0);
        calendar2.set(5, 1);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return calendar2;
    }
}
