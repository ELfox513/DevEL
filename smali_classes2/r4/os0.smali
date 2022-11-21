.class public final Lr4/os0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)Lr4/cs0;
    .locals 16

    invoke-static/range {p0 .. p0}, Lr4/rz;->a(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Lr4/ls0;

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lr4/ls0;-><init>(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)V

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-interface {v0}, Lr4/m13;->zza()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    new-instance v1, Lr4/ns0;

    const-string v2, "Webview initialization failed."

    invoke-direct {v1, v2, v0}, Lr4/ns0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final b(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Lr4/u;Lz2/a;)Lr4/h83;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/im0;",
            "Ljava/lang/String;",
            "Lr4/u;",
            "Lz2/a;",
            ")",
            "Lr4/h83<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation

    new-instance v6, Lr4/ks0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lr4/ks0;-><init>(Landroid/content/Context;Lr4/u;Lr4/im0;Lz2/a;Ljava/lang/String;)V

    sget-object p0, Lr4/qm0;->e:Lr4/i83;

    invoke-static {v6, p0}, Lr4/y73;->e(Lr4/d73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p0

    return-object p0
.end method
