package com.badlogic.gdx.utils.compression.lzma;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.compression.ICodeProgress;
import com.badlogic.gdx.utils.compression.p034lz.BinTree;
import com.badlogic.gdx.utils.compression.rangecoder.BitTreeEncoder;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.luaj.Lua;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class Encoder {
    public static final int EMatchFinderTypeBT2 = 0;
    public static final int EMatchFinderTypeBT4 = 1;

    /* renamed from: b0 */
    public static byte[] f6870b0 = null;
    public static final int kNumLenSpecSymbols = 16;
    public static final int kPropSize = 5;

    /* renamed from: D */
    public int f6874D;

    /* renamed from: M */
    public long f6883M;

    /* renamed from: N */
    public boolean f6884N;

    /* renamed from: O */
    public InputStream f6885O;

    /* renamed from: U */
    public int f6891U;

    /* renamed from: a0 */
    public int f6898a0;

    /* renamed from: b */
    public byte f6899b;

    /* renamed from: u */
    public int f6918u;

    /* renamed from: v */
    public int f6919v;

    /* renamed from: w */
    public int f6920w;

    /* renamed from: x */
    public int f6921x;

    /* renamed from: y */
    public int f6922y;

    /* renamed from: z */
    public boolean f6923z;

    /* renamed from: a */
    public int f6897a = Base.StateInit();

    /* renamed from: c */
    public int[] f6900c = new int[4];

    /* renamed from: d */
    public Optimal[] f6901d = new Optimal[4096];

    /* renamed from: e */
    public BinTree f6902e = null;

    /* renamed from: f */
    public com.badlogic.gdx.utils.compression.rangecoder.Encoder f6903f = new com.badlogic.gdx.utils.compression.rangecoder.Encoder();

    /* renamed from: g */
    public short[] f6904g = new short[192];

    /* renamed from: h */
    public short[] f6905h = new short[12];

    /* renamed from: i */
    public short[] f6906i = new short[12];

    /* renamed from: j */
    public short[] f6907j = new short[12];

    /* renamed from: k */
    public short[] f6908k = new short[12];

    /* renamed from: l */
    public short[] f6909l = new short[192];

    /* renamed from: m */
    public BitTreeEncoder[] f6910m = new BitTreeEncoder[4];

    /* renamed from: n */
    public short[] f6911n = new short[114];

    /* renamed from: o */
    public BitTreeEncoder f6912o = new BitTreeEncoder(4);

    /* renamed from: p */
    public LenPriceTableEncoder f6913p = new LenPriceTableEncoder();

    /* renamed from: q */
    public LenPriceTableEncoder f6914q = new LenPriceTableEncoder();

    /* renamed from: r */
    public LiteralEncoder f6915r = new LiteralEncoder();

    /* renamed from: s */
    public int[] f6916s = new int[548];

    /* renamed from: t */
    public int f6917t = 32;

    /* renamed from: A */
    public int[] f6871A = new int[256];

    /* renamed from: B */
    public int[] f6872B = new int[512];

    /* renamed from: C */
    public int[] f6873C = new int[16];

    /* renamed from: E */
    public int f6875E = 44;

    /* renamed from: F */
    public int f6876F = 2;

    /* renamed from: G */
    public int f6877G = 3;

    /* renamed from: H */
    public int f6878H = 0;

    /* renamed from: I */
    public int f6879I = 3;

    /* renamed from: J */
    public int f6880J = 4194304;

    /* renamed from: K */
    public int f6881K = -1;

    /* renamed from: L */
    public int f6882L = -1;

    /* renamed from: P */
    public int f6886P = 1;

    /* renamed from: Q */
    public boolean f6887Q = false;

    /* renamed from: R */
    public boolean f6888R = false;

    /* renamed from: S */
    public int[] f6889S = new int[4];

    /* renamed from: T */
    public int[] f6890T = new int[4];

    /* renamed from: V */
    public long[] f6892V = new long[1];

    /* renamed from: W */
    public long[] f6893W = new long[1];

    /* renamed from: X */
    public boolean[] f6894X = new boolean[1];

    /* renamed from: Y */
    public byte[] f6895Y = new byte[5];

    /* renamed from: Z */
    public int[] f6896Z = new int[128];

    /* loaded from: classes.dex */
    public class LenEncoder {

        /* renamed from: a */
        public short[] f6924a = new short[2];

        /* renamed from: b */
        public BitTreeEncoder[] f6925b = new BitTreeEncoder[16];

        /* renamed from: c */
        public BitTreeEncoder[] f6926c = new BitTreeEncoder[16];

        /* renamed from: d */
        public BitTreeEncoder f6927d = new BitTreeEncoder(8);

        public LenEncoder() {
            for (int i = 0; i < 16; i++) {
                this.f6925b[i] = new BitTreeEncoder(3);
                this.f6926c[i] = new BitTreeEncoder(3);
            }
        }

        public void Encode(com.badlogic.gdx.utils.compression.rangecoder.Encoder encoder, int i, int i2) {
            if (i < 8) {
                encoder.Encode(this.f6924a, 0, 0);
                this.f6925b[i2].Encode(encoder, i);
                return;
            }
            int i3 = i - 8;
            encoder.Encode(this.f6924a, 0, 1);
            if (i3 < 8) {
                encoder.Encode(this.f6924a, 1, 0);
                this.f6926c[i2].Encode(encoder, i3);
                return;
            }
            encoder.Encode(this.f6924a, 1, 1);
            this.f6927d.Encode(encoder, i3 - 8);
        }

        public void Init(int i) {
            com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6924a);
            for (int i2 = 0; i2 < i; i2++) {
                this.f6925b[i2].Init();
                this.f6926c[i2].Init();
            }
            this.f6927d.Init();
        }

        public void SetPrices(int i, int i2, int[] iArr, int i3) {
            int i4 = 0;
            int GetPrice0 = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this.f6924a[0]);
            int GetPrice1 = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this.f6924a[0]);
            int GetPrice02 = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this.f6924a[1]) + GetPrice1;
            int GetPrice12 = GetPrice1 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this.f6924a[1]);
            while (i4 < 8) {
                if (i4 >= i2) {
                    return;
                }
                iArr[i3 + i4] = this.f6925b[i].GetPrice(i4) + GetPrice0;
                i4++;
            }
            while (i4 < 16) {
                if (i4 >= i2) {
                    return;
                }
                iArr[i3 + i4] = this.f6926c[i].GetPrice(i4 - 8) + GetPrice02;
                i4++;
            }
            while (i4 < i2) {
                iArr[i3 + i4] = this.f6927d.GetPrice((i4 - 8) - 8) + GetPrice12;
                i4++;
            }
        }
    }

    /* loaded from: classes.dex */
    public class LenPriceTableEncoder extends LenEncoder {

        /* renamed from: f */
        public int[] f6929f;

        /* renamed from: g */
        public int f6930g;

        /* renamed from: h */
        public int[] f6931h;

        public int GetPrice(int i, int i2) {
            return this.f6929f[(i2 * Base.kNumLenSymbols) + i];
        }

        public void SetTableSize(int i) {
            this.f6930g = i;
        }

        public void UpdateTables(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                m23432a(i2);
            }
        }

        public LenPriceTableEncoder() {
            super();
            this.f6929f = new int[GL20.GL_DONT_CARE];
            this.f6931h = new int[16];
        }

        /* renamed from: a */
        public void m23432a(int i) {
            SetPrices(i, this.f6930g, this.f6929f, i * Base.kNumLenSymbols);
            this.f6931h[i] = this.f6930g;
        }

        @Override // com.badlogic.gdx.utils.compression.lzma.Encoder.LenEncoder
        public void Encode(com.badlogic.gdx.utils.compression.rangecoder.Encoder encoder, int i, int i2) {
            super.Encode(encoder, i, i2);
            int[] iArr = this.f6931h;
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 == 0) {
                m23432a(i2);
            }
        }
    }

    /* loaded from: classes.dex */
    public class LiteralEncoder {

        /* renamed from: a */
        public Encoder2[] f6933a;

        /* renamed from: b */
        public int f6934b;

        /* renamed from: c */
        public int f6935c;

        /* renamed from: d */
        public int f6936d;

        /* loaded from: classes.dex */
        public class Encoder2 {

            /* renamed from: a */
            public short[] f6938a = new short[GL20.GL_SRC_COLOR];

            public void Encode(com.badlogic.gdx.utils.compression.rangecoder.Encoder encoder, byte b) {
                int i = 1;
                for (int i2 = 7; i2 >= 0; i2--) {
                    int i3 = (b >> i2) & 1;
                    encoder.Encode(this.f6938a, i, i3);
                    i = (i << 1) | i3;
                }
            }

            public void EncodeMatched(com.badlogic.gdx.utils.compression.rangecoder.Encoder encoder, byte b, byte b2) {
                int i;
                int i2 = 1;
                boolean z = true;
                for (int i3 = 7; i3 >= 0; i3--) {
                    int i4 = (b2 >> i3) & 1;
                    if (z) {
                        int i5 = (b >> i3) & 1;
                        i = ((i5 + 1) << 8) + i2;
                        z = i5 == i4;
                    } else {
                        i = i2;
                    }
                    encoder.Encode(this.f6938a, i, i4);
                    i2 = (i2 << 1) | i4;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0039 A[RETURN] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0028 -> B:13:0x0036). Please submit an issue!!! */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public int GetPrice(boolean r8, byte r9, byte r10) {
                /*
                    r7 = this;
                    r0 = 1
                    r1 = 0
                    r2 = 7
                    if (r8 == 0) goto L25
                    r8 = 1
                L6:
                    if (r2 < 0) goto L26
                    int r3 = r9 >> r2
                    r3 = r3 & r0
                    int r4 = r10 >> r2
                    r4 = r4 & r0
                    short[] r5 = r7.f6938a
                    int r6 = r3 + 1
                    int r6 = r6 << 8
                    int r6 = r6 + r8
                    short r5 = r5[r6]
                    int r5 = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice(r5, r4)
                    int r1 = r1 + r5
                    int r8 = r8 << 1
                    r8 = r8 | r4
                    if (r3 == r4) goto L22
                    goto L36
                L22:
                    int r2 = r2 + (-1)
                    goto L6
                L25:
                    r8 = 1
                L26:
                    if (r2 < 0) goto L39
                    int r9 = r10 >> r2
                    r9 = r9 & r0
                    short[] r3 = r7.f6938a
                    short r3 = r3[r8]
                    int r3 = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice(r3, r9)
                    int r1 = r1 + r3
                    int r8 = r8 << r0
                    r8 = r8 | r9
                L36:
                    int r2 = r2 + (-1)
                    goto L26
                L39:
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.compression.lzma.Encoder.LiteralEncoder.Encoder2.GetPrice(boolean, byte, byte):int");
            }

            public void Init() {
                com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6938a);
            }

            public Encoder2() {
            }
        }

        public LiteralEncoder() {
        }

        public Encoder2 GetSubCoder(int i, byte b) {
            Encoder2[] encoder2Arr = this.f6933a;
            int i2 = i & this.f6936d;
            int i3 = this.f6934b;
            return encoder2Arr[(i2 << i3) + ((b & DefaultClassResolver.NAME) >>> (8 - i3))];
        }

        public void Create(int i, int i2) {
            if (this.f6933a != null && this.f6934b == i2 && this.f6935c == i) {
                return;
            }
            this.f6935c = i;
            this.f6936d = (1 << i) - 1;
            this.f6934b = i2;
            int i3 = 1 << (i2 + i);
            this.f6933a = new Encoder2[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                this.f6933a[i4] = new Encoder2();
            }
        }

        public void Init() {
            int i = 1 << (this.f6934b + this.f6935c);
            for (int i2 = 0; i2 < i; i2++) {
                this.f6933a[i2].Init();
            }
        }
    }

    /* loaded from: classes.dex */
    public class Optimal {
        public int BackPrev;
        public int BackPrev2;
        public int Backs0;
        public int Backs1;
        public int Backs2;
        public int Backs3;
        public int PosPrev;
        public int PosPrev2;
        public boolean Prev1IsChar;
        public boolean Prev2;
        public int Price;
        public int State;

        public Optimal() {
        }

        public boolean IsShortRep() {
            return this.BackPrev == 0;
        }

        public void MakeAsChar() {
            this.BackPrev = -1;
            this.Prev1IsChar = false;
        }

        public void MakeAsShortRep() {
            this.BackPrev = 0;
            this.Prev1IsChar = false;
        }
    }

    public void Code(InputStream inputStream, OutputStream outputStream, long j, long j2, ICodeProgress iCodeProgress) {
        this.f6888R = false;
        try {
            m23434u(inputStream, outputStream, j, j2);
            while (true) {
                CodeOneBlock(this.f6892V, this.f6893W, this.f6894X);
                if (this.f6894X[0]) {
                    return;
                }
                if (iCodeProgress != null) {
                    iCodeProgress.SetProgress(this.f6892V[0], this.f6893W[0]);
                }
            }
        } finally {
            m23436s();
        }
    }

    public void CodeOneBlock(long[] jArr, long[] jArr2, boolean[] zArr) {
        jArr[0] = 0;
        jArr2[0] = 0;
        zArr[0] = true;
        InputStream inputStream = this.f6885O;
        if (inputStream != null) {
            this.f6902e.SetStream(inputStream);
            this.f6902e.Init();
            this.f6888R = true;
            this.f6885O = null;
        }
        if (this.f6884N) {
            return;
        }
        this.f6884N = true;
        long j = this.f6883M;
        if (j == 0) {
            if (this.f6902e.GetNumAvailableBytes() == 0) {
                m23449f((int) this.f6883M);
                return;
            }
            m23439p();
            this.f6903f.Encode(this.f6904g, (this.f6897a << 4) + (this.f6877G & ((int) this.f6883M)), 0);
            this.f6897a = Base.StateUpdateChar(this.f6897a);
            byte GetIndexByte = this.f6902e.GetIndexByte(0 - this.f6920w);
            this.f6915r.GetSubCoder((int) this.f6883M, this.f6899b).Encode(this.f6903f, GetIndexByte);
            this.f6899b = GetIndexByte;
            this.f6920w--;
            this.f6883M++;
        }
        if (this.f6902e.GetNumAvailableBytes() == 0) {
            m23449f((int) this.f6883M);
            return;
        }
        while (true) {
            int m23448g = m23448g((int) this.f6883M);
            int i = this.f6891U;
            int i2 = this.f6877G & ((int) this.f6883M);
            int i3 = (this.f6897a << 4) + i2;
            if (m23448g == 1 && i == -1) {
                this.f6903f.Encode(this.f6904g, i3, 0);
                byte GetIndexByte2 = this.f6902e.GetIndexByte(0 - this.f6920w);
                LiteralEncoder.Encoder2 GetSubCoder = this.f6915r.GetSubCoder((int) this.f6883M, this.f6899b);
                if (!Base.StateIsCharState(this.f6897a)) {
                    GetSubCoder.EncodeMatched(this.f6903f, this.f6902e.GetIndexByte(((0 - this.f6900c[0]) - 1) - this.f6920w), GetIndexByte2);
                } else {
                    GetSubCoder.Encode(this.f6903f, GetIndexByte2);
                }
                this.f6899b = GetIndexByte2;
                this.f6897a = Base.StateUpdateChar(this.f6897a);
            } else {
                this.f6903f.Encode(this.f6904g, i3, 1);
                if (i < 4) {
                    this.f6903f.Encode(this.f6905h, this.f6897a, 1);
                    if (i == 0) {
                        this.f6903f.Encode(this.f6906i, this.f6897a, 0);
                        if (m23448g == 1) {
                            this.f6903f.Encode(this.f6909l, i3, 0);
                        } else {
                            this.f6903f.Encode(this.f6909l, i3, 1);
                        }
                    } else {
                        this.f6903f.Encode(this.f6906i, this.f6897a, 1);
                        if (i == 1) {
                            this.f6903f.Encode(this.f6907j, this.f6897a, 0);
                        } else {
                            this.f6903f.Encode(this.f6907j, this.f6897a, 1);
                            this.f6903f.Encode(this.f6908k, this.f6897a, i - 2);
                        }
                    }
                    if (m23448g == 1) {
                        this.f6897a = Base.StateUpdateShortRep(this.f6897a);
                    } else {
                        this.f6914q.Encode(this.f6903f, m23448g - 2, i2);
                        this.f6897a = Base.StateUpdateRep(this.f6897a);
                    }
                    int i4 = this.f6900c[i];
                    if (i != 0) {
                        while (i >= 1) {
                            int[] iArr = this.f6900c;
                            iArr[i] = iArr[i - 1];
                            i--;
                        }
                        this.f6900c[0] = i4;
                    }
                } else {
                    this.f6903f.Encode(this.f6905h, this.f6897a, 0);
                    this.f6897a = Base.StateUpdateMatch(this.f6897a);
                    this.f6913p.Encode(this.f6903f, m23448g - 2, i2);
                    int i5 = i - 4;
                    int m23446i = m23446i(i5);
                    this.f6910m[Base.GetLenToPosState(m23448g)].Encode(this.f6903f, m23446i);
                    if (m23446i >= 4) {
                        int i6 = (m23446i >> 1) - 1;
                        int i7 = ((m23446i & 1) | 2) << i6;
                        int i8 = i5 - i7;
                        if (m23446i < 14) {
                            BitTreeEncoder.ReverseEncode(this.f6911n, (i7 - m23446i) - 1, this.f6903f, i6, i8);
                        } else {
                            this.f6903f.EncodeDirectBits(i8 >> 4, i6 - 4);
                            this.f6912o.ReverseEncode(this.f6903f, i8 & 15);
                            this.f6874D++;
                        }
                    }
                    for (int i9 = 3; i9 >= 1; i9--) {
                        int[] iArr2 = this.f6900c;
                        iArr2[i9] = iArr2[i9 - 1];
                    }
                    this.f6900c[0] = i5;
                    this.f6898a0++;
                }
                this.f6899b = this.f6902e.GetIndexByte((m23448g - 1) - this.f6920w);
            }
            int i10 = this.f6920w - m23448g;
            this.f6920w = i10;
            this.f6883M += m23448g;
            if (i10 == 0) {
                if (this.f6898a0 >= 128) {
                    m23450e();
                }
                if (this.f6874D >= 16) {
                    m23451d();
                }
                jArr[0] = this.f6883M;
                jArr2[0] = this.f6903f.GetProcessedSizeAdd();
                if (this.f6902e.GetNumAvailableBytes() == 0) {
                    m23449f((int) this.f6883M);
                    return;
                } else if (this.f6883M - j >= 4096) {
                    this.f6884N = false;
                    zArr[0] = false;
                    return;
                }
            }
        }
    }

    public boolean SetAlgorithm(int i) {
        return true;
    }

    public boolean SetDictionarySize(int i) {
        int i2 = 0;
        if (i < 1 || i > 536870912) {
            return false;
        }
        this.f6880J = i;
        while (i > (1 << i2)) {
            i2++;
        }
        this.f6875E = i2 * 2;
        return true;
    }

    public void SetEndMarkerMode(boolean z) {
        this.f6887Q = z;
    }

    public boolean SetNumFastBytes(int i) {
        if (i < 5 || i > 273) {
            return false;
        }
        this.f6917t = i;
        return true;
    }

    /* renamed from: d */
    public void m23451d() {
        for (int i = 0; i < 16; i++) {
            this.f6873C[i] = this.f6912o.ReverseGetPrice(i);
        }
        this.f6874D = 0;
    }

    /* renamed from: e */
    public void m23450e() {
        int i;
        for (int i2 = 4; i2 < 128; i2++) {
            int m23446i = m23446i(i2);
            int i3 = (m23446i >> 1) - 1;
            this.f6896Z[i2] = BitTreeEncoder.ReverseGetPrice(this.f6911n, (i - m23446i) - 1, i3, i2 - (((m23446i & 1) | 2) << i3));
        }
        for (int i4 = 0; i4 < 4; i4++) {
            BitTreeEncoder bitTreeEncoder = this.f6910m[i4];
            int i5 = i4 << 6;
            for (int i6 = 0; i6 < this.f6875E; i6++) {
                this.f6871A[i5 + i6] = bitTreeEncoder.GetPrice(i6);
            }
            for (int i7 = 14; i7 < this.f6875E; i7++) {
                int[] iArr = this.f6871A;
                int i8 = i5 + i7;
                iArr[i8] = iArr[i8] + ((((i7 >> 1) - 1) - 4) << 6);
            }
            int i9 = i4 * 128;
            int i10 = 0;
            while (i10 < 4) {
                this.f6872B[i9 + i10] = this.f6871A[i5 + i10];
                i10++;
            }
            while (i10 < 128) {
                this.f6872B[i9 + i10] = this.f6871A[m23446i(i10) + i5] + this.f6896Z[i10];
                i10++;
            }
        }
        this.f6898a0 = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x066a A[EDGE_INSN: B:262:0x066a->B:230:0x066a ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0659 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m23448g(int r24) {
        /*
            Method dump skipped, instructions count: 1650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.compression.lzma.Encoder.m23448g(int):int");
    }

    /* renamed from: r */
    public void m23437r() {
        this.f6903f.ReleaseStream();
    }

    /* renamed from: t */
    public void m23435t(OutputStream outputStream) {
        this.f6903f.SetStream(outputStream);
    }

    static {
        byte[] bArr = new byte[2048];
        f6870b0 = bArr;
        bArr[0] = 0;
        bArr[1] = 1;
        int i = 2;
        for (int i2 = 2; i2 < 22; i2++) {
            int i3 = 1 << ((i2 >> 1) - 1);
            int i4 = 0;
            while (i4 < i3) {
                f6870b0[i] = (byte) i2;
                i4++;
                i++;
            }
        }
    }

    /* renamed from: i */
    public static int m23446i(int i) {
        if (i < 2048) {
            return f6870b0[i];
        }
        if (i < 2097152) {
            return f6870b0[i >> 10] + 20;
        }
        return f6870b0[i >> 20] + 40;
    }

    /* renamed from: j */
    public static int m23445j(int i) {
        if (i < 131072) {
            return f6870b0[i >> 6] + 12;
        }
        if (i < 134217728) {
            return f6870b0[i >> 16] + 32;
        }
        return f6870b0[i >> 26] + 52;
    }

    public boolean SetLcLpPb(int i, int i2, int i3) {
        if (i2 >= 0 && i2 <= 4 && i >= 0 && i <= 8 && i3 >= 0 && i3 <= 4) {
            this.f6878H = i2;
            this.f6879I = i;
            this.f6876F = i3;
            this.f6877G = (1 << i3) - 1;
            return true;
        }
        return false;
    }

    public boolean SetMatchFinder(int i) {
        if (i >= 0 && i <= 2) {
            int i2 = this.f6886P;
            this.f6886P = i;
            if (this.f6902e != null && i2 != i) {
                this.f6881K = -1;
                this.f6902e = null;
                return true;
            }
            return true;
        }
        return false;
    }

    public void WriteCoderProperties(OutputStream outputStream) {
        this.f6895Y[0] = (byte) ((((this.f6876F * 5) + this.f6878H) * 9) + this.f6879I);
        int i = 0;
        while (i < 4) {
            int i2 = i + 1;
            this.f6895Y[i2] = (byte) (this.f6880J >> (i * 8));
            i = i2;
        }
        outputStream.write(this.f6895Y, 0, 5);
    }

    /* renamed from: a */
    public int m23454a(int i) {
        this.f6921x = i;
        Optimal optimal = this.f6901d[i];
        int i2 = optimal.PosPrev;
        int i3 = optimal.BackPrev;
        while (true) {
            Optimal[] optimalArr = this.f6901d;
            if (optimalArr[i].Prev1IsChar) {
                optimalArr[i2].MakeAsChar();
                Optimal[] optimalArr2 = this.f6901d;
                int i4 = i2 - 1;
                optimalArr2[i2].PosPrev = i4;
                Optimal optimal2 = optimalArr2[i];
                if (optimal2.Prev2) {
                    Optimal optimal3 = optimalArr2[i4];
                    optimal3.Prev1IsChar = false;
                    optimal3.PosPrev = optimal2.PosPrev2;
                    optimal3.BackPrev = optimal2.BackPrev2;
                }
            }
            Optimal[] optimalArr3 = this.f6901d;
            Optimal optimal4 = optimalArr3[i2];
            int i5 = optimal4.BackPrev;
            int i6 = optimal4.PosPrev;
            optimal4.BackPrev = i3;
            optimal4.PosPrev = i;
            if (i2 <= 0) {
                Optimal optimal5 = optimalArr3[0];
                this.f6891U = optimal5.BackPrev;
                int i7 = optimal5.PosPrev;
                this.f6922y = i7;
                return i7;
            }
            i = i2;
            i3 = i5;
            i2 = i6;
        }
    }

    /* renamed from: c */
    public void m23452c() {
        if (this.f6902e == null) {
            BinTree binTree = new BinTree();
            int i = 4;
            if (this.f6886P == 0) {
                i = 2;
            }
            binTree.SetType(i);
            this.f6902e = binTree;
        }
        this.f6915r.Create(this.f6878H, this.f6879I);
        int i2 = this.f6880J;
        if (i2 == this.f6881K && this.f6882L == this.f6917t) {
            return;
        }
        this.f6902e.Create(i2, 4096, this.f6917t, 274);
        this.f6881K = this.f6880J;
        this.f6882L = this.f6917t;
    }

    /* renamed from: k */
    public int m23444k(int i, int i2, int i3) {
        int GetPrice;
        if (i == 0) {
            return com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this.f6906i[i2]) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this.f6909l[(i2 << 4) + i3]);
        }
        int GetPrice1 = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this.f6906i[i2]);
        if (i == 1) {
            GetPrice = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this.f6907j[i2]);
        } else {
            GetPrice1 += com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this.f6907j[i2]);
            GetPrice = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice(this.f6908k[i2], i - 2);
        }
        return GetPrice + GetPrice1;
    }

    /* renamed from: l */
    public int m23443l(int i, int i2) {
        return com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this.f6906i[i]) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this.f6909l[(i << 4) + i2]);
    }

    /* renamed from: m */
    public int m23442m(int i, int i2, int i3, int i4) {
        return this.f6914q.GetPrice(i2 - 2, i4) + m23444k(i, i3, i4);
    }

    /* renamed from: o */
    public void m23440o(int i) {
        if (i > 0) {
            this.f6902e.Skip(i);
            this.f6920w += i;
        }
    }

    /* renamed from: p */
    public int m23439p() {
        int i;
        int GetMatches = this.f6902e.GetMatches(this.f6916s);
        this.f6919v = GetMatches;
        if (GetMatches > 0) {
            int[] iArr = this.f6916s;
            i = iArr[GetMatches - 2];
            if (i == this.f6917t) {
                i += this.f6902e.GetMatchLen(i - 1, iArr[GetMatches - 1], 273 - i);
            }
        } else {
            i = 0;
        }
        this.f6920w++;
        return i;
    }

    /* renamed from: q */
    public void m23438q() {
        BinTree binTree = this.f6902e;
        if (binTree != null && this.f6888R) {
            binTree.ReleaseStream();
            this.f6888R = false;
        }
    }

    /* renamed from: u */
    public void m23434u(InputStream inputStream, OutputStream outputStream, long j, long j2) {
        this.f6885O = inputStream;
        this.f6884N = false;
        m23452c();
        m23435t(outputStream);
        m23441n();
        m23450e();
        m23451d();
        this.f6913p.SetTableSize((this.f6917t + 1) - 2);
        this.f6913p.UpdateTables(1 << this.f6876F);
        this.f6914q.SetTableSize((this.f6917t + 1) - 2);
        this.f6914q.UpdateTables(1 << this.f6876F);
        this.f6883M = 0L;
    }

    /* renamed from: v */
    public void m23433v(int i) {
        if (!this.f6887Q) {
            return;
        }
        this.f6903f.Encode(this.f6904g, (this.f6897a << 4) + i, 1);
        this.f6903f.Encode(this.f6905h, this.f6897a, 0);
        this.f6897a = Base.StateUpdateMatch(this.f6897a);
        this.f6913p.Encode(this.f6903f, 0, i);
        this.f6910m[Base.GetLenToPosState(2)].Encode(this.f6903f, 63);
        this.f6903f.EncodeDirectBits(Lua.MAXARG_Ax, 26);
        this.f6912o.ReverseEncode(this.f6903f, 15);
    }

    public Encoder() {
        for (int i = 0; i < 4096; i++) {
            this.f6901d[i] = new Optimal();
        }
        for (int i2 = 0; i2 < 4; i2++) {
            this.f6910m[i2] = new BitTreeEncoder(6);
        }
    }

    /* renamed from: b */
    public void m23453b() {
        this.f6897a = Base.StateInit();
        this.f6899b = (byte) 0;
        for (int i = 0; i < 4; i++) {
            this.f6900c[i] = 0;
        }
    }

    /* renamed from: f */
    public void m23449f(int i) {
        m23438q();
        m23433v(i & this.f6877G);
        this.f6903f.FlushData();
        this.f6903f.FlushStream();
    }

    /* renamed from: h */
    public int m23447h(int i, int i2, int i3) {
        int i4;
        int GetLenToPosState = Base.GetLenToPosState(i2);
        if (i < 128) {
            i4 = this.f6872B[(GetLenToPosState * 128) + i];
        } else {
            i4 = this.f6873C[i & 15] + this.f6871A[(GetLenToPosState << 6) + m23445j(i)];
        }
        return i4 + this.f6913p.GetPrice(i2 - 2, i3);
    }

    /* renamed from: n */
    public void m23441n() {
        m23453b();
        this.f6903f.Init();
        com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6904g);
        com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6909l);
        com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6905h);
        com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6906i);
        com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6907j);
        com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6908k);
        com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this.f6911n);
        this.f6915r.Init();
        for (int i = 0; i < 4; i++) {
            this.f6910m[i].Init();
        }
        this.f6913p.Init(1 << this.f6876F);
        this.f6914q.Init(1 << this.f6876F);
        this.f6912o.Init();
        this.f6923z = false;
        this.f6921x = 0;
        this.f6922y = 0;
        this.f6920w = 0;
    }

    /* renamed from: s */
    public void m23436s() {
        m23438q();
        m23437r();
    }
}
