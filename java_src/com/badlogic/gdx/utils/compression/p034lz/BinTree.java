package com.badlogic.gdx.utils.compression.p034lz;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: com.badlogic.gdx.utils.compression.lz.BinTree */
/* loaded from: classes.dex */
public class BinTree extends InWindow {

    /* renamed from: s */
    public static final int[] f6816s = new int[256];

    /* renamed from: g */
    public int f6817g;

    /* renamed from: i */
    public int f6819i;

    /* renamed from: j */
    public int[] f6820j;

    /* renamed from: k */
    public int[] f6821k;

    /* renamed from: m */
    public int f6823m;

    /* renamed from: h */
    public int f6818h = 0;

    /* renamed from: l */
    public int f6822l = 255;

    /* renamed from: n */
    public int f6824n = 0;

    /* renamed from: o */
    public boolean f6825o = true;

    /* renamed from: p */
    public int f6826p = 0;

    /* renamed from: q */
    public int f6827q = 4;

    /* renamed from: r */
    public int f6828r = 66560;

    public void SetCutValue(int i) {
        this.f6822l = i;
    }

    public void SetType(int i) {
        boolean z;
        if (i > 2) {
            z = true;
        } else {
            z = false;
        }
        this.f6825o = z;
        if (z) {
            this.f6826p = 0;
            this.f6827q = 4;
            this.f6828r = 66560;
            return;
        }
        this.f6826p = 2;
        this.f6827q = 3;
        this.f6828r = 0;
    }

