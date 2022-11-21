package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* loaded from: classes.dex */
public final class Okio {

    /* renamed from: a */
    public static final Logger f19741a = Logger.getLogger(Okio.class.getName());

    private Okio() {
    }

    public static Sink blackhole() {
        return new Sink() { // from class: okio.Okio.3
            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() {
            }

            @Override // okio.Sink
            public Timeout timeout() {
                return Timeout.NONE;
            }

            @Override // okio.Sink
            public void write(Buffer buffer, long j) {
                buffer.skip(j);
            }
        };
    }

    public static BufferedSource buffer(Source source) {
        return new RealBufferedSource(source);
    }

    public static Sink sink(OutputStream outputStream) {
        return sink(outputStream, new Timeout());
    }

    public static Source source(InputStream inputStream) {
        return source(inputStream, new Timeout());
    }

    private static AsyncTimeout timeout(final Socket socket) {
        return new AsyncTimeout() { // from class: okio.Okio.4
            @Override // okio.AsyncTimeout
            public IOException newTimeoutException(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // okio.AsyncTimeout
            public void timedOut() {
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (Okio.m13733a(e)) {
                        Logger logger = Okio.f19741a;
                        Level level = Level.WARNING;
                        logger.log(level, "Failed to close timed out socket " + socket, (Throwable) e);
                        return;
                    }
                    throw e;
                } catch (Exception e2) {
                    Logger logger2 = Okio.f19741a;
                    Level level2 = Level.WARNING;
                    logger2.log(level2, "Failed to close timed out socket " + socket, (Throwable) e2);
                }
            }
        };
    }

    public static Sink appendingSink(File file) {
        if (file != null) {
            return sink(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static BufferedSink buffer(Sink sink) {
        return new RealBufferedSink(sink);
    }

    private static Sink sink(final OutputStream outputStream, final Timeout timeout) {
        if (outputStream != null) {
            if (timeout != null) {
                return new Sink() { // from class: okio.Okio.1
                    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                        outputStream.close();
                    }

                    @Override // okio.Sink, java.io.Flushable
                    public void flush() {
                        outputStream.flush();
                    }

                    @Override // okio.Sink
                    public Timeout timeout() {
                        return Timeout.this;
                    }

                    public String toString() {
                        return "sink(" + outputStream + ")";
                    }

                    @Override // okio.Sink
                    public void write(Buffer buffer, long j) {
                        Util.checkOffsetAndCount(buffer.f19734b, 0L, j);
                        while (j > 0) {
                            Timeout.this.throwIfReached();
                            Segment segment = buffer.f19733a;
                            int min = (int) Math.min(j, segment.f19763c - segment.f19762b);
                            outputStream.write(segment.f19761a, segment.f19762b, min);
                            int i = segment.f19762b + min;
                            segment.f19762b = i;
                            long j2 = min;
                            j -= j2;
                            buffer.f19734b -= j2;
                            if (i == segment.f19763c) {
                                buffer.f19733a = segment.pop();
                                SegmentPool.m13729a(segment);
                            }
                        }
                    }
                };
            }
            throw new IllegalArgumentException("timeout == null");
        }
        throw new IllegalArgumentException("out == null");
    }

    private static Source source(final InputStream inputStream, final Timeout timeout) {
        if (inputStream != null) {
            if (timeout != null) {
                return new Source() { // from class: okio.Okio.2
                    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                        inputStream.close();
                    }

                    @Override // okio.Source
                    public Timeout timeout() {
                        return Timeout.this;
                    }

                    public String toString() {
                        return "source(" + inputStream + ")";
                    }

                    @Override // okio.Source
                    public long read(Buffer buffer, long j) {
                        if (j >= 0) {
                            if (j == 0) {
                                return 0L;
                            }
                            try {
                                Timeout.this.throwIfReached();
                                Segment m13739h = buffer.m13739h(1);
                                int read = inputStream.read(m13739h.f19761a, m13739h.f19763c, (int) Math.min(j, 8192 - m13739h.f19763c));
                                if (read == -1) {
                                    return -1L;
                                }
                                m13739h.f19763c += read;
                                long j2 = read;
                                buffer.f19734b += j2;
                                return j2;
                            } catch (AssertionError e) {
                                if (Okio.m13733a(e)) {
                                    throw new IOException(e);
                                }
                                throw e;
                            }
                        }
                        throw new IllegalArgumentException("byteCount < 0: " + j);
                    }
                };
            }
            throw new IllegalArgumentException("timeout == null");
        }
        throw new IllegalArgumentException("in == null");
    }

    /* renamed from: a */
    public static boolean m13733a(AssertionError assertionError) {
        if (assertionError.getCause() != null && assertionError.getMessage() != null && assertionError.getMessage().contains("getsockname failed")) {
            return true;
        }
        return false;
    }

    public static Sink sink(Socket socket) {
        if (socket != null) {
            if (socket.getOutputStream() != null) {
                AsyncTimeout timeout = timeout(socket);
                return timeout.sink(sink(socket.getOutputStream(), timeout));
            }
            throw new IOException("socket's output stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    public static Source source(File file) {
        if (file != null) {
            return source(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    @IgnoreJRERequirement
    public static Source source(Path path, OpenOption... openOptionArr) {
        if (path != null) {
            return source(Files.newInputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    public static Source source(Socket socket) {
        if (socket != null) {
            if (socket.getInputStream() != null) {
                AsyncTimeout timeout = timeout(socket);
                return timeout.source(source(socket.getInputStream(), timeout));
            }
            throw new IOException("socket's input stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    public static Sink sink(File file) {
        if (file != null) {
            return sink(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    @IgnoreJRERequirement
    public static Sink sink(Path path, OpenOption... openOptionArr) {
        if (path != null) {
            return sink(Files.newOutputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }
}
