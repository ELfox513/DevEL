package com.prineside.luaj.lib.jse;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class JseProcess {

    /* renamed from: a */
    public final Process f8308a;

    /* renamed from: b */
    public final Thread f8309b;

    /* renamed from: c */
    public final Thread f8310c;

    /* renamed from: d */
    public final Thread f8311d;

    /* loaded from: classes2.dex */
    public static final class CopyThread extends Thread {

        /* renamed from: a */
        public final OutputStream f8312a;

        /* renamed from: b */
        public final OutputStream f8313b;

        /* renamed from: d */
        public final InputStream f8314d;

        /* renamed from: k */
        public final InputStream f8315k;

        public CopyThread(OutputStream outputStream, OutputStream outputStream2, InputStream inputStream, InputStream inputStream2) {
            this.f8312a = outputStream;
            this.f8313b = outputStream2;
            this.f8314d = inputStream;
            this.f8315k = inputStream2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = this.f8315k.read(bArr);
                    if (read < 0) {
                        break;
                    }
                    this.f8312a.write(bArr, 0, read);
                }
                InputStream inputStream = this.f8314d;
                if (inputStream != null) {
                    inputStream.close();
                }
                OutputStream outputStream = this.f8313b;
                if (outputStream != null) {
                    outputStream.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public JseProcess(String[] strArr, InputStream inputStream, OutputStream outputStream, OutputStream outputStream2) {
        this(Runtime.getRuntime().exec(strArr), inputStream, outputStream, outputStream2);
    }

    public int exitValue() {
        return this.f8308a.exitValue();
    }

    public JseProcess(String str, InputStream inputStream, OutputStream outputStream, OutputStream outputStream2) {
        this(Runtime.getRuntime().exec(str), inputStream, outputStream, outputStream2);
    }

    /* renamed from: a */
    public final Thread m22391a(InputStream inputStream, OutputStream outputStream, InputStream inputStream2, OutputStream outputStream2) {
        CopyThread copyThread = new CopyThread(outputStream, outputStream2, inputStream2, inputStream);
        copyThread.start();
        return copyThread;
    }

    public int waitFor() {
        int waitFor = this.f8308a.waitFor();
        Thread thread = this.f8309b;
        if (thread != null) {
            thread.join();
        }
        Thread thread2 = this.f8310c;
        if (thread2 != null) {
            thread2.join();
        }
        Thread thread3 = this.f8311d;
        if (thread3 != null) {
            thread3.join();
        }
        this.f8308a.destroy();
        return waitFor;
    }

    public JseProcess(Process process, InputStream inputStream, OutputStream outputStream, OutputStream outputStream2) {
        this.f8308a = process;
        this.f8309b = inputStream == null ? null : m22391a(inputStream, process.getOutputStream(), null, process.getOutputStream());
        this.f8310c = outputStream == null ? null : m22391a(process.getInputStream(), outputStream, process.getInputStream(), null);
        this.f8311d = outputStream2 != null ? m22391a(process.getErrorStream(), outputStream2, process.getErrorStream(), null) : null;
    }
}
