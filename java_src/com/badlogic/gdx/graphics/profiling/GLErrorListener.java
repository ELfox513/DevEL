package com.badlogic.gdx.graphics.profiling;

import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public interface GLErrorListener {
    public static final GLErrorListener LOGGING_LISTENER = new GLErrorListener() { // from class: com.badlogic.gdx.graphics.profiling.GLErrorListener.1
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
            r0 = r1[r2].getMethodName();
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
            r2 = r2 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
            if (r2 >= r1.length) goto L14;
         */
        @Override // com.badlogic.gdx.graphics.profiling.GLErrorListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onError(int r6) {
            /*
                r5 = this;
                r0 = 0
                java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Exception -> L2a
                java.lang.StackTraceElement[] r1 = r1.getStackTrace()     // Catch: java.lang.Exception -> L2a
                r2 = 0
            La:
                int r3 = r1.length     // Catch: java.lang.Exception -> L2a
                if (r2 >= r3) goto L2b
                java.lang.String r3 = "check"
                r4 = r1[r2]     // Catch: java.lang.Exception -> L2a
                java.lang.String r4 = r4.getMethodName()     // Catch: java.lang.Exception -> L2a
                boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L2a
                if (r3 == 0) goto L27
                int r2 = r2 + 1
                int r3 = r1.length     // Catch: java.lang.Exception -> L2a
                if (r2 >= r3) goto L2b
                r1 = r1[r2]     // Catch: java.lang.Exception -> L2a
                java.lang.String r0 = r1.getMethodName()     // Catch: java.lang.Exception -> L2a
                goto L2b
            L27:
                int r2 = r2 + 1
                goto La
            L2a:
            L2b:
                java.lang.String r1 = "Error "
                java.lang.String r2 = "GLProfiler"
                if (r0 == 0) goto L52
                com.badlogic.gdx.Application r3 = com.badlogic.gdx.Gdx.app
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                r4.append(r1)
                java.lang.String r6 = com.badlogic.gdx.graphics.profiling.GLInterceptor.resolveErrorNumber(r6)
                r4.append(r6)
                java.lang.String r6 = " from "
                r4.append(r6)
                r4.append(r0)
                java.lang.String r6 = r4.toString()
                r3.error(r2, r6)
                goto L74
            L52:
                com.badlogic.gdx.Application r0 = com.badlogic.gdx.Gdx.app
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                r3.append(r1)
                java.lang.String r6 = com.badlogic.gdx.graphics.profiling.GLInterceptor.resolveErrorNumber(r6)
                r3.append(r6)
                java.lang.String r6 = " at: "
                r3.append(r6)
                java.lang.String r6 = r3.toString()
                java.lang.Exception r1 = new java.lang.Exception
                r1.<init>()
                r0.error(r2, r6, r1)
            L74:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.profiling.GLErrorListener.C12601.onError(int):void");
        }
    };
    public static final GLErrorListener THROWING_LISTENER = new GLErrorListener() { // from class: com.badlogic.gdx.graphics.profiling.GLErrorListener.2
        @Override // com.badlogic.gdx.graphics.profiling.GLErrorListener
        public void onError(int i) {
            throw new GdxRuntimeException("GLProfiler: Got GL error " + GLInterceptor.resolveErrorNumber(i));
        }
    };

    void onError(int i);
}
