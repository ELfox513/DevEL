package p146p0;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.spi.AbstractInterruptibleChannel;
import java.util.ArrayList;
import p128n0.AbstractC4676e;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5389e;
/* renamed from: p0.c */
/* loaded from: classes.dex */
public class C5287c {
    /* renamed from: c */
    public static int m13636c(File file) {
        AbstractInterruptibleChannel abstractInterruptibleChannel = null;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(allocate) == 4) {
                allocate.rewind();
                int i = allocate.getInt();
                channel.close();
                return i;
            }
            throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
        } catch (Throwable th) {
            if (0 != 0) {
                abstractInterruptibleChannel.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static void m13638a(InterfaceC5382b interfaceC5382b) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor mo13132o0 = interfaceC5382b.mo13132o0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (mo13132o0.moveToNext()) {
            try {
                arrayList.add(mo13132o0.getString(0));
            } catch (Throwable th) {
                mo13132o0.close();
                throw th;
            }
        }
        mo13132o0.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                interfaceC5382b.mo13140B("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    /* renamed from: b */
    public static Cursor m13637b(AbstractC4676e abstractC4676e, InterfaceC5389e interfaceC5389e, boolean z, CancellationSignal cancellationSignal) {
        int i;
        Cursor m15814q = abstractC4676e.m15814q(interfaceC5389e, cancellationSignal);
        if (z && (m15814q instanceof AbstractWindowedCursor)) {
            AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) m15814q;
            int count = abstractWindowedCursor.getCount();
            if (abstractWindowedCursor.hasWindow()) {
                i = abstractWindowedCursor.getWindow().getNumRows();
            } else {
                i = count;
            }
            if (Build.VERSION.SDK_INT < 23 || i < count) {
                return C5286b.m13640a(abstractWindowedCursor);
            }
            return m15814q;
        }
        return m15814q;
    }
}
