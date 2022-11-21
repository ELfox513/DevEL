package com.badlogic.gdx.utils.compression;

import com.badlogic.gdx.utils.compression.lzma.Decoder;
import com.badlogic.gdx.utils.compression.lzma.Encoder;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class Lzma {

    /* loaded from: classes.dex */
    public static class CommandLine {
        public static final int kBenchmak = 2;
        public static final int kDecode = 1;
        public static final int kEncode = 0;
        public String InFile;
        public String OutFile;
        public int Command = -1;
        public int NumBenchmarkPasses = 10;
        public int DictionarySize = 8388608;
        public boolean DictionarySizeIsDefined = false;

        /* renamed from: Lc */
        public int f6813Lc = 3;

        /* renamed from: Lp */
        public int f6814Lp = 0;

        /* renamed from: Pb */
        public int f6815Pb = 2;

        /* renamed from: Fb */
        public int f6812Fb = 128;
        public boolean FbIsDefined = false;
        public boolean Eos = false;
        public int Algorithm = 2;
        public int MatchFinder = 1;
    }

    public static void decompress(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[5];
        if (inputStream.read(bArr, 0, 5) == 5) {
            Decoder decoder = new Decoder();
            if (decoder.SetDecoderProperties(bArr)) {
                long j = 0;
                for (int i = 0; i < 8; i++) {
                    int read = inputStream.read();
                    if (read >= 0) {
                        j |= read << (i * 8);
                    } else {
                        throw new RuntimeException("Can't read stream size");
                    }
                }
                if (decoder.Code(inputStream, outputStream, j)) {
                    return;
                }
                throw new RuntimeException("Error in data stream");
            }
            throw new RuntimeException("Incorrect stream properties");
        }
        throw new RuntimeException("input .lzma file is too short");
    }

    public static void compress(InputStream inputStream, OutputStream outputStream) {
        CommandLine commandLine = new CommandLine();
        boolean z = commandLine.Eos;
        Encoder encoder = new Encoder();
        if (encoder.SetAlgorithm(commandLine.Algorithm)) {
            if (encoder.SetDictionarySize(commandLine.DictionarySize)) {
                if (encoder.SetNumFastBytes(commandLine.f6812Fb)) {
                    if (encoder.SetMatchFinder(commandLine.MatchFinder)) {
                        if (encoder.SetLcLpPb(commandLine.f6813Lc, commandLine.f6814Lp, commandLine.f6815Pb)) {
                            encoder.SetEndMarkerMode(z);
                            encoder.WriteCoderProperties(outputStream);
                            long j = -1;
                            if (!z) {
                                long available = inputStream.available();
                                if (available != 0) {
                                    j = available;
                                }
                            }
                            for (int i = 0; i < 8; i++) {
                                outputStream.write(((int) (j >>> (i * 8))) & 255);
                            }
                            encoder.Code(inputStream, outputStream, -1L, -1L, null);
                            return;
                        }
                        throw new RuntimeException("Incorrect -lc or -lp or -pb value");
                    }
                    throw new RuntimeException("Incorrect -mf value");
                }
                throw new RuntimeException("Incorrect -fb value");
            }
            throw new RuntimeException("Incorrect dictionary size");
        }
        throw new RuntimeException("Incorrect compression mode");
    }
}
