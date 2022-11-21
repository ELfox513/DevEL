package com.android.p030dx.command.dexer;

import com.android.p030dx.dex.p031cf.CodeStatistics;
import com.android.p030dx.dex.p031cf.OptimizerOptions;
import java.io.OutputStream;
import java.io.PrintStream;
/* renamed from: com.android.dx.command.dexer.DxContext */
/* loaded from: classes.dex */
public class DxContext {

    /* renamed from: a */
    public final PrintStream f3074a;
    public final CodeStatistics codeStatistics;
    public final PrintStream err;
    public final OptimizerOptions optimizerOptions;
    public final PrintStream out;

    public DxContext(OutputStream outputStream, OutputStream outputStream2) {
        this.codeStatistics = new CodeStatistics();
        this.optimizerOptions = new OptimizerOptions();
        this.f3074a = new PrintStream(new OutputStream() { // from class: com.android.dx.command.dexer.DxContext.1
            @Override // java.io.OutputStream
            public void write(int i) {
            }
        });
        this.out = new PrintStream(outputStream);
        this.err = new PrintStream(outputStream2);
    }

    public DxContext() {
        this(System.out, System.err);
    }
}
