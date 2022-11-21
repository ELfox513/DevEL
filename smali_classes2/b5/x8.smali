.class public abstract Lb5/x8;
.super Lb5/f7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lb5/x8<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lb5/u8<",
        "TMessageType;TBuilderType;>;>",
        "Lb5/f7<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lb5/x8<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public zzc:Lb5/ib;

.field public zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lb5/x8;->zza:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/f7;-><init>()V

    invoke-static {}, Lb5/ib;->c()Lb5/ib;

    move-result-object v0

    iput-object v0, p0, Lb5/x8;->zzc:Lb5/ib;

    const/4 v0, -0x1

    iput v0, p0, Lb5/x8;->zzd:I

    return-void
.end method

.method public static f()Lb5/e9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lb5/e9<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lb5/na;->e()Lb5/na;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lb5/e9;)Lb5/e9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lb5/e9<",
            "TE;>;)",
            "Lb5/e9<",
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
    invoke-interface {p0, v0}, Lb5/e9;->p0(I)Lb5/e9;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static i(Lb5/ea;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lb5/oa;

    invoke-direct {v0, p0, p1, p2}, Lb5/oa;-><init>(Lb5/ea;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j(Ljava/lang/Class;Lb5/x8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb5/x8;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lb5/x8;->zza:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static n(Ljava/lang/Class;)Lb5/x8;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb5/x8;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lb5/x8;->zza:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/x8;

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

    check-cast v1, Lb5/x8;

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

    invoke-static {p0}, Lb5/rb;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/x8;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/x8;

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

.method public static o()Lb5/c9;
    .locals 1

    invoke-static {}, Lb5/z8;->g()Lb5/z8;

    move-result-object v0

    return-object v0
.end method

.method public static p()Lb5/d9;
    .locals 1

    invoke-static {}, Lb5/s9;->e()Lb5/s9;

    move-result-object v0

    return-object v0
.end method

.method public static q(Lb5/d9;)Lb5/d9;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lb5/d9;->S(I)Lb5/d9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Lb5/ea;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/x8;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lb5/x8;->zzd:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lb5/x8;->zzd:I

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
    invoke-static {}, Lb5/ma;->a()Lb5/ma;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb5/ma;->b(Ljava/lang/Class;)Lb5/pa;

    move-result-object v0

    check-cast p1, Lb5/x8;

    invoke-interface {v0, p0, p1}, Lb5/pa;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lb5/f7;->zzb:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lb5/ma;->a()Lb5/ma;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb5/ma;->b(Ljava/lang/Class;)Lb5/pa;

    move-result-object v0

    invoke-interface {v0, p0}, Lb5/pa;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lb5/f7;->zzb:I

    return v0
.end method

.method public final k()Lb5/u8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lb5/x8<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lb5/u8<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/u8;

    return-object v0
.end method

.method public final l()Lb5/u8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/u8;

    invoke-virtual {v0, p0}, Lb5/u8;->o(Lb5/x8;)Lb5/u8;

    return-object v0
.end method

.method public abstract r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final t0()I
    .locals 2

    iget v0, p0, Lb5/x8;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lb5/ma;->a()Lb5/ma;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb5/ma;->b(Ljava/lang/Class;)Lb5/pa;

    move-result-object v0

    invoke-interface {v0, p0}, Lb5/pa;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lb5/x8;->zzd:I

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lb5/ga;->a(Lb5/ea;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u0()Lb5/da;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/u8;

    invoke-virtual {v0, p0}, Lb5/u8;->o(Lb5/x8;)Lb5/u8;

    return-object v0
.end method

.method public final v0(Lb5/f8;)V
    .locals 2

    invoke-static {}, Lb5/ma;->a()Lb5/ma;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb5/ma;->b(Ljava/lang/Class;)Lb5/pa;

    move-result-object v0

    invoke-static {p1}, Lb5/g8;->l(Lb5/f8;)Lb5/g8;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lb5/pa;->i(Ljava/lang/Object;Lb5/g8;)V

    return-void
.end method

.method public final bridge synthetic w0()Lb5/da;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/u8;

    return-object v0
.end method
