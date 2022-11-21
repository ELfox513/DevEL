.class public abstract Lz4/m0;
.super Lz4/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/m0$b;,
        Lz4/m0$c;,
        Lz4/m0$a;,
        Lz4/m0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lz4/m0<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lz4/m0$a<",
        "TMessageType;TBuilderType;>;>",
        "Lz4/c<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lz4/m0<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public zzrq:Lz4/y2;

.field private zzrr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lz4/m0;->zzrs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz4/c;-><init>()V

    invoke-static {}, Lz4/y2;->h()Lz4/y2;

    move-result-object v0

    iput-object v0, p0, Lz4/m0;->zzrq:Lz4/y2;

    const/4 v0, -0x1

    iput v0, p0, Lz4/m0;->zzrr:I

    return-void
.end method

.method public static varargs m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static n(Lz4/r1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lz4/e2;

    invoke-direct {v0, p0, p1, p2}, Lz4/e2;-><init>(Lz4/r1;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Class;Lz4/m0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lz4/m0<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lz4/m0;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final p(Lz4/m0;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lz4/m0<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget v0, Lz4/m0$d;->a:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lz4/d2;->a()Lz4/d2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz4/d2;->c(Ljava/lang/Object;)Lz4/f2;

    move-result-object v0

    invoke-interface {v0, p0}, Lz4/f2;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    sget p1, Lz4/m0$d;->b:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static s(Ljava/lang/Class;)Lz4/m0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lz4/m0<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lz4/m0;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lz4/m0;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lz4/d3;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0;

    sget v1, Lz4/m0$d;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0;

    if-eqz v0, :cond_1

    sget-object v1, Lz4/m0;->zzrs:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lz4/m0;->p(Lz4/m0;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Lz4/x;)V
    .locals 2

    invoke-static {}, Lz4/d2;->a()Lz4/d2;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz4/d2;->b(Ljava/lang/Class;)Lz4/f2;

    move-result-object v0

    invoke-static {p1}, Lz4/z;->O(Lz4/x;)Lz4/z;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lz4/f2;->d(Ljava/lang/Object;Lz4/r3;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget v0, Lz4/m0$d;->f:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {}, Lz4/d2;->a()Lz4/d2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz4/d2;->c(Ljava/lang/Object;)Lz4/f2;

    move-result-object v0

    check-cast p1, Lz4/m0;

    invoke-interface {v0, p0, p1}, Lz4/f2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()Lz4/r1;
    .locals 2

    sget v0, Lz4/m0$d;->f:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lz4/m0;->zzrr:I

    return v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Lz4/m0;->zzrr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lz4/d2;->a()Lz4/d2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz4/d2;->c(Ljava/lang/Object;)Lz4/f2;

    move-result-object v0

    invoke-interface {v0, p0}, Lz4/f2;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lz4/m0;->zzrr:I

    :cond_0
    iget v0, p0, Lz4/m0;->zzrr:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lz4/c;->zzne:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lz4/d2;->a()Lz4/d2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz4/d2;->c(Ljava/lang/Object;)Lz4/f2;

    move-result-object v0

    invoke-interface {v0, p0}, Lz4/f2;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lz4/c;->zzne:I

    return v0
.end method

.method public final synthetic i()Lz4/s1;
    .locals 2

    sget v0, Lz4/m0$d;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0$a;

    invoke-virtual {v0, p0}, Lz4/m0$a;->l(Lz4/m0;)Lz4/m0$a;

    return-object v0
.end method

.method final j(I)V
    .locals 0

    iput p1, p0, Lz4/m0;->zzrr:I

    return-void
.end method

.method public abstract l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final q()V
    .locals 1

    invoke-static {}, Lz4/d2;->a()Lz4/d2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz4/d2;->c(Ljava/lang/Object;)Lz4/f2;

    move-result-object v0

    invoke-interface {v0, p0}, Lz4/f2;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()Lz4/m0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lz4/m0<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lz4/m0$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    sget v0, Lz4/m0$d;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lz4/u1;->a(Lz4/r1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
