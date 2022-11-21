package com.esotericsoftware.kryonet;

import com.esotericsoftware.minlog.Log;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TcpConnection {

    /* renamed from: a */
    public SocketChannel f7532a;

    /* renamed from: c */
    public final ByteBuffer f7534c;

    /* renamed from: d */
    public final ByteBuffer f7535d;

    /* renamed from: e */
    public boolean f7536e;

    /* renamed from: h */
    public final Serialization f7539h;

    /* renamed from: i */
    public SelectionKey f7540i;

    /* renamed from: j */
    public volatile long f7541j;

    /* renamed from: k */
    public volatile long f7542k;

    /* renamed from: l */
    public int f7543l;

    /* renamed from: b */
    public int f7533b = 8000;

    /* renamed from: f */
    public int f7537f = 12000;

    /* renamed from: g */
    public float f7538g = 0.1f;

    /* renamed from: m */
    public final Object f7544m = new Object();

    public boolean isTimedOut(long j) {
        return this.f7532a != null && this.f7537f > 0 && j - this.f7542k > ((long) this.f7537f);
    }

    public boolean needsKeepAlive(long j) {
        return this.f7532a != null && this.f7533b > 0 && j - this.f7541j > ((long) this.f7533b);
    }

    /* renamed from: a */
    public final boolean m23141a() {
        SocketChannel socketChannel = this.f7532a;
        if (socketChannel != null) {
            ByteBuffer byteBuffer = this.f7535d;
            byteBuffer.flip();
            while (byteBuffer.hasRemaining()) {
                if (this.f7536e) {
                    byteBuffer.compact();
                    byteBuffer.flip();
                }
                if (socketChannel.write(byteBuffer) == 0) {
                    break;
                }
            }
            byteBuffer.compact();
            if (byteBuffer.position() == 0) {
                return true;
            }
            return false;
        }
        throw new SocketException("Connection is closed.");
    }

    public SelectionKey accept(Selector selector, SocketChannel socketChannel) {
        this.f7535d.clear();
        this.f7534c.clear();
        this.f7534c.flip();
        this.f7543l = 0;
        try {
            this.f7532a = socketChannel;
            socketChannel.configureBlocking(false);
            socketChannel.socket().setTcpNoDelay(true);
            this.f7540i = socketChannel.register(selector, 1);
            if (Log.DEBUG) {
                Log.debug("kryonet", "Port " + socketChannel.socket().getLocalPort() + "/TCP connected to: " + socketChannel.socket().getRemoteSocketAddress());
            }
            long currentTimeMillis = System.currentTimeMillis();
            this.f7541j = currentTimeMillis;
            this.f7542k = currentTimeMillis;
            return this.f7540i;
        } catch (IOException e) {
            close();
            throw e;
        }
    }

    public void close() {
        try {
            SocketChannel socketChannel = this.f7532a;
            if (socketChannel != null) {
                socketChannel.close();
                this.f7532a = null;
                SelectionKey selectionKey = this.f7540i;
                if (selectionKey != null) {
                    selectionKey.selector().wakeup();
                }
            }
        } catch (IOException e) {
            if (Log.DEBUG) {
                Log.debug("kryonet", "Unable to close TCP connection.", e);
            }
        }
    }

    public Object readObject(Connection connection) {
        SocketChannel socketChannel = this.f7532a;
        if (socketChannel != null) {
            if (this.f7543l == 0) {
                int lengthLength = this.f7539h.getLengthLength();
                if (this.f7534c.remaining() < lengthLength) {
                    this.f7534c.compact();
                    int read = socketChannel.read(this.f7534c);
                    this.f7534c.flip();
                    if (read != -1) {
                        this.f7542k = System.currentTimeMillis();
                        if (this.f7534c.remaining() < lengthLength) {
                            return null;
                        }
                    } else {
                        throw new SocketException("Connection is closed.");
                    }
                }
                int readLength = this.f7539h.readLength(this.f7534c);
                this.f7543l = readLength;
                if (readLength > 0) {
                    if (readLength > this.f7534c.capacity()) {
                        throw new KryoNetException("Unable to read object larger than read buffer: " + this.f7543l);
                    }
                } else {
                    throw new KryoNetException("Invalid object length: " + this.f7543l);
                }
            }
            int i = this.f7543l;
            if (this.f7534c.remaining() < i) {
                this.f7534c.compact();
                int read2 = socketChannel.read(this.f7534c);
                this.f7534c.flip();
                if (read2 != -1) {
                    this.f7542k = System.currentTimeMillis();
                    if (this.f7534c.remaining() < i) {
                        return null;
                    }
                } else {
                    throw new SocketException("Connection is closed.");
                }
            }
            this.f7543l = 0;
            int position = this.f7534c.position();
            int limit = this.f7534c.limit();
            int i2 = position + i;
            this.f7534c.limit(i2);
            try {
                Object read3 = this.f7539h.read(connection, this.f7534c);
                this.f7534c.limit(limit);
                if (this.f7534c.position() - position == i) {
                    return read3;
                }
                throw new KryoNetException("Incorrect number of bytes (" + (i2 - this.f7534c.position()) + " remaining) used to deserialize object: " + read3);
            } catch (Exception e) {
                throw new KryoNetException("Error during deserialization.", e);
            }
        }
        throw new SocketException("Connection is closed.");
    }

    public int send(Connection connection, Object obj) {
        int i;
        if (this.f7532a != null) {
            synchronized (this.f7544m) {
                int position = this.f7535d.position();
                int lengthLength = this.f7539h.getLengthLength();
                ByteBuffer byteBuffer = this.f7535d;
                byteBuffer.position(byteBuffer.position() + lengthLength);
                try {
                    this.f7539h.write(connection, this.f7535d, obj);
                    int position2 = this.f7535d.position();
                    this.f7535d.position(position);
                    this.f7539h.writeLength(this.f7535d, (position2 - lengthLength) - position);
                    this.f7535d.position(position2);
                    if (position == 0 && !m23141a()) {
                        this.f7540i.interestOps(5);
                    } else {
                        this.f7540i.selector().wakeup();
                    }
                    if (Log.DEBUG || Log.TRACE) {
                        float position3 = this.f7535d.position() / this.f7535d.capacity();
                        if (Log.DEBUG && position3 > 0.75f) {
                            Log.debug("kryonet", connection + " TCP write buffer is approaching capacity: " + position3 + "%");
                        } else if (Log.TRACE && position3 > 0.25f) {
                            Log.trace("kryonet", connection + " TCP write buffer utilization: " + position3 + "%");
                        }
                    }
                    this.f7541j = System.currentTimeMillis();
                    i = position2 - position;
                } catch (KryoNetException e) {
                    throw new KryoNetException("Error serializing object of type: " + obj.getClass().getName(), e);
                }
            }
            return i;
        }
        throw new SocketException("Connection is closed.");
    }

    public void writeOperation() {
        synchronized (this.f7544m) {
            if (m23141a()) {
                this.f7540i.interestOps(1);
            }
            this.f7541j = System.currentTimeMillis();
        }
    }

    public TcpConnection(Serialization serialization, int i, int i2) {
        this.f7539h = serialization;
        this.f7535d = ByteBuffer.allocate(i);
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        this.f7534c = allocate;
        allocate.flip();
    }

    public void connect(Selector selector, SocketAddress socketAddress, int i) {
        close();
        this.f7535d.clear();
        this.f7534c.clear();
        this.f7534c.flip();
        this.f7543l = 0;
        try {
            SocketChannel openSocketChannel = selector.provider().openSocketChannel();
            Socket socket = openSocketChannel.socket();
            socket.setTcpNoDelay(true);
            socket.connect(socketAddress, i);
            openSocketChannel.configureBlocking(false);
            this.f7532a = openSocketChannel;
            SelectionKey register = openSocketChannel.register(selector, 1);
            this.f7540i = register;
            register.attach(this);
            if (Log.DEBUG) {
                Log.debug("kryonet", "Port " + openSocketChannel.socket().getLocalPort() + "/TCP connected to: " + openSocketChannel.socket().getRemoteSocketAddress());
            }
            long currentTimeMillis = System.currentTimeMillis();
            this.f7541j = currentTimeMillis;
            this.f7542k = currentTimeMillis;
        } catch (IOException e) {
            close();
            IOException iOException = new IOException("Unable to connect to: " + socketAddress);
            iOException.initCause(e);
            throw iOException;
        }
    }
}
