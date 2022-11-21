package com.esotericsoftware.kryonet;

import com.esotericsoftware.minlog.Log;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class UdpConnection {

    /* renamed from: a */
    public InetSocketAddress f7545a;

    /* renamed from: b */
    public DatagramChannel f7546b;

    /* renamed from: d */
    public final ByteBuffer f7548d;

    /* renamed from: e */
    public final ByteBuffer f7549e;

    /* renamed from: f */
    public final Serialization f7550f;

    /* renamed from: g */
    public SelectionKey f7551g;

    /* renamed from: i */
    public long f7553i;

    /* renamed from: c */
    public int f7547c = 19000;

    /* renamed from: h */
    public final Object f7552h = new Object();

    public void close() {
        this.f7545a = null;
        try {
            DatagramChannel datagramChannel = this.f7546b;
            if (datagramChannel != null) {
                datagramChannel.close();
                this.f7546b = null;
                SelectionKey selectionKey = this.f7551g;
                if (selectionKey != null) {
                    selectionKey.selector().wakeup();
                }
            }
        } catch (IOException e) {
            if (Log.DEBUG) {
                Log.debug("kryonet", "Unable to close UDP connection.", e);
            }
        }
    }

    public boolean needsKeepAlive(long j) {
        int i;
        return this.f7545a != null && (i = this.f7547c) > 0 && j - this.f7553i > ((long) i);
    }

    public InetSocketAddress readFromAddress() {
        DatagramChannel datagramChannel = this.f7546b;
        if (datagramChannel != null) {
            this.f7553i = System.currentTimeMillis();
            return (InetSocketAddress) datagramChannel.receive(this.f7548d);
        }
        throw new SocketException("Connection is closed.");
    }

    public Object readObject(Connection connection) {
        this.f7548d.flip();
        try {
            try {
                Object read = this.f7550f.read(connection, this.f7548d);
                if (!this.f7548d.hasRemaining()) {
                    return read;
                }
                throw new KryoNetException("Incorrect number of bytes (" + this.f7548d.remaining() + " remaining) used to deserialize object: " + read);
            } catch (Exception e) {
                throw new KryoNetException("Error during deserialization.", e);
            }
        } finally {
            this.f7548d.clear();
        }
    }

    public int send(Connection connection, Object obj, SocketAddress socketAddress) {
        int limit;
        DatagramChannel datagramChannel = this.f7546b;
        if (datagramChannel != null) {
            synchronized (this.f7552h) {
                try {
                    this.f7550f.write(connection, this.f7549e, obj);
                    this.f7549e.flip();
                    limit = this.f7549e.limit();
                    datagramChannel.send(this.f7549e, socketAddress);
                    this.f7553i = System.currentTimeMillis();
                    if (!(!this.f7549e.hasRemaining())) {
                        limit = -1;
                    }
                    this.f7549e.clear();
                } catch (Exception e) {
                    throw new KryoNetException("Error serializing object of type: " + obj.getClass().getName(), e);
                }
            }
            return limit;
        }
        throw new SocketException("Connection is closed.");
    }

    public UdpConnection(Serialization serialization, int i) {
        this.f7550f = serialization;
        this.f7548d = ByteBuffer.allocate(i);
        this.f7549e = ByteBuffer.allocateDirect(i);
    }

    public void bind(Selector selector, InetSocketAddress inetSocketAddress) {
        close();
        this.f7548d.clear();
        this.f7549e.clear();
        try {
            DatagramChannel openDatagramChannel = selector.provider().openDatagramChannel();
            this.f7546b = openDatagramChannel;
            openDatagramChannel.socket().bind(inetSocketAddress);
            this.f7546b.configureBlocking(false);
            this.f7551g = this.f7546b.register(selector, 1);
            this.f7553i = System.currentTimeMillis();
        } catch (IOException e) {
            close();
            throw e;
        }
    }

    public void connect(Selector selector, InetSocketAddress inetSocketAddress) {
        close();
        this.f7548d.clear();
        this.f7549e.clear();
        try {
            DatagramChannel openDatagramChannel = selector.provider().openDatagramChannel();
            this.f7546b = openDatagramChannel;
            openDatagramChannel.socket().bind(null);
            this.f7546b.socket().connect(inetSocketAddress);
            this.f7546b.configureBlocking(false);
            this.f7551g = this.f7546b.register(selector, 1);
            this.f7553i = System.currentTimeMillis();
            this.f7545a = inetSocketAddress;
        } catch (IOException e) {
            close();
            IOException iOException = new IOException("Unable to connect to: " + inetSocketAddress);
            iOException.initCause(e);
            throw iOException;
        }
    }
}
