package com.esotericsoftware.kryonet;

import com.esotericsoftware.kryonet.FrameworkMessage;
import com.esotericsoftware.minlog.Log;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
/* loaded from: classes.dex */
public class Connection {

    /* renamed from: b */
    public String f7475b;

    /* renamed from: d */
    public EndPoint f7476d;

    /* renamed from: k */
    public TcpConnection f7477k;

    /* renamed from: p */
    public UdpConnection f7478p;

    /* renamed from: q */
    public InetSocketAddress f7479q;

    /* renamed from: t */
    public int f7482t;

    /* renamed from: u */
    public long f7483u;

    /* renamed from: v */
    public int f7484v;

    /* renamed from: w */
    public volatile boolean f7485w;

    /* renamed from: a */
    public int f7474a = -1;

    /* renamed from: r */
    public Listener[] f7480r = new Listener[0];

    /* renamed from: s */
    public Object f7481s = new Object();

    /* renamed from: a */
    public void m23151a(Serialization serialization, int i, int i2) {
        this.f7477k = new TcpConnection(serialization, i, i2);
    }

    public EndPoint getEndPoint() {
        return this.f7476d;
    }

    public int getID() {
        return this.f7474a;
    }

    public int getReturnTripTime() {
        return this.f7484v;
    }

    public int getTcpWriteBufferSize() {
        return this.f7477k.f7535d.position();
    }

    public boolean isConnected() {
        return this.f7485w;
    }

    public boolean isIdle() {
        return ((float) this.f7477k.f7535d.position()) / ((float) this.f7477k.f7535d.capacity()) < this.f7477k.f7538g;
    }

    public void setBufferPositionFix(boolean z) {
        this.f7477k.f7536e = z;
    }

    public void setIdleThreshold(float f) {
        this.f7477k.f7538g = f;
    }

    public void setKeepAliveTCP(int i) {
        this.f7477k.f7533b = i;
    }

    public void setName(String str) {
        this.f7475b = str;
    }

    public void setTimeout(int i) {
        this.f7477k.f7537f = i;
    }

