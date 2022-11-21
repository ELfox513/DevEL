.class public abstract Lo7/y;
.super Lo7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/y$b;,
        Lo7/y$e;,
        Lo7/y$d;,
        Lo7/y$c;,
        Lo7/y$a;,
        Lo7/y$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo7/y<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo7/y$a<",
        "TMessageType;TBuilderType;>;>",
        "Lo7/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo7/y<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public memoizedSerializedSize:I

.field public unknownFields:Lo7/p1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo7/y;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo7/a;-><init>()V

    invoke-static {}, Lo7/p1;->c()Lo7/p1;

    move-result-object v0

    iput-object v0, p0, Lo7/y;->unknownFields:Lo7/p1;

    const/4 v0, -0x1

    iput v0, p0, Lo7/y;->memoizedSerializedSize:I

    return-void
.end method

.method public static C()Lo7/a0$g;
    .locals 1

    invoke-static {}, Lo7/z;->k()Lo7/z;

    move-result-object v0

    return-object v0
.end method

.method public static D()Lo7/a0$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo7/a0$i<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lo7/e1;->g()Lo7/e1;

    move-result-object v0

    return-object v0
.end method

.method public static E(Ljava/lang/Class;)Lo7/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo7/y<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lo7/y;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y;

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

    sget-object v0, Lo7/y;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y;

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

    invoke-static {p0}, Lo7/s1;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y;

    invoke-virtual {v0}, Lo7/y;->F()Lo7/y;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lo7/y;->defaultInstanceMap:Ljava/util/Map;

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

.method public static varargs G(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static final H(Lo7/y;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo7/y<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget-object v0, Lo7/y$f;->a:Lo7/y$f;

    invoke-virtual {p0, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo7/d1;->e(Ljava/lang/Object;)Lo7/h1;

    move-result-object v0

    invoke-interface {v0, p0}, Lo7/h1;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    sget-object p1, Lo7/y$f;->b:Lo7/y$f;

    if-eqz v0, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lo7/y;->A(Lo7/y$f;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static J(Lo7/a0$g;)Lo7/a0$g;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lo7/a0$g;->n(I)Lo7/a0$g;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lo7/a0$i;)Lo7/a0$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/a0$i<",
            "TE;>;)",
            "Lo7/a0$i<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lo7/a0$i;->n(I)Lo7/a0$i;

    move-result-object p0

    return-object p0
.end method

.method public static M(Lo7/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lo7/f1;

    invoke-direct {v0, p0, p1, p2}, Lo7/f1;-><init>(Lo7/s0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static N(Lo7/y;Lo7/i;Lo7/p;)Lo7/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo7/y<",
            "TT;*>;>(TT;",
            "Lo7/i;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lo7/y$f;->k:Lo7/y$f;

    invoke-virtual {p0, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo7/y;

    :try_start_0
    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo7/d1;->e(Ljava/lang/Object;)Lo7/h1;

    move-result-object v0

    invoke-static {p1}, Lo7/j;->Q(Lo7/i;)Lo7/j;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lo7/h1;->e(Ljava/lang/Object;Lo7/g1;Lo7/p;)V

    invoke-interface {v0, p0}, Lo7/h1;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lo7/c0;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lo7/c0;

    throw p0

    :cond_0
    throw p0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lo7/c0;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lo7/c0;

    throw p0

    :cond_1
    new-instance p2, Lo7/c0;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lo7/c0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lo7/c0;->i(Lo7/s0;)Lo7/c0;

    move-result-object p0

    throw p0
.end method

.method public static O(Ljava/lang/Class;Lo7/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo7/y<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lo7/y;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(Lo7/y$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lo7/y;->B(Lo7/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract B(Lo7/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final F()Lo7/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, Lo7/y$f;->q:Lo7/y$f;

    invoke-virtual {p0, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y;

    return-object v0
.end method

.method public I()V
    .locals 1

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo7/d1;->e(Ljava/lang/Object;)Lo7/h1;

    move-result-object v0

    invoke-interface {v0, p0}, Lo7/h1;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final L()Lo7/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lo7/y$f;->p:Lo7/y$f;

    invoke-virtual {p0, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y$a;

    return-object v0
.end method

.method public final P()Lo7/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lo7/y$f;->p:Lo7/y$f;

    invoke-virtual {p0, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y$a;

    invoke-virtual {v0, p0}, Lo7/y$a;->L(Lo7/y;)Lo7/y$a;

    return-object v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lo7/y;->H(Lo7/y;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Lo7/s0;
    .locals 1

    invoke-virtual {p0}, Lo7/y;->F()Lo7/y;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lo7/y;->memoizedSerializedSize:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo7/d1;->e(Ljava/lang/Object;)Lo7/h1;

    move-result-object v0

    check-cast p1, Lo7/y;

    invoke-interface {v0, p0, p1}, Lo7/h1;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f()Lo7/s0$a;
    .locals 1

    invoke-virtual {p0}, Lo7/y;->P()Lo7/y$a;

    move-result-object v0

    return-object v0
.end method

.method public h(Lo7/k;)V
    .locals 1

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo7/d1;->e(Ljava/lang/Object;)Lo7/h1;

    move-result-object v0

    invoke-static {p1}, Lo7/l;->P(Lo7/k;)Lo7/l;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lo7/h1;->c(Ljava/lang/Object;Lo7/v1;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lo7/a;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo7/d1;->e(Ljava/lang/Object;)Lo7/h1;

    move-result-object v0

    invoke-interface {v0, p0}, Lo7/h1;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo7/a;->memoizedHashCode:I

    return v0
.end method

.method public p()I
    .locals 2

    iget v0, p0, Lo7/y;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo7/d1;->e(Ljava/lang/Object;)Lo7/h1;

    move-result-object v0

    invoke-interface {v0, p0}, Lo7/h1;->f(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo7/y;->memoizedSerializedSize:I

    :cond_0
    iget v0, p0, Lo7/y;->memoizedSerializedSize:I

    return v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lo7/y;->memoizedSerializedSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo7/u0;->e(Lo7/s0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Lo7/s0$a;
    .locals 1

    invoke-virtual {p0}, Lo7/y;->L()Lo7/y$a;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lo7/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/a1<",
            "TMessageType;>;"
        }
    .end annotation

    sget-object v0, Lo7/y$f;->r:Lo7/y$f;

    invoke-virtual {p0, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/a1;

    return-object v0
.end method

.method public x()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lo7/y$f;->d:Lo7/y$f;

    invoke-virtual {p0, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lo7/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lo7/y<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lo7/y$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lo7/y$f;->p:Lo7/y$f;

    invoke-virtual {p0, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y$a;

    return-object v0
.end method

.method public z(Lo7/y$f;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lo7/y;->B(Lo7/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
