package p168r4;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* renamed from: r4.ux3 */
/* loaded from: classes2.dex */
public final class ux3 extends AbstractC5898j5 {

    /* renamed from: e */
    public final byte[] f32484e;

    /* renamed from: f */
    public final DatagramPacket f32485f;

    /* renamed from: g */
    public Uri f32486g;

    /* renamed from: h */
    public DatagramSocket f32487h;

    /* renamed from: i */
    public MulticastSocket f32488i;

    /* renamed from: j */
    public InetAddress f32489j;

    /* renamed from: k */
    public InetSocketAddress f32490k;

    /* renamed from: l */
    public boolean f32491l;

    /* renamed from: m */
    public int f32492m;

    public ux3(int i) {
        super(true);
        byte[] bArr = new byte[2000];
        this.f32484e = bArr;
        this.f32485f = new DatagramPacket(bArr, 0, 2000);
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        this.f32486g = null;
        MulticastSocket multicastSocket = this.f32488i;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f32489j);
            } catch (IOException unused) {
            }
            this.f32488i = null;
        }
        DatagramSocket datagramSocket = this.f32487h;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f32487h = null;
        }
        this.f32489j = null;
        this.f32490k = null;
        this.f32492m = 0;
        if (this.f32491l) {
            this.f32491l = false;
            m10419s();
        }
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f32486g;
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.f32492m == 0) {
            try {
                this.f32487h.receive(this.f32485f);
                int length = this.f32485f.getLength();
                this.f32492m = length;
                m10420r(length);
            } catch (SocketTimeoutException e) {
                throw new tx3(e, 2002);
            } catch (IOException e2) {
                throw new tx3(e2, 2001);
            }
        }
        int length2 = this.f32485f.getLength();
        int i3 = this.f32492m;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f32484e, length2 - i3, bArr, i, min);
        this.f32492m -= min;
        return min;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        Uri uri = c6350vc.f32683a;
        this.f32486g = uri;
        String host = uri.getHost();
        int port = this.f32486g.getPort();
        m10422n(c6350vc);
        try {
            this.f32489j = InetAddress.getByName(host);
            this.f32490k = new InetSocketAddress(this.f32489j, port);
            if (this.f32489j.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f32490k);
                this.f32488i = multicastSocket;
                multicastSocket.joinGroup(this.f32489j);
                this.f32487h = this.f32488i;
            } else {
                this.f32487h = new DatagramSocket(this.f32490k);
            }
            this.f32487h.setSoTimeout(8000);
            this.f32491l = true;
            m10421o(c6350vc);
            return -1L;
        } catch (IOException e) {
            throw new tx3(e, 2001);
        } catch (SecurityException e2) {
            throw new tx3(e2, 2006);
        }
    }
}
