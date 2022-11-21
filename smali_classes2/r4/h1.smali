.class public final Lr4/h1;
.super Lr4/e2;
.source "SourceFile"


# static fields
.field public static final j:Lr4/g2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/g2<",
            "Lr4/gc4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final i:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/g2;

    invoke-direct {v0}, Lr4/g2;-><init>()V

    sput-object v0, Lr4/h1;->j:Lr4/g2;

    return-void
.end method

.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILandroid/content/Context;Lr4/sa4;)V
    .locals 7

    const-string v2, "NK1iwlHEHCICBCLEvTy0TnuhgEeSXovnPs9zKPvVW8trSfaaB+/inefY+5AxSSUI"

    const-string v3, "/qulcnd5BAOc2NixUFmrPgx+DAD1V/hpoK4nowHOBbg="

    const/16 v6, 0x1b

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    iput-object p7, p0, Lr4/h1;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    sget-object v0, Lr4/h1;->j:Lr4/g2;

    iget-object v1, p0, Lr4/h1;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/g2;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/gc4;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lr4/gc4;->b:Ljava/lang/String;

    invoke-static {v2}, Lr4/y0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lr4/gc4;->b:Ljava/lang/String;

    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lr4/gc4;->b:Ljava/lang/String;

    const-string v2, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lr4/y0;->e(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-nez v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lr4/y0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v2}, Lr4/v0;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Lr4/rz;->B1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v9

    invoke-virtual {v9, v8}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    sget-object v9, Lr4/rz;->A1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v10

    invoke-virtual {v10, v9}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lr4/h1;->c()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    move-object v9, v1

    :goto_3
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v8}, Lr4/v0;->k()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v9}, Lr4/y0;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lr4/h1;->d()Ljava/lang/String;

    move-result-object v9

    :cond_6
    iget-object v8, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    new-array v10, v4, [Ljava/lang/Object;

    iget-object v11, p0, Lr4/h1;->i:Landroid/content/Context;

    aput-object v11, v10, v6

    aput-object v7, v10, v5

    const/4 v5, 0x2

    aput-object v9, v10, v5

    invoke-virtual {v8, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lr4/gc4;

    invoke-direct {v6, v5}, Lr4/gc4;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lr4/gc4;->b:Ljava/lang/String;

    invoke-static {v5}, Lr4/y0;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v6, Lr4/gc4;->b:Ljava/lang/String;

    const-string v7, "E"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-eq v2, v4, :cond_9

    if-eq v2, v3, :cond_8

    goto :goto_4

    :cond_8
    throw v1

    :cond_9
    invoke-virtual {p0}, Lr4/h1;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr4/y0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object v1, v6, Lr4/gc4;->b:Ljava/lang/String;

    :cond_a
    :goto_4
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/gc4;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v2

    if-eqz v1, :cond_c

    :try_start_1
    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v3, v1, Lr4/gc4;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lr4/za4;->t0(Ljava/lang/String;)Lr4/za4;

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    iget-wide v3, v1, Lr4/gc4;->c:J

    invoke-virtual {v0, v3, v4}, Lr4/za4;->z0(J)Lr4/za4;

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v3, v1, Lr4/gc4;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lr4/za4;->y0(Ljava/lang/String;)Lr4/za4;

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v3, v1, Lr4/gc4;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lr4/za4;->A(Ljava/lang/String;)Lr4/za4;

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v1, v1, Lr4/gc4;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr4/za4;->B(Ljava/lang/String;)Lr4/za4;

    :cond_c
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    sget-object v2, Lr4/rz;->C1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lr4/y0;->c(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lr4/rz;->D1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lr4/y0;->c(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lr4/h1;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v4}, Lr4/v0;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lr4/j2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v0}, Lr4/v0;->o()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v0}, Lr4/v0;->o()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v0}, Lr4/v0;->n()Lr4/pb4;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/pb4;->f0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lr4/pb4;->t0()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
