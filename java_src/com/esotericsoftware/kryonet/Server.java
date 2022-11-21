package com.esotericsoftware.kryonet;

import com.badlogic.gdx.net.HttpResponseHeader;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.util.IntMap;
import com.esotericsoftware.kryonet.FrameworkMessage;
import com.esotericsoftware.minlog.Log;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public class Server implements EndPoint {

    /* renamed from: A */
    public ServerDiscoveryHandler f7513A;

    /* renamed from: B */
    public Listener f7514B;

    /* renamed from: a */
    public final Serialization f7515a;

    /* renamed from: b */
    public final int f7516b;

    /* renamed from: d */
    public final int f7517d;

    /* renamed from: k */
    public final Selector f7518k;

    /* renamed from: p */
    public int f7519p;

    /* renamed from: q */
    public ServerSocketChannel f7520q;

    /* renamed from: r */
    public UdpConnection f7521r;

    /* renamed from: s */
    public Connection[] f7522s;

    /* renamed from: t */
    public IntMap<Connection> f7523t;

    /* renamed from: u */
    public Listener[] f7524u;

    /* renamed from: v */
    public Object f7525v;

    /* renamed from: w */
    public int f7526w;

    /* renamed from: x */
    public volatile boolean f7527x;

    /* renamed from: y */
    public Object f7528y;

    /* renamed from: z */
    public Thread f7529z;

    public Server() {
        this(16384, 2048);
    }

    public void bind(int i) {
        bind(new InetSocketAddress(i), (InetSocketAddress) null);
    }

    public Connection[] getConnections() {
        return this.f7522s;
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public Kryo getKryo() {
        return ((KryoSerialization) this.f7515a).getKryo();
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public Serialization getSerialization() {
        return this.f7515a;
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public Thread getUpdateThread() {
        return this.f7529z;
    }

    public Connection newConnection() {
        return new Connection();
    }

    public void setDiscoveryHandler(ServerDiscoveryHandler serverDiscoveryHandler) {
        this.f7513A = serverDiscoveryHandler;
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void start() {
        new Thread(this, HttpResponseHeader.Server).start();
    }

    public Server(int i, int i2) {
        this(i, i2, new KryoSerialization());
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void addListener(Listener listener) {
        if (listener != null) {
            synchronized (this.f7525v) {
                Listener[] listenerArr = this.f7524u;
                int length = listenerArr.length;
                for (Listener listener2 : listenerArr) {
                    if (listener == listener2) {
                        return;
                    }
                }
                Listener[] listenerArr2 = new Listener[length + 1];
                listenerArr2[0] = listener;
                System.arraycopy(listenerArr, 0, listenerArr2, 1, length);
                this.f7524u = listenerArr2;
                if (Log.TRACE) {
                    Log.trace("kryonet", "Server listener added: " + listener.getClass().getName());
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }

    /* renamed from: b */
    public final void m23144b(Connection connection) {
        Connection[] connectionArr = this.f7522s;
        Connection[] connectionArr2 = new Connection[connectionArr.length + 1];
        connectionArr2[0] = connection;
        System.arraycopy(connectionArr, 0, connectionArr2, 1, connectionArr.length);
        this.f7522s = connectionArr2;
    }

    public void bind(int i, int i2) {
        bind(new InetSocketAddress(i), new InetSocketAddress(i2));
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void close() {
        Connection[] connectionArr = this.f7522s;
        if (Log.INFO && connectionArr.length > 0) {
            Log.info("kryonet", "Closing server connections...");
        }
        for (Connection connection : connectionArr) {
            connection.close();
        }
        ServerSocketChannel serverSocketChannel = this.f7520q;
        if (serverSocketChannel != null) {
            try {
                serverSocketChannel.close();
                if (Log.INFO) {
                    Log.info("kryonet", "Server closed.");
                }
            } catch (IOException e) {
                if (Log.DEBUG) {
                    Log.debug("kryonet", "Unable to close server.", e);
                }
            }
            this.f7520q = null;
        }
        UdpConnection udpConnection = this.f7521r;
        if (udpConnection != null) {
            udpConnection.close();
            this.f7521r = null;
        }
        synchronized (this.f7528y) {
            this.f7518k.wakeup();
            try {
                this.f7518k.selectNow();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: d */
    public void m23142d(Connection connection) {
        ArrayList arrayList = new ArrayList(Arrays.asList(this.f7522s));
        arrayList.remove(connection);
        this.f7522s = (Connection[]) arrayList.toArray(new Connection[arrayList.size()]);
        this.f7523t.remove(connection.f7474a);
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void removeListener(Listener listener) {
        if (listener != null) {
            synchronized (this.f7525v) {
                Listener[] listenerArr = this.f7524u;
                int length = listenerArr.length - 1;
                Listener[] listenerArr2 = new Listener[length];
                int i = 0;
                for (Listener listener2 : listenerArr) {
                    if (listener != listener2) {
                        if (i == length) {
                            return;
                        }
                        listenerArr2[i] = listener2;
                        i++;
                    }
                }
                this.f7524u = listenerArr2;
                if (Log.TRACE) {
                    Log.trace("kryonet", "Server listener removed: " + listener.getClass().getName());
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }

    @Override // com.esotericsoftware.kryonet.EndPoint, java.lang.Runnable
    public void run() {
        if (Log.TRACE) {
            Log.trace("kryonet", "Server thread started.");
        }
        this.f7527x = false;
        while (!this.f7527x) {
            try {
                update(250);
            } catch (IOException e) {
                if (Log.ERROR) {
                    Log.error("kryonet", "Error updating server connections.", e);
                }
                close();
            }
        }
        if (Log.TRACE) {
            Log.trace("kryonet", "Server thread stopped.");
        }
    }

    public void sendToAllExceptTCP(int i, Object obj) {
        Connection[] connectionArr;
        for (Connection connection : this.f7522s) {
            if (connection.f7474a != i) {
                connection.sendTCP(obj);
            }
        }
    }

    public void sendToAllExceptUDP(int i, Object obj) {
        Connection[] connectionArr;
        for (Connection connection : this.f7522s) {
            if (connection.f7474a != i) {
                connection.sendUDP(obj);
            }
        }
    }

    public void sendToAllTCP(Object obj) {
        for (Connection connection : this.f7522s) {
            connection.sendTCP(obj);
        }
    }

    public void sendToAllUDP(Object obj) {
        for (Connection connection : this.f7522s) {
            connection.sendUDP(obj);
        }
    }

    public void sendToTCP(int i, Object obj) {
        Connection[] connectionArr;
        for (Connection connection : this.f7522s) {
            if (connection.f7474a == i) {
                connection.sendTCP(obj);
                return;
            }
        }
    }

    public void sendToUDP(int i, Object obj) {
        Connection[] connectionArr;
        for (Connection connection : this.f7522s) {
            if (connection.f7474a == i) {
                connection.sendUDP(obj);
                return;
            }
        }
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void stop() {
        if (this.f7527x) {
            return;
        }
        close();
        if (Log.TRACE) {
            Log.trace("kryonet", "Server thread stopping.");
        }
        this.f7527x = true;
    }

    public Server(int i, int i2, Serialization serialization) {
        this.f7522s = new Connection[0];
        this.f7523t = new IntMap<>();
        this.f7524u = new Listener[0];
        this.f7525v = new Object();
        this.f7526w = 1;
        this.f7528y = new Object();
        this.f7514B = new Listener() { // from class: com.esotericsoftware.kryonet.Server.1
            @Override // com.esotericsoftware.kryonet.Listener
            public void connected(Connection connection) {
                for (Listener listener : Server.this.f7524u) {
                    listener.connected(connection);
                }
            }

            @Override // com.esotericsoftware.kryonet.Listener
            public void disconnected(Connection connection) {
                Server.this.m23142d(connection);
                for (Listener listener : Server.this.f7524u) {
                    listener.disconnected(connection);
                }
            }

            @Override // com.esotericsoftware.kryonet.Listener
            public void idle(Connection connection) {
                for (Listener listener : Server.this.f7524u) {
                    listener.idle(connection);
                }
            }

            @Override // com.esotericsoftware.kryonet.Listener
            public void received(Connection connection, Object obj) {
                for (Listener listener : Server.this.f7524u) {
                    listener.received(connection, obj);
                }
            }
        };
        this.f7516b = i;
        this.f7517d = i2;
        this.f7515a = serialization;
        this.f7513A = ServerDiscoveryHandler.DEFAULT;
        try {
            this.f7518k = Selector.open();
        } catch (IOException e) {
            throw new RuntimeException("Error opening selector.", e);
        }
    }

    /* renamed from: a */
    public final void m23145a(SocketChannel socketChannel) {
        Connection newConnection = newConnection();
        newConnection.m23151a(this.f7515a, this.f7516b, this.f7517d);
        newConnection.f7476d = this;
        UdpConnection udpConnection = this.f7521r;
        if (udpConnection != null) {
            newConnection.f7478p = udpConnection;
        }
        try {
            newConnection.f7477k.accept(this.f7518k, socketChannel).attach(newConnection);
            int i = this.f7526w;
            int i2 = i + 1;
            this.f7526w = i2;
            if (i2 == -1) {
                this.f7526w = 1;
            }
            newConnection.f7474a = i;
            newConnection.m23146f(true);
            newConnection.addListener(this.f7514B);
            if (udpConnection == null) {
                m23144b(newConnection);
            } else {
                this.f7523t.put(i, newConnection);
            }
            FrameworkMessage.RegisterTCP registerTCP = new FrameworkMessage.RegisterTCP();
            registerTCP.connectionID = i;
            newConnection.sendTCP(registerTCP);
            if (udpConnection == null) {
                newConnection.m23150b();
            }
        } catch (IOException e) {
            newConnection.close();
            if (Log.DEBUG) {
                Log.debug("kryonet", "Unable to accept TCP connection.", e);
            }
        }
    }

    public void bind(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2) {
        close();
        synchronized (this.f7528y) {
            this.f7518k.wakeup();
            try {
                ServerSocketChannel openServerSocketChannel = this.f7518k.provider().openServerSocketChannel();
                this.f7520q = openServerSocketChannel;
                openServerSocketChannel.socket().bind(inetSocketAddress);
                this.f7520q.configureBlocking(false);
                this.f7520q.register(this.f7518k, 16);
                if (Log.DEBUG) {
                    Log.debug("kryonet", "Accepting connections on port: " + inetSocketAddress + "/TCP");
                }
                if (inetSocketAddress2 != null) {
                    UdpConnection udpConnection = new UdpConnection(this.f7515a, this.f7517d);
                    this.f7521r = udpConnection;
                    udpConnection.bind(this.f7518k, inetSocketAddress2);
                    if (Log.DEBUG) {
                        Log.debug("kryonet", "Accepting connections on port: " + inetSocketAddress2 + "/UDP");
                    }
                }
            } catch (IOException e) {
                close();
                throw e;
            }
        }
        if (Log.INFO) {
            Log.info("kryonet", "Server opened.");
        }
    }

    /* renamed from: c */
    public final void m23143c() {
        Connection[] connectionArr;
        long currentTimeMillis = System.currentTimeMillis();
        for (Connection connection : this.f7522s) {
            if (connection.f7477k.needsKeepAlive(currentTimeMillis)) {
                connection.sendTCP(FrameworkMessage.keepAlive);
            }
        }
    }

    public void dispose() {
        close();
        this.f7518k.close();
    }

    @Override // com.esotericsoftware.kryonet.EndPoint
    public void update(int i) {
        int selectNow;
        Connection[] connectionArr;
        String simpleName;
        Connection[] connectionArr2;
        this.f7529z = Thread.currentThread();
        synchronized (this.f7528y) {
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (i > 0) {
            selectNow = this.f7518k.select(i);
        } else {
            selectNow = this.f7518k.selectNow();
        }
        if (selectNow == 0) {
            int i2 = this.f7519p + 1;
            this.f7519p = i2;
            if (i2 == 100) {
                this.f7519p = 0;
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 < 25) {
                    try {
                        Thread.sleep(25 - currentTimeMillis2);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        } else {
            this.f7519p = 0;
            Set<SelectionKey> selectedKeys = this.f7518k.selectedKeys();
            synchronized (selectedKeys) {
                UdpConnection udpConnection = this.f7521r;
                Iterator<SelectionKey> it = selectedKeys.iterator();
                while (it.hasNext()) {
                    m23143c();
                    SelectionKey next = it.next();
                    it.remove();
                    Connection connection = (Connection) next.attachment();
                    try {
                        int readyOps = next.readyOps();
                        if (connection != null) {
                            if (udpConnection != null && connection.f7479q == null) {
                                connection.close();
                            } else {
                                if ((readyOps & 1) == 1) {
                                    while (true) {
                                        try {
                                            Object readObject = connection.f7477k.readObject(connection);
                                            if (readObject == null) {
                                                break;
                                            }
                                            if (Log.DEBUG) {
                                                String simpleName2 = readObject.getClass().getSimpleName();
                                                if (!(readObject instanceof FrameworkMessage)) {
                                                    Log.debug("kryonet", connection + " received TCP: " + simpleName2);
                                                } else if (Log.TRACE) {
                                                    Log.trace("kryonet", connection + " received TCP: " + simpleName2);
                                                }
                                            }
                                            connection.m23147e(readObject);
                                        } catch (KryoNetException e) {
                                            if (Log.ERROR) {
                                                Log.error("kryonet", "Error reading TCP from connection: " + connection, e);
                                            }
                                            connection.close();
                                        } catch (IOException e2) {
                                            if (Log.TRACE) {
                                                Log.trace("kryonet", "Unable to read TCP from: " + connection, e2);
                                            } else if (Log.DEBUG) {
                                                Log.debug("kryonet", connection + " update: " + e2.getMessage());
                                            }
                                            connection.close();
                                        }
                                    }
                                }
                                if ((readyOps & 4) == 4) {
                                    try {
                                        connection.f7477k.writeOperation();
                                    } catch (IOException e3) {
                                        if (Log.TRACE) {
                                            Log.trace("kryonet", "Unable to write TCP to connection: " + connection, e3);
                                        } else if (Log.DEBUG) {
                                            Log.debug("kryonet", connection + " update: " + e3.getMessage());
                                        }
                                        connection.close();
                                    }
                                }
                            }
                        } else if ((readyOps & 16) == 16) {
                            ServerSocketChannel serverSocketChannel = this.f7520q;
                            if (serverSocketChannel != null) {
                                try {
                                    SocketChannel accept = serverSocketChannel.accept();
                                    if (accept != null) {
                                        m23145a(accept);
                                    }
                                } catch (IOException e4) {
                                    if (Log.DEBUG) {
                                        Log.debug("kryonet", "Unable to accept new connection.", e4);
                                    }
                                }
                            }
                        } else if (udpConnection == null) {
                            next.channel().close();
                        } else {
                            try {
                                InetSocketAddress readFromAddress = udpConnection.readFromAddress();
                                if (readFromAddress != null) {
                                    for (Connection connection2 : this.f7522s) {
                                        if (readFromAddress.equals(connection2.f7479q)) {
                                            connection = connection2;
                                            break;
                                        }
                                    }
                                    try {
                                        Object readObject2 = udpConnection.readObject(connection);
                                        if (readObject2 instanceof FrameworkMessage) {
                                            if (readObject2 instanceof FrameworkMessage.RegisterUDP) {
                                                int i3 = ((FrameworkMessage.RegisterUDP) readObject2).connectionID;
                                                Connection remove = this.f7523t.remove(i3);
                                                if (remove != null) {
                                                    if (remove.f7479q == null) {
                                                        remove.f7479q = readFromAddress;
                                                        m23144b(remove);
                                                        remove.sendTCP(new FrameworkMessage.RegisterUDP());
                                                        if (Log.DEBUG) {
                                                            Log.debug("kryonet", "Port " + udpConnection.f7546b.socket().getLocalPort() + "/UDP connected to: " + readFromAddress);
                                                        }
                                                        remove.m23150b();
                                                    }
                                                } else if (Log.DEBUG) {
                                                    Log.debug("kryonet", "Ignoring incoming RegisterUDP with invalid connection ID: " + i3);
                                                }
                                            } else if (readObject2 instanceof FrameworkMessage.DiscoverHost) {
                                                try {
                                                    boolean onDiscoverHost = this.f7513A.onDiscoverHost(udpConnection, readFromAddress, this.f7515a);
                                                    if (Log.DEBUG && onDiscoverHost) {
                                                        Log.debug("kryonet", "Responded to host discovery from: " + readFromAddress);
                                                    }
                                                } catch (IOException e5) {
                                                    if (Log.WARN) {
                                                        Log.warn("kryonet", "Error replying to host discovery from: " + readFromAddress, e5);
                                                    }
                                                }
                                            }
                                        }
                                        if (connection != null) {
                                            if (Log.DEBUG) {
                                                if (readObject2 == null) {
                                                    simpleName = "null";
                                                } else {
                                                    simpleName = readObject2.getClass().getSimpleName();
                                                }
                                                if (readObject2 instanceof FrameworkMessage) {
                                                    if (Log.TRACE) {
                                                        Log.trace("kryonet", connection + " received UDP: " + simpleName);
                                                    }
                                                } else {
                                                    Log.debug("kryonet", connection + " received UDP: " + simpleName);
                                                }
                                            }
                                            connection.m23147e(readObject2);
                                        } else if (Log.DEBUG) {
                                            Log.debug("kryonet", "Ignoring UDP from unregistered address: " + readFromAddress);
                                        }
                                    } catch (KryoNetException e6) {
                                        if (Log.WARN) {
                                            if (connection != null) {
                                                if (Log.ERROR) {
                                                    Log.error("kryonet", "Error reading UDP from connection: " + connection, e6);
                                                }
                                            } else {
                                                Log.warn("kryonet", "Error reading UDP from unregistered address: " + readFromAddress, e6);
                                            }
                                        }
                                    }
                                }
                            } catch (IOException e7) {
                                if (Log.WARN) {
                                    Log.warn("kryonet", "Error reading UDP data.", e7);
                                }
                            }
                        }
                    } catch (CancelledKeyException unused2) {
                        if (connection != null) {
                            connection.close();
                        } else {
                            next.channel().close();
                        }
                    }
                }
            }
        }
        long currentTimeMillis3 = System.currentTimeMillis();
        for (Connection connection3 : this.f7522s) {
            if (connection3.f7477k.isTimedOut(currentTimeMillis3)) {
                if (Log.DEBUG) {
                    Log.debug("kryonet", connection3 + " timed out.");
                }
                connection3.close();
            } else if (connection3.f7477k.needsKeepAlive(currentTimeMillis3)) {
                connection3.sendTCP(FrameworkMessage.keepAlive);
            }
            if (connection3.isIdle()) {
                connection3.m23148d();
            }
        }
    }
}
