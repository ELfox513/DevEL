package com.esotericsoftware.kryonet;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryonet.FrameworkMessage;
import com.esotericsoftware.minlog.Log;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.security.AccessControlException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class Client extends Connection implements EndPoint {

    /* renamed from: A */
    public volatile boolean f7458A;

    /* renamed from: B */
    public volatile boolean f7459B;

    /* renamed from: C */
    public Object f7460C;

    /* renamed from: D */
    public Object f7461D;

    /* renamed from: E */
    public volatile boolean f7462E;

    /* renamed from: F */
    public final Object f7463F;

    /* renamed from: G */
    public Thread f7464G;

    /* renamed from: H */
    public int f7465H;

    /* renamed from: I */
    public InetAddress f7466I;

    /* renamed from: J */
    public int f7467J;

    /* renamed from: K */
    public int f7468K;

    /* renamed from: L */
    public boolean f7469L;

    /* renamed from: M */
    public ClientDiscoveryHandler f7470M;

    /* renamed from: x */
    public final Serialization f7471x;

    /* renamed from: y */
    public Selector f7472y;

    /* renamed from: z */
    public int f7473z;

    static {
        try {
            System.setProperty("java.net.preferIPv6Addresses", "false");
        } catch (AccessControlException unused) {
        }
    }

    public Client() {
        this(8192, 2048);
    }

    public void connect(int i, String str, int i2) {
        connect(i, InetAddress.getByName(str), i2, -1);
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public Kryo getKryo() {
        return ((KryoSerialization) this.f7471x).getKryo();
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public Serialization getSerialization() {
        return this.f7471x;
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public Thread getUpdateThread() {
        return this.f7464G;
    }

    public void reconnect() {
        reconnect(this.f7465H);
    }

    public void setDiscoveryHandler(ClientDiscoveryHandler clientDiscoveryHandler) {
        this.f7470M = clientDiscoveryHandler;
    }

    public Client(int i, int i2) {
        this(i, i2, new KryoSerialization());
    }

    public void connect(int i, String str, int i2, int i3) {
        connect(i, InetAddress.getByName(str), i2, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006a, code lost:
        if (r2 != null) goto L19;
     */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x006e: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:30:0x006e */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.net.InetAddress discoverHost(int r5, int r6) {
        /*
            r4 = this;
            java.lang.String r0 = "kryonet"
            r1 = 0
            java.net.DatagramSocket r2 = new java.net.DatagramSocket     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            r2.<init>()     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            r4.m23153g(r5, r2)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            r2.setSoTimeout(r6)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            com.esotericsoftware.kryonet.ClientDiscoveryHandler r5 = r4.f7470M     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            java.net.DatagramPacket r5 = r5.onRequestNewDatagramPacket()     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            r2.receive(r5)     // Catch: java.net.SocketTimeoutException -> L49 java.io.IOException -> L5b java.lang.Throwable -> L6d
            boolean r6 = com.esotericsoftware.minlog.Log.INFO     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            if (r6 == 0) goto L33
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            r6.<init>()     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            java.lang.String r3 = "Discovered server: "
            r6.append(r3)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            java.net.InetAddress r3 = r5.getAddress()     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            r6.append(r3)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            java.lang.String r6 = r6.toString()     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            com.esotericsoftware.minlog.Log.info(r0, r6)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
        L33:
            com.esotericsoftware.kryonet.ClientDiscoveryHandler r6 = r4.f7470M     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            com.esotericsoftware.kryo.Kryo r3 = r4.getKryo()     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            r6.onDiscoveredHost(r5, r3)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            java.net.InetAddress r5 = r5.getAddress()     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            r2.close()
            com.esotericsoftware.kryonet.ClientDiscoveryHandler r6 = r4.f7470M
            r6.onFinally()
            return r5
        L49:
            boolean r5 = com.esotericsoftware.minlog.Log.INFO     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
            if (r5 == 0) goto L52
            java.lang.String r5 = "Host discovery timed out."
            com.esotericsoftware.minlog.Log.info(r0, r5)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L6d
        L52:
            r2.close()
        L55:
            com.esotericsoftware.kryonet.ClientDiscoveryHandler r5 = r4.f7470M
            r5.onFinally()
            return r1
        L5b:
            r5 = move-exception
            goto L61
        L5d:
            r5 = move-exception
            goto L6f
        L5f:
            r5 = move-exception
            r2 = r1
        L61:
            boolean r6 = com.esotericsoftware.minlog.Log.ERROR     // Catch: java.lang.Throwable -> L6d
            if (r6 == 0) goto L6a
            java.lang.String r6 = "Host discovery failed."
            com.esotericsoftware.minlog.Log.error(r0, r6, r5)     // Catch: java.lang.Throwable -> L6d
        L6a:
            if (r2 == 0) goto L55
            goto L52
        L6d:
            r5 = move-exception
            r1 = r2
        L6f:
            if (r1 == 0) goto L74
            r1.close()
        L74:
            com.esotericsoftware.kryonet.ClientDiscoveryHandler r6 = r4.f7470M
            r6.onFinally()
            goto L7b
        L7a:
            throw r5
        L7b:
            goto L7a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryonet.Client.discoverHost(int, int):java.net.InetAddress");
    }

    public List<InetAddress> discoverHosts(int i, int i2) {
        DatagramSocket datagramSocket;
        ArrayList arrayList = new ArrayList();
        DatagramSocket datagramSocket2 = null;
        try {
            try {
                datagramSocket = new DatagramSocket();
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            m23153g(i, datagramSocket);
            datagramSocket.setSoTimeout(i2);
            while (true) {
                DatagramPacket onRequestNewDatagramPacket = this.f7470M.onRequestNewDatagramPacket();
                try {
                    datagramSocket.receive(onRequestNewDatagramPacket);
                    if (Log.INFO) {
                        Log.info("kryonet", "Discovered server: " + onRequestNewDatagramPacket.getAddress());
                    }
                    this.f7470M.onDiscoveredHost(onRequestNewDatagramPacket, getKryo());
                    arrayList.add(onRequestNewDatagramPacket.getAddress());
                } catch (SocketTimeoutException unused) {
                    if (Log.INFO) {
                        Log.info("kryonet", "Host discovery timed out.");
                    }
                    datagramSocket.close();
                    this.f7470M.onFinally();
                    return arrayList;
                }
            }
        } catch (IOException e2) {
            e = e2;
            datagramSocket2 = datagramSocket;
            if (Log.ERROR) {
                Log.error("kryonet", "Host discovery failed.", e);
            }
            if (datagramSocket2 != null) {
                datagramSocket2.close();
            }
            this.f7470M.onFinally();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            datagramSocket2 = datagramSocket;
            if (datagramSocket2 != null) {
                datagramSocket2.close();
            }
            this.f7470M.onFinally();
            throw th;
        }
    }

    /* renamed from: g */
    public final void m23153g(int i, DatagramSocket datagramSocket) {
        ByteBuffer allocate = ByteBuffer.allocate(64);
        this.f7471x.write(null, allocate, new FrameworkMessage.DiscoverHost());
        allocate.flip();
        int limit = allocate.limit();
        byte[] bArr = new byte[limit];
        allocate.get(bArr);
        Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
        while (it.hasNext()) {
            Iterator it2 = Collections.list(((NetworkInterface) it.next()).getInetAddresses()).iterator();
            while (it2.hasNext()) {
                byte[] address = ((InetAddress) it2.next()).getAddress();
                address[3] = -1;
                try {
                    datagramSocket.send(new DatagramPacket(bArr, limit, InetAddress.getByAddress(address), i));
                } catch (Exception unused) {
                }
                address[2] = -1;
                try {
                    datagramSocket.send(new DatagramPacket(bArr, limit, InetAddress.getByAddress(address), i));
                } catch (Exception unused2) {
                }
            }
        }
        if (Log.DEBUG) {
            Log.debug("kryonet", "Broadcasted host discovery on port: " + i);
        }
    }

    /* renamed from: h */
    public void m23152h() {
        if (!this.f7485w) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f7477k.needsKeepAlive(currentTimeMillis)) {
            sendTCP(FrameworkMessage.keepAlive);
        }
        if (this.f7478p != null && this.f7459B && this.f7478p.needsKeepAlive(currentTimeMillis)) {
            sendUDP(FrameworkMessage.keepAlive);
        }
    }

    public void reconnect(int i) {
        InetAddress inetAddress = this.f7466I;
        if (inetAddress != null) {
            connect(i, inetAddress, this.f7467J, this.f7468K);
            return;
        }
        throw new IllegalStateException("This client has never been connected.");
    }

    @Override // com.esotericsoftware.kryonet.EndPoint, java.lang.Runnable
    public void run() {
        if (Log.TRACE) {
            Log.trace("kryonet", "Client thread started.");
        }
        this.f7462E = false;
        while (!this.f7462E) {
            try {
                update(250);
            } catch (KryoNetException e) {
                if (Log.ERROR) {
                    if (this.f7485w) {
                        Log.error("kryonet", "Error updating connection: " + this, e);
                    } else {
                        Log.error("kryonet", "Error updating connection.", e);
                    }
                }
                close();
                throw e;
            } catch (IOException e2) {
                if (Log.TRACE) {
                    if (this.f7485w) {
                        Log.trace("kryonet", "Unable to update connection: " + this, e2);
                    } else {
                        Log.trace("kryonet", "Unable to update connection.", e2);
                    }
                } else if (Log.DEBUG) {
                    if (this.f7485w) {
                        Log.debug("kryonet", this + " update: " + e2.getMessage());
                    } else {
                        Log.debug("kryonet", "Unable to update connection: " + e2.getMessage());
                    }
                }
                close();
            }
        }
        if (Log.TRACE) {
            Log.trace("kryonet", "Client thread stopped.");
        }
    }

    public void setKeepAliveUDP(int i) {
        UdpConnection udpConnection = this.f7478p;
        if (udpConnection != null) {
            udpConnection.f7547c = i;
            return;
        }
        throw new IllegalStateException("Not connected via UDP.");
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void start() {
        if (this.f7464G != null) {
            this.f7462E = true;
            try {
                this.f7464G.join(5000L);
            } catch (InterruptedException unused) {
            }
        }
        Thread thread = new Thread(this, "Client");
        this.f7464G = thread;
        thread.setDaemon(true);
        this.f7464G.start();
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void stop() {
        if (this.f7462E) {
            return;
        }
        close();
        if (Log.TRACE) {
            Log.trace("kryonet", "Client thread stopping.");
        }
        this.f7462E = true;
        this.f7472y.wakeup();
    }

    public Client(int i, int i2, Serialization serialization) {
        this.f7460C = new Object();
        this.f7461D = new Object();
        this.f7463F = new Object();
        this.f7476d = this;
        this.f7471x = serialization;
        this.f7470M = ClientDiscoveryHandler.DEFAULT;
        m23151a(serialization, i, i2);
        try {
            this.f7472y = Selector.open();
        } catch (IOException e) {
            throw new RuntimeException("Error opening selector.", e);
        }
    }

    @Override // com.esotericsoftware.kryonet.Connection, com.esotericsoftware.kryonet.EndPoint
    public void addListener(Listener listener) {
        super.addListener(listener);
        if (Log.TRACE) {
            Log.trace("kryonet", "Client listener added.");
        }
    }

    @Override // com.esotericsoftware.kryonet.Connection, com.esotericsoftware.kryonet.EndPoint
    public void close() {
        super.close();
        synchronized (this.f7463F) {
            if (!this.f7469L) {
                this.f7469L = true;
                this.f7472y.wakeup();
                try {
                    this.f7472y.selectNow();
                } catch (IOException unused) {
                }
            }
        }
    }

    public void connect(int i, InetAddress inetAddress, int i2) {
        connect(i, inetAddress, i2, -1);
    }

    public void dispose() {
        close();
        this.f7472y.close();
    }

    @Override // com.esotericsoftware.kryonet.Connection, com.esotericsoftware.kryonet.EndPoint
    public void removeListener(Listener listener) {
        super.removeListener(listener);
        if (Log.TRACE) {
            Log.trace("kryonet", "Client listener removed.");
        }
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void update(int i) {
        int selectNow;
        int readyOps;
        Object readObject;
        this.f7464G = Thread.currentThread();
        synchronized (this.f7463F) {
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (i > 0) {
            selectNow = this.f7472y.select(i);
        } else {
            selectNow = this.f7472y.selectNow();
        }
        if (selectNow == 0) {
            int i2 = this.f7473z + 1;
            this.f7473z = i2;
            if (i2 == 100) {
                this.f7473z = 0;
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 < 25) {
                    try {
                        Thread.sleep(25 - currentTimeMillis2);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        } else {
            this.f7473z = 0;
            this.f7469L = false;
            Set<SelectionKey> selectedKeys = this.f7472y.selectedKeys();
            synchronized (selectedKeys) {
                Iterator<SelectionKey> it = selectedKeys.iterator();
                while (it.hasNext()) {
                    m23152h();
                    SelectionKey next = it.next();
                    it.remove();
                    try {
                        readyOps = next.readyOps();
                    } catch (CancelledKeyException unused2) {
                    }
                    if ((readyOps & 1) == 1) {
                        if (next.attachment() == this.f7477k) {
                            while (true) {
                                Object readObject2 = this.f7477k.readObject(this);
                                if (readObject2 == null) {
                                    break;
                                } else if (!this.f7458A) {
                                    if (readObject2 instanceof FrameworkMessage.RegisterTCP) {
                                        this.f7474a = ((FrameworkMessage.RegisterTCP) readObject2).connectionID;
                                        synchronized (this.f7460C) {
                                            this.f7458A = true;
                                            this.f7460C.notifyAll();
                                            if (Log.TRACE) {
                                                Log.trace("kryonet", this + " received TCP: RegisterTCP");
                                            }
                                            if (this.f7478p == null) {
                                                m23146f(true);
                                            }
                                        }
                                        if (this.f7478p == null) {
                                            m23150b();
                                        }
                                    } else {
                                        continue;
                                    }
                                } else if (this.f7478p != null && !this.f7459B) {
                                    if (readObject2 instanceof FrameworkMessage.RegisterUDP) {
                                        synchronized (this.f7461D) {
                                            this.f7459B = true;
                                            this.f7461D.notifyAll();
                                            if (Log.TRACE) {
                                                Log.trace("kryonet", this + " received UDP: RegisterUDP");
                                            }
                                            if (Log.DEBUG) {
                                                Log.debug("kryonet", "Port " + this.f7478p.f7546b.socket().getLocalPort() + "/UDP connected to: " + this.f7478p.f7545a);
                                            }
                                            m23146f(true);
                                        }
                                        m23150b();
                                    } else {
                                        continue;
                                    }
                                } else if (this.f7485w) {
                                    if (Log.DEBUG) {
                                        String simpleName = readObject2.getClass().getSimpleName();
                                        if (!(readObject2 instanceof FrameworkMessage)) {
                                            Log.debug("kryonet", this + " received TCP: " + simpleName);
                                        } else if (Log.TRACE) {
                                            Log.trace("kryonet", this + " received TCP: " + simpleName);
                                        }
                                    }
                                    m23147e(readObject2);
                                }
                            }
                        } else if (this.f7478p.readFromAddress() != null && (readObject = this.f7478p.readObject(this)) != null) {
                            if (Log.DEBUG) {
                                String simpleName2 = readObject.getClass().getSimpleName();
                                Log.debug("kryonet", this + " received UDP: " + simpleName2);
                            }
                            m23147e(readObject);
                        }
                    }
                    if ((readyOps & 4) == 4) {
                        this.f7477k.writeOperation();
                    }
                }
            }
        }
        if (this.f7485w) {
            if (this.f7477k.isTimedOut(System.currentTimeMillis())) {
                if (Log.DEBUG) {
                    Log.debug("kryonet", this + " timed out.");
                }
                close();
            } else {
                m23152h();
            }
            if (isIdle()) {
                m23148d();
            }
        }
    }

    public void connect(int i, InetAddress inetAddress, int i2, int i3) {
        long currentTimeMillis;
        if (inetAddress != null) {
            if (Thread.currentThread() != getUpdateThread()) {
                this.f7465H = i;
                this.f7466I = inetAddress;
                this.f7467J = i2;
                this.f7468K = i3;
                close();
                if (Log.INFO) {
                    if (i3 != -1) {
                        Log.info("Connecting: " + inetAddress + ":" + i2 + "/" + i3);
                    } else {
                        Log.info("Connecting: " + inetAddress + ":" + i2);
                    }
                }
                this.f7474a = -1;
                if (i3 != -1) {
                    try {
                        this.f7478p = new UdpConnection(this.f7471x, this.f7477k.f7534c.capacity());
                    } catch (IOException e) {
                        close();
                        throw e;
                    }
                }
                synchronized (this.f7463F) {
                    this.f7458A = false;
                    this.f7472y.wakeup();
                    currentTimeMillis = System.currentTimeMillis() + i;
                    this.f7477k.connect(this.f7472y, new InetSocketAddress(inetAddress, i2), 5000);
                }
                synchronized (this.f7460C) {
                    while (!this.f7458A && System.currentTimeMillis() < currentTimeMillis) {
                        try {
                            this.f7460C.wait(100L);
                        } catch (InterruptedException unused) {
                        }
                    }
                    if (!this.f7458A) {
                        throw new SocketTimeoutException("Connected, but timed out during TCP registration.\nNote: Client#update must be called in a separate thread during connect.");
                    }
                }
                if (i3 != -1) {
                    InetSocketAddress inetSocketAddress = new InetSocketAddress(inetAddress, i3);
                    synchronized (this.f7463F) {
                        this.f7459B = false;
                        this.f7472y.wakeup();
                        this.f7478p.connect(this.f7472y, inetSocketAddress);
                    }
                    synchronized (this.f7461D) {
                        while (!this.f7459B && System.currentTimeMillis() < currentTimeMillis) {
                            FrameworkMessage.RegisterUDP registerUDP = new FrameworkMessage.RegisterUDP();
                            registerUDP.connectionID = this.f7474a;
                            this.f7478p.send(this, registerUDP, inetSocketAddress);
                            try {
                                this.f7461D.wait(100L);
                            } catch (InterruptedException unused2) {
                            }
                        }
                        if (!this.f7459B) {
                            throw new SocketTimeoutException("Connected, but timed out during UDP registration: " + inetAddress + ":" + i3);
                        }
                    }
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot connect on the connection's update thread.");
        }
        throw new IllegalArgumentException("host cannot be null.");
    }
}
