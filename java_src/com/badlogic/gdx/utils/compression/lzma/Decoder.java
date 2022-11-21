package com.badlogic.gdx.utils.compression.lzma;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.compression.p034lz.OutWindow;
import com.badlogic.gdx.utils.compression.rangecoder.BitTreeDecoder;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* loaded from: classes.dex */
public class Decoder {

    /* renamed from: a */
    public OutWindow f6840a = new OutWindow();

    /* renamed from: b */
    public com.badlogic.gdx.utils.compression.rangecoder.Decoder f6841b = new com.badlogic.gdx.utils.compression.rangecoder.Decoder();

    /* renamed from: c */
    public short[] f6842c = new short[192];

    /* renamed from: d */
    public short[] f6843d = new short[12];

    /* renamed from: e */
    public short[] f6844e = new short[12];

    /* renamed from: f */
    public short[] f6845f = new short[12];

    /* renamed from: g */
    public short[] f6846g = new short[12];

    /* renamed from: h */
    public short[] f6847h = new short[192];

    /* renamed from: i */
    public BitTreeDecoder[] f6848i = new BitTreeDecoder[4];

    /* renamed from: j */
    public short[] f6849j = new short[114];

    /* renamed from: k */
    public BitTreeDecoder f6850k = new BitTreeDecoder(4);

    /* renamed from: l */
    public LenDecoder f6851l = new LenDecoder();

    /* renamed from: m */
    public LenDecoder f6852m = new LenDecoder();

    /* renamed from: n */
    public LiteralDecoder f6853n = new LiteralDecoder();

    /* renamed from: o */
    public int f6854o = -1;

    /* renamed from: p */
    public int f6855p = -1;

    /* renamed from: q */
    public int f6856q;

    /* loaded from: classes.dex */
    public class LenDecoder {

        /* renamed from: a */
        public short[] f6857a = new short[2];

        /* renamed from: b */
        public BitTreeDecoder[] f6858b = new BitTreeDecoder[16];

        /* renamed from: c */
        public BitTreeDecoder[] f6859c = new BitTreeDecoder[16];

        /* renamed from: d */
        public BitTreeDecoder f6860d = new BitTreeDecoder(8);

        /* renamed from: e */
        public int f6861e = 0;

        public LenDecoder() {
        }

        public void Create(int i) {
            while (true) {
                int i2 = this.f6861e;
                if (i2 < i) {
                    this.f6858b[i2] = new BitTreeDecoder(3);
                    this.f6859c[this.f6861e] = new BitTreeDecoder(3);
                    this.f6861e++;
                } else {
                    return;
                }
            }
        }

        public int Decode(com.badlogic.gdx.utils.compression.rangecoder.Decoder decoder, int i) {
            int Decode;
            if (decoder.DecodeBit(this.f6857a, 0) == 0) {
                return this.f6858b[i].Decode(decoder);
            }
            if (decoder.DecodeBit(this.f6857a, 1) == 0) {
                Decode = this.f6859c[i].Decode(decoder);
            } else {
                Decode = this.f6860d.Decode(decoder) + 8;
            }
            return Decode + 8;
        }