    public void addListener(Listener listener) {
        if (listener != null) {
            synchronized (this.f7481s) {
                Listener[] listenerArr = this.f7480r;
                int length = listenerArr.length;
                for (Listener listener2 : listenerArr) {
                    if (listener == listener2) {
                        return;
                    }
                }
                Listener[] listenerArr2 = new Listener[length + 1];
                listenerArr2[0] = listener;
                System.arraycopy(listenerArr, 0, listenerArr2, 1, length);
                this.f7480r = listenerArr2;
                if (Log.TRACE) {
                    Log.trace("kryonet", "Connection listener added: " + listener.getClass().getName());
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }

    /* renamed from: b */
    public void m23150b() {
        SocketChannel socketChannel;
        Socket socket;
        InetSocketAddress inetSocketAddress;
        if (Log.INFO && (socketChannel = this.f7477k.f7532a) != null && (socket = socketChannel.socket()) != null && (inetSocketAddress = (InetSocketAddress) socket.getRemoteSocketAddress()) != null) {
            Log.info("kryonet", this + " connected: " + inetSocketAddress.getAddress());
        }
        for (Listener listener : this.f7480r) {
            listener.connected(this);
        }
    }

    /* renamed from: c */
    public void m23149c() {
        for (Listener listener : this.f7480r) {
            listener.disconnected(this);
        }
    }

    public void close() {
        boolean z = this.f7485w;
        this.f7485w = false;
        this.f7477k.close();
        UdpConnection udpConnection = this.f7478p;
        if (udpConnection != null && udpConnection.f7545a != null) {
            udpConnection.close();
        }
        if (z) {
            m23149c();
            if (Log.INFO) {
                Log.info("kryonet", this + " disconnected.");
            }
        }
        m23146f(false);
    }

    /* renamed from: d */
    public void m23148d() {
        for (Listener listener : this.f7480r) {
            listener.idle(this);
            if (!isIdle()) {
                return;
            }
        }
    }

    /* renamed from: e */
    public void m23147e(Object obj) {
        if (obj instanceof FrameworkMessage.Ping) {
            FrameworkMessage.Ping ping = (FrameworkMessage.Ping) obj;
            if (ping.isReply) {
                if (ping.f7486id == this.f7482t - 1) {
                    this.f7484v = (int) (System.currentTimeMillis() - this.f7483u);
                    if (Log.TRACE) {
                        Log.trace("kryonet", this + " return trip time: " + this.f7484v);
                    }
                }
            } else {
                ping.isReply = true;
                sendTCP(ping);
            }
        }
        for (Listener listener : this.f7480r) {
            listener.received(this, obj);
        }
    }

    /* renamed from: f */
    public void m23146f(boolean z) {
        this.f7485w = z;
        if (z && this.f7475b == null) {
            this.f7475b = "Connection " + this.f7474a;
        }
    }

    public InetSocketAddress getRemoteAddressTCP() {
        Socket socket;
        SocketChannel socketChannel = this.f7477k.f7532a;
        if (socketChannel != null && (socket = socketChannel.socket()) != null) {
            return (InetSocketAddress) socket.getRemoteSocketAddress();
        }
        return null;
    }

    public InetSocketAddress getRemoteAddressUDP() {
        InetSocketAddress inetSocketAddress = this.f7478p.f7545a;
        if (inetSocketAddress != null) {
            return inetSocketAddress;
        }
        return this.f7479q;
    }

    public void removeListener(Listener listener) {
        if (listener != null) {
            synchronized (this.f7481s) {
                Listener[] listenerArr = this.f7480r;
                int length = listenerArr.length;
                if (length == 0) {
                    return;
                }
                int i = length - 1;
                Listener[] listenerArr2 = new Listener[i];
                int i2 = 0;
                for (Listener listener2 : listenerArr) {
                    if (listener != listener2) {
                        if (i2 == i) {
                            return;
                        }
                        listenerArr2[i2] = listener2;
                        i2++;
                    }
                }
                this.f7480r = listenerArr2;
                if (Log.TRACE) {
                    Log.trace("kryonet", "Connection listener removed: " + listener.getClass().getName());
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }

    public int sendTCP(Object obj) {
        if (obj != null) {
            try {
                int send = this.f7477k.send(this, obj);
                if (send == 0) {
                    if (Log.TRACE) {
                        Log.trace("kryonet", this + " TCP had nothing to send.");
                    }
                } else if (Log.DEBUG) {
                    String simpleName = obj.getClass().getSimpleName();
                    if (!(obj instanceof FrameworkMessage)) {
                        Log.debug("kryonet", this + " sent TCP: " + simpleName + " (" + send + ")");
                    } else if (Log.TRACE) {
                        Log.trace("kryonet", this + " sent TCP: " + simpleName + " (" + send + ")");
                    }
                }
                return send;
            } catch (KryoNetException e) {
                if (Log.ERROR) {
                    Log.error("kryonet", "Unable to send TCP with connection: " + this, e);
                }
                close();
                return 0;
            } catch (IOException e2) {
                if (Log.DEBUG) {
                    Log.debug("kryonet", "Unable to send TCP with connection: " + this, e2);
                }
                close();
                return 0;
            }
        }
        throw new IllegalArgumentException("object cannot be null.");
    }

    public int sendUDP(Object obj) {
        UdpConnection udpConnection;
        if (obj != null) {
            InetSocketAddress inetSocketAddress = this.f7479q;
            if (inetSocketAddress == null && (udpConnection = this.f7478p) != null) {
                inetSocketAddress = udpConnection.f7545a;
            }
            if (inetSocketAddress == null && this.f7485w) {
                throw new IllegalStateException("Connection is not connected via UDP.");
            }
            try {
                if (inetSocketAddress != null) {
                    int send = this.f7478p.send(this, obj, inetSocketAddress);
                    if (send == 0) {
                        if (Log.TRACE) {
                            Log.trace("kryonet", this + " UDP had nothing to send.");
                        }
                    } else if (Log.DEBUG) {
                        if (send != -1) {
                            String simpleName = obj.getClass().getSimpleName();
                            if (!(obj instanceof FrameworkMessage)) {
                                Log.debug("kryonet", this + " sent UDP: " + simpleName + " (" + send + ")");
                            } else if (Log.TRACE) {
                                Log.trace("kryonet", this + " sent UDP: " + simpleName + " (" + send + ")");
                            }
                        } else {
                            Log.debug("kryonet", this + " was unable to send, UDP socket buffer full.");
                        }
                    }
                    return send;
                }
                throw new SocketException("Connection is closed.");
            } catch (KryoNetException e) {
                if (Log.ERROR) {
                    Log.error("kryonet", "Unable to send UDP with connection: " + this, e);
                }
                close();
                return 0;
            } catch (IOException e2) {
                if (Log.DEBUG) {
                    Log.debug("kryonet", "Unable to send UDP with connection: " + this, e2);
                }
                close();
                return 0;
            }
        }
        throw new IllegalArgumentException("object cannot be null.");
    }

    public String toString() {
        String str = this.f7475b;
        if (str != null) {
            return str;
        }
        return "Connection " + this.f7474a;
    }

    public void updateReturnTripTime() {
        FrameworkMessage.Ping ping = new FrameworkMessage.Ping();
        int i = this.f7482t;
        this.f7482t = i + 1;
        ping.f7486id = i;
        this.f7483u = System.currentTimeMillis();
        sendTCP(ping);
    }
}
