.class public abstract Lr4/pm3;
.super Lr4/uk3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lr4/pm3<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lr4/lm3<",
        "TMessageType;TBuilderType;>;>",
        "Lr4/uk3<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lr4/pm3<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public zzc:Lr4/ip3;

.field public zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lr4/pm3;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/uk3;-><init>()V

    invoke-static {}, Lr4/ip3;->a()Lr4/ip3;

    move-result-object v0

    iput-object v0, p0, Lr4/pm3;->zzc:Lr4/ip3;

    const/4 v0, -0x1

    iput v0, p0, Lr4/pm3;->zzd:I

    return-void
.end method

.method public static A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lr4/ko3;

    invoke-direct {v0, p0, p1, p2}, Lr4/ko3;-><init>(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h(Lr4/pm3;)Lr4/pm3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr4/pm3<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lr4/pm3;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/gp3;

    invoke-direct {v0, p0}, Lr4/gp3;-><init>(Lr4/ao3;)V

    new-instance v1, Lr4/bn3;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw v1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs i(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static j()Lr4/um3;
    .locals 1

    invoke-static {}, Lr4/qm3;->e()Lr4/qm3;

    move-result-object v0

    return-object v0
.end method

.method public static k(Lr4/um3;)Lr4/um3;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lr4/um3;->C(I)Lr4/um3;

    move-result-object p0

    return-object p0
.end method

.method public static l()Lr4/xm3;
    .locals 1

    invoke-static {}, Lr4/ln3;->e()Lr4/ln3;

    move-result-object v0

    return-object v0
.end method

.method public static m()Lr4/ym3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lr4/ym3<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lr4/jo3;->e()Lr4/jo3;

    move-result-object v0

    return-object v0
.end method

.method public static n(Lr4/ym3;)Lr4/ym3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/ym3<",
            "TE;>;)",
            "Lr4/ym3<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lr4/ym3;->S(I)Lr4/ym3;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lr4/pm3;[BIILr4/bm3;)Lr4/pm3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr4/pm3<",
            "TT;*>;>(TT;[BII",
            "Lr4/bm3;",
            ")TT;"
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/pm3;

    :try_start_0
    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object p2

    new-instance v5, Lr4/xk3;

    invoke-direct {v5, p4}, Lr4/xk3;-><init>(Lr4/bm3;)V

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lr4/ro3;->h(Ljava/lang/Object;[BIILr4/xk3;)V

    invoke-interface {p2, p0}, Lr4/ro3;->e(Ljava/lang/Object;)V

    iget p1, p0, Lr4/uk3;->zza:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lr4/bn3;->d()Lr4/bn3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lr4/bn3;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lr4/bn3;

    throw p0

    :cond_1
    new-instance p2, Lr4/bn3;

    invoke-direct {p2, p1}, Lr4/bn3;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lr4/bn3;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lr4/bn3;

    invoke-direct {p2, p1}, Lr4/bn3;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw p1
.end method

.method public static p(Lr4/pm3;Lr4/ll3;)Lr4/pm3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr4/pm3<",
            "TT;*>;>(TT;",
            "Lr4/ll3;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lr4/ll3;->B()Lr4/rl3;

    move-result-object p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/pm3;
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v1

    invoke-static {p1}, Lr4/sl3;->U(Lr4/rl3;)Lr4/sl3;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lr4/ro3;->j(Ljava/lang/Object;Lr4/lo3;Lr4/bm3;)V

    invoke-interface {v1, p0}, Lr4/ro3;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Lr4/bn3; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lr4/rl3;->h(I)V
    :try_end_2
    .catch Lr4/bn3; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p0}, Lr4/pm3;->h(Lr4/pm3;)Lr4/pm3;

    invoke-static {p0}, Lr4/pm3;->h(Lr4/pm3;)Lr4/pm3;

    return-object p0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lr4/bn3;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lr4/bn3;

    throw p0

    :cond_0
    throw p0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lr4/bn3;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lr4/bn3;

    throw p0

    :cond_1
    new-instance v0, Lr4/bn3;

    invoke-direct {v0, p1}, Lr4/bn3;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw v0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Lr4/bn3;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lr4/bn3;

    invoke-direct {v0, p1}, Lr4/bn3;-><init>(Ljava/io/IOException;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw p1
    :try_end_3
    .catch Lr4/bn3; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    move-exception p0

    throw p0
.end method

.method public static r(Lr4/pm3;Lr4/ll3;Lr4/bm3;)Lr4/pm3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr4/pm3<",
            "TT;*>;>(TT;",
            "Lr4/ll3;",
            "Lr4/bm3;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lr4/ll3;->B()Lr4/rl3;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/pm3;
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v0

    invoke-static {p1}, Lr4/sl3;->U(Lr4/rl3;)Lr4/sl3;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lr4/ro3;->j(Ljava/lang/Object;Lr4/lo3;Lr4/bm3;)V

    invoke-interface {v0, p0}, Lr4/ro3;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Lr4/bn3; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p2, 0x0

    :try_start_2
    invoke-virtual {p1, p2}, Lr4/rl3;->h(I)V
    :try_end_2
    .catch Lr4/bn3; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p0}, Lr4/pm3;->h(Lr4/pm3;)Lr4/pm3;

    return-object p0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lr4/bn3;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lr4/bn3;

    throw p0

    :cond_0
    throw p0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lr4/bn3;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lr4/bn3;

    throw p0

    :cond_1
    new-instance p2, Lr4/bn3;

    invoke-direct {p2, p1}, Lr4/bn3;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw p2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Lr4/bn3;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lr4/bn3;

    invoke-direct {p2, p1}, Lr4/bn3;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1, p0}, Lr4/bn3;->a(Lr4/ao3;)Lr4/bn3;

    throw p1
    :try_end_3
    .catch Lr4/bn3; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    move-exception p0

    throw p0
.end method

.method public static s(Lr4/pm3;[B)Lr4/pm3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr4/pm3<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lr4/pm3;->o(Lr4/pm3;[BIILr4/bm3;)Lr4/pm3;

    move-result-object p0

    invoke-static {p0}, Lr4/pm3;->h(Lr4/pm3;)Lr4/pm3;

    return-object p0
.end method

.method public static u(Lr4/pm3;[BLr4/bm3;)Lr4/pm3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr4/pm3<",
            "TT;*>;>(TT;[B",
            "Lr4/bm3;",
            ")TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lr4/pm3;->o(Lr4/pm3;[BIILr4/bm3;)Lr4/pm3;

    move-result-object p0

    invoke-static {p0}, Lr4/pm3;->h(Lr4/pm3;)Lr4/pm3;

    return-object p0
.end method

.method public static y(Ljava/lang/Class;)Lr4/pm3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr4/pm3;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lr4/pm3;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/pm3;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/pm3;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-static {p0}, Lr4/rp3;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/pm3;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/pm3;

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static z(Ljava/lang/Class;Lr4/pm3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr4/pm3;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lr4/pm3;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final G()I
    .locals 2

    iget v0, p0, Lr4/pm3;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v0

    invoke-interface {v0, p0}, Lr4/ro3;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lr4/pm3;->zzd:I

    :cond_0
    return v0
.end method

.method public final bridge synthetic a()Lr4/zn3;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/lm3;

    invoke-virtual {v0, p0}, Lr4/lm3;->p(Lr4/pm3;)Lr4/lm3;

    return-object v0
.end method

.method public final bridge synthetic b()Lr4/zn3;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/lm3;

    return-object v0
.end method

.method public final c(Lr4/wl3;)V
    .locals 2

    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v0

    invoke-static {p1}, Lr4/xl3;->l(Lr4/wl3;)Lr4/xl3;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lr4/ro3;->f(Ljava/lang/Object;Lr4/xl3;)V

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lr4/pm3;->zzd:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lr4/pm3;->zzd:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v0

    check-cast p1, Lr4/pm3;

    invoke-interface {v0, p0, p1}, Lr4/ro3;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic f()Lr4/ao3;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/pm3;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lr4/uk3;->zza:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v0

    invoke-interface {v0, p0}, Lr4/ro3;->i(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lr4/uk3;->zza:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lr4/co3;->a(Lr4/ao3;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lr4/lm3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lr4/pm3<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lr4/lm3<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/lm3;

    return-object v0
.end method

.method public final w()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v2

    invoke-interface {v2, p0}, Lr4/ro3;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eq v0, v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public final x()Lr4/lm3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/lm3;

    invoke-virtual {v0, p0}, Lr4/lm3;->p(Lr4/pm3;)Lr4/lm3;

    return-object v0
.end method
