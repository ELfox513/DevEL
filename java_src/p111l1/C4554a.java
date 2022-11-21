package p111l1;
/* renamed from: l1.a */
/* loaded from: classes.dex */
public final class C4554a implements InterfaceC4555b {

    /* renamed from: a */
    public final byte[] f18602a;

    /* renamed from: b */
    public int f18603b;

    @Override // p111l1.InterfaceC4555b
    public byte readByte() {
        byte[] bArr = this.f18602a;
        int i = this.f18603b;
        this.f18603b = i + 1;
        return bArr[i];
    }

    public C4554a(byte... bArr) {
        this.f18602a = bArr;
    }
}