        public void Init() {
            com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6857a);
            for (int i = 0; i < this.f6861e; i++) {
                this.f6858b[i].Init();
                this.f6859c[i].Init();
            }
            this.f6860d.Init();
        }
    }

    /* loaded from: classes.dex */
    public class LiteralDecoder {

        /* renamed from: a */
        public Decoder2[] f6863a;

        /* renamed from: b */
        public int f6864b;

        /* renamed from: c */
        public int f6865c;

        /* renamed from: d */
        public int f6866d;

        /* loaded from: classes.dex */
        public class Decoder2 {

            /* renamed from: a */
            public short[] f6868a = new short[GL20.GL_SRC_COLOR];

            public byte DecodeNormal(com.badlogic.gdx.utils.compression.rangecoder.Decoder decoder) {
                int i = 1;
                do {
                    i = decoder.DecodeBit(this.f6868a, i) | (i << 1);
                } while (i < 256);
                return (byte) i;
            }

            public byte DecodeWithMatchByte(com.badlogic.gdx.utils.compression.rangecoder.Decoder decoder, byte b) {
                int i = 1;
                while (true) {
                    int i2 = (b >> 7) & 1;
                    b = (byte) (b << 1);
                    int DecodeBit = decoder.DecodeBit(this.f6868a, ((i2 + 1) << 8) + i);
                    i = (i << 1) | DecodeBit;
                    if (i2 != DecodeBit) {
                        while (i < 256) {
                            i = (i << 1) | decoder.DecodeBit(this.f6868a, i);
                        }
                    } else if (i >= 256) {
                        break;
                    }
                }
                return (byte) i;
            }

            public void Init() {
                com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6868a);
            }

            public Decoder2() {
            }
        }

        public LiteralDecoder() {
        }

        /* renamed from: a */
        public Decoder2 m23455a(int i, byte b) {
            Decoder2[] decoder2Arr = this.f6863a;
            int i2 = i & this.f6866d;
            int i3 = this.f6864b;
            return decoder2Arr[(i2 << i3) + ((b & DefaultClassResolver.NAME) >>> (8 - i3))];
        }

        public void Create(int i, int i2) {
            if (this.f6863a != null && this.f6864b == i2 && this.f6865c == i) {
                return;
            }
            this.f6865c = i;
            this.f6866d = (1 << i) - 1;
            this.f6864b = i2;
            int i3 = 1 << (i2 + i);
            this.f6863a = new Decoder2[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                this.f6863a[i4] = new Decoder2();
            }
        }

        public void Init() {
            int i = 1 << (this.f6864b + this.f6865c);
            for (int i2 = 0; i2 < i; i2++) {
                this.f6863a[i2].Init();
            }
        }
    }

    public boolean SetDecoderProperties(byte[] bArr) {
        if (bArr.length < 5) {
            return false;
        }
        int i = bArr[0] & DefaultClassResolver.NAME;
        int i2 = i % 9;
        int i3 = i / 9;
        int i4 = i3 % 5;
        int i5 = i3 / 5;
        int i6 = 0;
        int i7 = 0;
        while (i6 < 4) {
            int i8 = i6 + 1;
            i7 += (bArr[i8] & DefaultClassResolver.NAME) << (i6 * 8);
            i6 = i8;
        }
        if (!m23456c(i2, i4, i5)) {
            return false;
        }
        return m23457b(i7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0115, code lost:
        r17.f6840a.Flush();
        r17.f6840a.ReleaseStream();
        r17.f6841b.ReleaseStream();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0124, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean Code(java.io.InputStream r18, java.io.OutputStream r19, long r20) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.compression.lzma.Decoder.Code(java.io.InputStream, java.io.OutputStream, long):boolean");
    }

    /* renamed from: a */
    public void m23458a() {
        this.f6840a.Init(false);
        com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6842c);
        com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6847h);
        com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6843d);
        com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6844e);
        com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6845f);
        com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6846g);
        com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.f6849j);
        this.f6853n.Init();
        for (int i = 0; i < 4; i++) {
            this.f6848i[i].Init();
        }
        this.f6851l.Init();
        this.f6852m.Init();
        this.f6850k.Init();
        this.f6841b.Init();
    }

    /* renamed from: b */
    public boolean m23457b(int i) {
        if (i < 0) {
            return false;
        }
        if (this.f6854o != i) {
            this.f6854o = i;
            int max = Math.max(i, 1);
            this.f6855p = max;
            this.f6840a.Create(Math.max(max, 4096));
        }
        return true;
    }

    /* renamed from: c */
    public boolean m23456c(int i, int i2, int i3) {
        if (i <= 8 && i2 <= 4 && i3 <= 4) {
            this.f6853n.Create(i2, i);
            int i4 = 1 << i3;
            this.f6851l.Create(i4);
            this.f6852m.Create(i4);
            this.f6856q = i4 - 1;
            return true;
        }
        return false;
    }

    public Decoder() {
        for (int i = 0; i < 4; i++) {
            this.f6848i[i] = new BitTreeDecoder(6);
        }
    }
}