    /* renamed from: c */
    public void m23460c(int[] iArr, int i, int i2) {
        int i3;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = iArr[i4];
            if (i5 <= i2) {
                i3 = 0;
            } else {
                i3 = i5 - i2;
            }
            iArr[i4] = i3;
        }
    }

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                if ((i2 & 1) != 0) {
                    i2 = (i2 >>> 1) ^ (-306674912);
                } else {
                    i2 >>>= 1;
                }
            }
            f6816s[i] = i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int GetMatches(int[] r22) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.compression.p034lz.BinTree.GetMatches(int[]):int");
    }

    @Override // com.badlogic.gdx.utils.compression.p034lz.InWindow
    public void MovePos() {
        int i = this.f6817g + 1;
        this.f6817g = i;
        if (i >= this.f6818h) {
            this.f6817g = 0;
        }
        super.MovePos();
        if (this._pos == 1073741823) {
            m23461b();
        }
    }

    public void Skip(int i) {
        int i2;
        int i3;
        int i4;
        byte[] bArr;
        int i5 = i;
        do {
            int i6 = this._pos;
            int i7 = this.f6819i;
            int i8 = i6 + i7;
            int i9 = this._streamPos;
            if (i8 > i9 && (i7 = i9 - i6) < this.f6827q) {
                MovePos();
            } else {
                int i10 = this.f6818h;
                if (i6 > i10) {
                    i2 = i6 - i10;
                } else {
                    i2 = 0;
                }
                int i11 = this._bufferOffset + i6;
                if (this.f6825o) {
                    int[] iArr = f6816s;
                    byte[] bArr2 = this._bufferBase;
                    int i12 = iArr[bArr2[i11] & DefaultClassResolver.NAME] ^ (bArr2[i11 + 1] & DefaultClassResolver.NAME);
                    int[] iArr2 = this.f6821k;
                    iArr2[i12 & 1023] = i6;
                    int i13 = i12 ^ ((bArr2[i11 + 2] & DefaultClassResolver.NAME) << 8);
                    iArr2[(65535 & i13) + 1024] = i6;
                    i3 = ((iArr[bArr2[i11 + 3] & DefaultClassResolver.NAME] << 5) ^ i13) & this.f6823m;
                } else {
                    byte[] bArr3 = this._bufferBase;
                    i3 = ((bArr3[i11 + 1] & DefaultClassResolver.NAME) << 8) ^ (bArr3[i11] & DefaultClassResolver.NAME);
                }
                int[] iArr3 = this.f6821k;
                int i14 = this.f6828r;
                int i15 = iArr3[i14 + i3];
                iArr3[i14 + i3] = i6;
                int i16 = this.f6817g;
                int i17 = (i16 << 1) + 1;
                int i18 = i16 << 1;
                int i19 = this.f6826p;
                int i20 = i15;
                int i21 = this.f6822l;
                int i22 = i19;
                while (i20 > i2) {
                    int i23 = i21 - 1;
                    if (i21 == 0) {
                        break;
                    }
                    int i24 = this._pos - i20;
                    int i25 = this.f6817g;
                    if (i24 <= i25) {
                        i4 = i25 - i24;
                    } else {
                        i4 = (i25 - i24) + this.f6818h;
                    }
                    int i26 = i4 << 1;
                    int i27 = this._bufferOffset + i20;
                    int min = Math.min(i19, i22);
                    byte[] bArr4 = this._bufferBase;
                    if (bArr4[i27 + min] == bArr4[i11 + min]) {
                        do {
                            min++;
                            if (min == i7) {
                                break;
                            }
                            bArr = this._bufferBase;
                        } while (bArr[i27 + min] == bArr[i11 + min]);
                        if (min == i7) {
                            int[] iArr4 = this.f6820j;
                            iArr4[i18] = iArr4[i26];
                            iArr4[i17] = iArr4[i26 + 1];
                            break;
                        }
                    }
                    byte[] bArr5 = this._bufferBase;
                    if ((bArr5[i27 + min] & DefaultClassResolver.NAME) < (bArr5[i11 + min] & DefaultClassResolver.NAME)) {
                        int[] iArr5 = this.f6820j;
                        iArr5[i18] = i20;
                        int i28 = i26 + 1;
                        i20 = iArr5[i28];
                        i18 = i28;
                        i22 = min;
                    } else {
                        int[] iArr6 = this.f6820j;
                        iArr6[i17] = i20;
                        i20 = iArr6[i26];
                        i17 = i26;
                        i19 = min;
                    }
                    i21 = i23;
                }
                int[] iArr7 = this.f6820j;
                iArr7[i18] = 0;
                iArr7[i17] = 0;
                MovePos();
            }
            i5--;
        } while (i5 != 0);
    }

    /* renamed from: b */
    public void m23461b() {
        int i = this._pos;
        int i2 = this.f6818h;
        int i3 = i - i2;
        m23460c(this.f6820j, i2 * 2, i3);
        m23460c(this.f6821k, this.f6824n, i3);
        ReduceOffsets(i3);
    }

    public boolean Create(int i, int i2, int i3, int i4) {
        if (i > 1073741567) {
            return false;
        }
        this.f6822l = (i3 >> 1) + 16;
        int i5 = i2 + i;
        super.Create(i5, i4 + i3, (((i5 + i3) + i4) / 2) + 256);
        this.f6819i = i3;
        int i6 = i + 1;
        if (this.f6818h != i6) {
            this.f6818h = i6;
            this.f6820j = new int[i6 * 2];
        }
        int i7 = 65536;
        if (this.f6825o) {
            int i8 = i - 1;
            int i9 = i8 | (i8 >> 1);
            int i10 = i9 | (i9 >> 2);
            int i11 = i10 | (i10 >> 4);
            int i12 = ((i11 | (i11 >> 8)) >> 1) | MeshBuilder.MAX_INDEX;
            if (i12 > 16777216) {
                i12 >>= 1;
            }
            this.f6823m = i12;
            i7 = this.f6828r + i12 + 1;
        }
        if (i7 != this.f6824n) {
            this.f6824n = i7;
            this.f6821k = new int[i7];
        }
        return true;
    }

    @Override // com.badlogic.gdx.utils.compression.p034lz.InWindow
    public void Init() {
        super.Init();
        for (int i = 0; i < this.f6824n; i++) {
            this.f6821k[i] = 0;
        }
        this.f6817g = 0;
        ReduceOffsets(-1);
    }
}
