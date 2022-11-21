package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class LuaClosure extends LuaFunction implements KryoSerializable {

    /* renamed from: w */
    public static final UpValue[] f7964w = new UpValue[0];

    /* renamed from: p */
    public Prototype f7965p;

    /* renamed from: u */
    public Globals f7966u;
    public UpValue[] upValues;

    public LuaClosure() {
    }

    @Override // com.prineside.luaj.LuaValue
    public final LuaValue call() {
        return m22817r(m22815t(), LuaValue.NONE).arg1();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaClosure checkclosure() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isclosure() {
        return true;
    }

    @Override // com.prineside.luaj.LuaFunction
    public String name() {
        return "<" + this.f7965p.shortsource() + ":" + this.f7965p.linedefined + ">";
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaClosure optclosure(LuaClosure luaClosure) {
        return this;
    }

    /* renamed from: s */
    public final UpValue m22816s(LuaValue[] luaValueArr, short s, UpValue[] upValueArr) {
        int length = upValueArr.length;
        for (UpValue upValue : upValueArr) {
            if (upValue != null && upValue.f8023b == s) {
                return upValue;
            }
        }
        for (int i = 0; i < length; i++) {
            if (upValueArr[i] == null) {
                UpValue upValue2 = new UpValue(luaValueArr, s);
                upValueArr[i] = upValue2;
                return upValue2;
            }
        }
        LuaValue.error("No space for upvalue");
        return null;
    }

    @Override // com.prineside.luaj.LuaFunction, com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        return "function: " + this.f7965p.toString();
    }

    public LuaClosure(Prototype prototype, LuaValue luaValue) {
        this.f7965p = prototype;
        initupvalue1(luaValue);
        this.f7966u = luaValue instanceof Globals ? (Globals) luaValue : null;
    }

    @Override // com.prineside.luaj.LuaValue
    public void initupvalue1(LuaValue luaValue) {
        Upvaldesc[] upvaldescArr = this.f7965p.upvalues;
        if (upvaldescArr != null && upvaldescArr.length != 0) {
            UpValue[] upValueArr = new UpValue[upvaldescArr.length];
            this.upValues = upValueArr;
            upValueArr[0] = new UpValue(new LuaValue[]{luaValue}, 0);
            return;
        }
        this.upValues = f7964w;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:18:0x0043
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: q */
    public java.lang.String m22818q(java.lang.String r4, int r5) {
        /*
            r3 = this;
            com.prineside.luaj.Globals r0 = r3.f7966u
            if (r0 != 0) goto L5
            return r4
        L5:
            com.prineside.luaj.LuaThread r1 = r0.running
            com.prineside.luaj.LuaValue r2 = r1.errorfunc
            if (r2 != 0) goto L2c
            com.prineside.luaj.lib.DebugLib r0 = r0.debuglib
            if (r0 == 0) goto L2b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r4)
            java.lang.String r4 = "\n"
            r0.append(r4)
            com.prineside.luaj.Globals r4 = r3.f7966u
            com.prineside.luaj.lib.DebugLib r4 = r4.debuglib
            java.lang.String r4 = r4.traceback(r5)
            r0.append(r4)
            java.lang.String r4 = r0.toString()
        L2b:
            return r4
        L2c:
            r5 = 0
            r1.errorfunc = r5
            com.prineside.luaj.LuaString r4 = com.prineside.luaj.LuaValue.valueOf(r4)     // Catch: java.lang.Throwable -> L3e
            com.prineside.luaj.LuaValue r4 = r2.call(r4)     // Catch: java.lang.Throwable -> L3e
            java.lang.String r4 = r4.tojstring()     // Catch: java.lang.Throwable -> L3e
            r1.errorfunc = r2
            return r4
        L3e:
            java.lang.String r4 = "error in error handling"
            r1.errorfunc = r2
            return r4
        L43:
            r4 = move-exception
            r1.errorfunc = r2
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.LuaClosure.m22818q(java.lang.String, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:263:0x0448, code lost:
        if (r3 != r6) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01bb, code lost:
        if (r8.gteq_b(r3) != false) goto L103;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:457:0x07f4 A[Catch: all -> 0x07de, TryCatch #5 {all -> 0x07de, blocks: (B:12:0x0025, B:14:0x0029, B:16:0x002d, B:17:0x0030, B:18:0x0041, B:19:0x0044, B:445:0x07c9, B:446:0x07dd, B:20:0x0048, B:21:0x004f, B:22:0x0050, B:24:0x0054, B:444:0x07c2, B:30:0x0065, B:31:0x0071, B:33:0x0086, B:35:0x008c, B:37:0x00a5, B:36:0x0099, B:38:0x00ad, B:39:0x00b1, B:41:0x00b7, B:43:0x00bf, B:45:0x00c5, B:49:0x00d7, B:451:0x07e3, B:452:0x07ed, B:455:0x07f0, B:457:0x07f4, B:458:0x07f9, B:52:0x00e5, B:53:0x00f3, B:55:0x00fd, B:67:0x0127, B:69:0x012f, B:71:0x0140, B:72:0x0156, B:74:0x015a, B:75:0x0166, B:76:0x016a, B:77:0x0199, B:79:0x01b0, B:84:0x01bd, B:82:0x01b7, B:85:0x01ca, B:90:0x01d3, B:104:0x01f3, B:118:0x0210, B:132:0x022d, B:157:0x026d, B:159:0x027e, B:158:0x0272, B:173:0x02a0, B:187:0x02d2, B:201:0x02ff, B:215:0x0325, B:232:0x0357, B:246:0x03f0, B:248:0x0406, B:250:0x040c, B:251:0x0414, B:247:0x03f9, B:233:0x035b, B:234:0x0371, B:235:0x0384, B:236:0x0396, B:237:0x03a5, B:238:0x03b3, B:239:0x03be, B:243:0x03ea, B:240:0x03cd, B:241:0x03d7, B:242:0x03de, B:252:0x041f, B:264:0x044a, B:258:0x0434, B:259:0x0438, B:266:0x0450, B:268:0x0459, B:270:0x0460, B:272:0x0468, B:274:0x046f, B:273:0x046d, B:269:0x045e, B:280:0x047b, B:282:0x0484, B:284:0x048b, B:286:0x0493, B:288:0x049a, B:287:0x0498, B:283:0x0489, B:294:0x04a6, B:296:0x04af, B:298:0x04b6, B:300:0x04be, B:302:0x04c5, B:301:0x04c3, B:297:0x04b4, B:308:0x04d2, B:310:0x04dc, B:311:0x04df, B:313:0x04e3, B:315:0x04e7, B:317:0x04eb, B:321:0x04f8, B:323:0x0506, B:324:0x050c, B:326:0x0510, B:327:0x0516, B:328:0x051d, B:329:0x052a, B:330:0x0539, B:331:0x0548, B:332:0x0557, B:334:0x0561, B:336:0x0568, B:338:0x0570, B:340:0x0577, B:339:0x0575, B:335:0x0566, B:341:0x057f, B:343:0x0589, B:345:0x0590, B:347:0x0598, B:349:0x059f, B:348:0x059d, B:344:0x058e, B:350:0x05a7, B:352:0x05b1, B:354:0x05b8, B:356:0x05c0, B:358:0x05c7, B:357:0x05c5, B:353:0x05b6, B:359:0x05cf, B:361:0x05d9, B:363:0x05e0, B:365:0x05e8, B:367:0x05ef, B:366:0x05ed, B:362:0x05de, B:368:0x05f7, B:370:0x0601, B:372:0x0608, B:374:0x0610, B:376:0x0617, B:375:0x0615, B:371:0x0606, B:377:0x061f, B:379:0x0629, B:381:0x0630, B:383:0x0638, B:385:0x063f, B:384:0x063d, B:380:0x062e, B:386:0x0647, B:388:0x065b, B:390:0x0662, B:389:0x0660, B:391:0x066a, B:392:0x067d, B:394:0x0689, B:396:0x0690, B:398:0x0698, B:400:0x069f, B:399:0x069d, B:395:0x068e, B:401:0x06a4, B:402:0x06b5, B:404:0x06c7, B:406:0x06ce, B:408:0x06d6, B:410:0x06dd, B:409:0x06db, B:405:0x06cc, B:411:0x06e2, B:413:0x06f2, B:415:0x06f9, B:414:0x06f7, B:416:0x0701, B:418:0x0717, B:420:0x071e, B:419:0x071c, B:421:0x0726, B:422:0x0738, B:423:0x073e, B:425:0x0742, B:426:0x074b, B:428:0x0753, B:430:0x0758, B:432:0x075e, B:429:0x0756, B:433:0x0762, B:435:0x0770, B:437:0x0783, B:439:0x0797, B:440:0x07a1, B:438:0x0786, B:441:0x07a2, B:442:0x07aa, B:443:0x07b6), top: B:474:0x0025 }] */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.prineside.luaj.Varargs m22817r(com.prineside.luaj.LuaValue[] r20, com.prineside.luaj.Varargs r21) {
        /*
            Method dump skipped, instructions count: 2198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.LuaClosure.m22817r(com.prineside.luaj.LuaValue[], com.prineside.luaj.Varargs):com.prineside.luaj.Varargs");
    }

    /* renamed from: t */
    public final LuaValue[] m22815t() {
        int i = this.f7965p.maxstacksize;
        LuaValue[] luaValueArr = new LuaValue[i];
        System.arraycopy(LuaValue.NILS, 0, luaValueArr, 0, i);
        return luaValueArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22814u(com.prineside.luaj.LuaError r6, com.prineside.luaj.Prototype r7, int r8) {
        /*
            r5 = this;
            com.prineside.luaj.Globals r0 = r5.f7966u
            r1 = -1
            java.lang.String r2 = "?"
            if (r0 == 0) goto L20
            com.prineside.luaj.lib.DebugLib r0 = r0.debuglib
            if (r0 == 0) goto L20
            int r3 = r6.f7968a
            com.prineside.luaj.lib.DebugLib$CallFrame r0 = r0.getCallFrame(r3)
            if (r0 == 0) goto L21
            java.lang.String r3 = r0.shortsource()
            if (r3 == 0) goto L1a
            goto L1b
        L1a:
            r3 = r2
        L1b:
            int r4 = r0.currentline()
            goto L23
        L20:
            r0 = 0
        L21:
            r3 = r2
            r4 = -1
        L23:
            if (r0 != 0) goto L3a
            com.prineside.luaj.LuaString r0 = r7.source
            if (r0 == 0) goto L2d
            java.lang.String r2 = r0.tojstring()
        L2d:
            int[] r7 = r7.lineinfo
            if (r7 == 0) goto L38
            if (r8 < 0) goto L38
            int r0 = r7.length
            if (r8 >= r0) goto L38
            r1 = r7[r8]
        L38:
            r4 = r1
            r3 = r2
        L3a:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r3)
            java.lang.String r8 = ":"
            r7.append(r8)
            r7.append(r4)
            java.lang.String r7 = r7.toString()
            r6.f7969b = r7
            java.lang.String r7 = r6.getMessage()
            int r8 = r6.f7968a
            java.lang.String r7 = r5.m22818q(r7, r8)
            r6.f7970d = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.LuaClosure.m22814u(com.prineside.luaj.LuaError, com.prineside.luaj.Prototype, int):void");
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeClassAndObject(output, this.f7965p);
        kryo.writeClassAndObject(output, this.upValues);
        kryo.writeObjectOrNull(output, this.f7966u, Globals.class);
    }

    @Override // com.prineside.luaj.LuaValue
    public final LuaValue call(LuaValue luaValue) {
        LuaValue[] m22815t = m22815t();
        if (this.f7965p.numparams != 0) {
            m22815t[0] = luaValue;
            return m22817r(m22815t, LuaValue.NONE).arg1();
        }
        return m22817r(m22815t, luaValue).arg1();
    }

    @Override // com.prineside.luaj.LuaValue
    public final Varargs invoke(Varargs varargs) {
        try {
            return onInvoke(varargs).eval();
        } catch (LuaError e) {
            Logger.error("LuaError", e.getMessage() + "");
            return LuaValue.NIL;
        }
    }

    @Override // com.prineside.luaj.LuaValue
    public final Varargs onInvoke(Varargs varargs) {
        Prototype prototype;
        int i;
        Varargs varargs2;
        LuaValue[] m22815t = m22815t();
        int i2 = 0;
        while (true) {
            prototype = this.f7965p;
            i = prototype.numparams;
            if (i2 >= i) {
                break;
            }
            int i3 = i2 + 1;
            m22815t[i2] = varargs.arg(i3);
            i2 = i3;
        }
        if (prototype.is_vararg != 0) {
            varargs2 = varargs.subargs(i + 1);
        } else {
            varargs2 = LuaValue.NONE;
        }
        return m22817r(m22815t, varargs2);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f7965p = (Prototype) kryo.readClassAndObject(input);
        this.upValues = (UpValue[]) kryo.readClassAndObject(input);
        this.f7966u = (Globals) kryo.readObjectOrNull(input, Globals.class);
    }

    @Override // com.prineside.luaj.LuaValue
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue[] m22815t = m22815t();
        Prototype prototype = this.f7965p;
        int i = prototype.numparams;
        if (i == 0) {
            return m22817r(m22815t, prototype.is_vararg != 0 ? LuaValue.varargsOf(luaValue, luaValue2) : LuaValue.NONE).arg1();
        } else if (i != 1) {
            m22815t[0] = luaValue;
            m22815t[1] = luaValue2;
            return m22817r(m22815t, LuaValue.NONE).arg1();
        } else {
            m22815t[0] = luaValue;
            return m22817r(m22815t, luaValue2).arg1();
        }
    }

    @Override // com.prineside.luaj.LuaValue
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue[] m22815t = m22815t();
        Prototype prototype = this.f7965p;
        int i = prototype.numparams;
        if (i == 0) {
            return m22817r(m22815t, prototype.is_vararg != 0 ? LuaValue.varargsOf(luaValue, luaValue2, luaValue3) : LuaValue.NONE).arg1();
        } else if (i == 1) {
            m22815t[0] = luaValue;
            return m22817r(m22815t, prototype.is_vararg != 0 ? LuaValue.varargsOf(luaValue2, luaValue3) : LuaValue.NONE).arg1();
        } else if (i != 2) {
            m22815t[0] = luaValue;
            m22815t[1] = luaValue2;
            m22815t[2] = luaValue3;
            return m22817r(m22815t, LuaValue.NONE).arg1();
        } else {
            m22815t[0] = luaValue;
            m22815t[1] = luaValue2;
            return m22817r(m22815t, luaValue3).arg1();
        }
    }
}
