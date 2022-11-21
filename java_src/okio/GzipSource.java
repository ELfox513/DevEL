package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* loaded from: classes.dex */
public final class GzipSource implements Source {
    private static final byte FCOMMENT = 4;
    private static final byte FEXTRA = 2;
    private static final byte FHCRC = 1;
    private static final byte FNAME = 3;
    private static final byte SECTION_BODY = 1;
    private static final byte SECTION_DONE = 3;
    private static final byte SECTION_HEADER = 0;
    private static final byte SECTION_TRAILER = 2;
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private final BufferedSource source;
    private int section = 0;
    private final CRC32 crc = new CRC32();

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.inflaterSource.close();
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    private void checkEqual(String str, int i, int i2) {
        if (i2 == i) {
            return;
        }
        throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
    }

    private void consumeHeader() {
        boolean z;
        this.source.require(10L);
        byte b = this.source.buffer().getByte(3L);
        if (((b >> 1) & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            updateCrc(this.source.buffer(), 0L, 10L);
        }
        checkEqual("ID1ID2", 8075, this.source.readShort());
        this.source.skip(8L);
        if (((b >> 2) & 1) == 1) {
            this.source.require(2L);
            if (z) {
                updateCrc(this.source.buffer(), 0L, 2L);
            }
            long readShortLe = this.source.buffer().readShortLe();
            this.source.require(readShortLe);
            if (z) {
                updateCrc(this.source.buffer(), 0L, readShortLe);
            }
            this.source.skip(readShortLe);
        }
        if (((b >> 3) & 1) == 1) {
            long indexOf = this.source.indexOf(SECTION_HEADER);
            if (indexOf != -1) {
                if (z) {
                    updateCrc(this.source.buffer(), 0L, indexOf + 1);
                }
                this.source.skip(indexOf + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((b >> FCOMMENT) & 1) == 1) {
            long indexOf2 = this.source.indexOf(SECTION_HEADER);
            if (indexOf2 != -1) {
                if (z) {
                    updateCrc(this.source.buffer(), 0L, indexOf2 + 1);
                }
                this.source.skip(indexOf2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            checkEqual("FHCRC", this.source.readShortLe(), (short) this.crc.getValue());
            this.crc.reset();
        }
    }

    private void consumeTrailer() {
        checkEqual("CRC", this.source.readIntLe(), (int) this.crc.getValue());
        checkEqual("ISIZE", this.source.readIntLe(), (int) this.inflater.getBytesWritten());
    }

    private void updateCrc(Buffer buffer, long j, long j2) {
        int i;
        Segment segment = buffer.f19733a;
        while (true) {
            int i2 = segment.f19763c;
            int i3 = segment.f19762b;
            if (j < i2 - i3) {
                break;
            }
            j -= i2 - i3;
            segment = segment.f19766f;
        }
        while (j2 > 0) {
            int min = (int) Math.min(segment.f19763c - i, j2);
            this.crc.update(segment.f19761a, (int) (segment.f19762b + j), min);
            j2 -= min;
            segment = segment.f19766f;
            j = 0;
        }
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) {
        if (j >= 0) {
            if (j == 0) {
                return 0L;
            }
            if (this.section == 0) {
                consumeHeader();
                this.section = 1;
            }
            if (this.section == 1) {
                long j2 = buffer.f19734b;
                long read = this.inflaterSource.read(buffer, j);
                if (read != -1) {
                    updateCrc(buffer, j2, read);
                    return read;
                }
                this.section = 2;
            }
            if (this.section == 2) {
                consumeTrailer();
                this.section = 3;
                if (!this.source.exhausted()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j);
    }

    public GzipSource(Source source) {
        if (source != null) {
            Inflater inflater = new Inflater(true);
            this.inflater = inflater;
            BufferedSource buffer = Okio.buffer(source);
            this.source = buffer;
            this.inflaterSource = new InflaterSource(buffer, inflater);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }
}
