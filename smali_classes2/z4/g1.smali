.class public final Lz4/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/g2;


# static fields
.field public static final b:Lz4/q1;


# instance fields
.field public final a:Lz4/q1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/h1;

    invoke-direct {v0}, Lz4/h1;-><init>()V

    sput-object v0, Lz4/g1;->b:Lz4/q1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lz4/i1;

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/q1;

    invoke-static {}, Lz4/l0;->c()Lz4/l0;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lz4/g1;->c()Lz4/q1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lz4/i1;-><init>([Lz4/q1;)V

    invoke-direct {p0, v0}, Lz4/g1;-><init>(Lz4/q1;)V

    return-void
.end method

.method public constructor <init>(Lz4/q1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lz4/o0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz4/q1;

    iput-object p1, p0, Lz4/g1;->a:Lz4/q1;

    return-void
.end method

.method public static b(Lz4/p1;)Z
    .locals 1

    invoke-interface {p0}, Lz4/p1;->a()I

    move-result p0

    sget v0, Lz4/m0$d;->i:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Lz4/q1;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/q1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lz4/g1;->b:Lz4/q1;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lz4/f2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz4/f2<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lz4/m0;

    invoke-static {p1}, Lz4/h2;->H(Ljava/lang/Class;)V

    iget-object v1, p0, Lz4/g1;->a:Lz4/q1;

    invoke-interface {v1, p1}, Lz4/q1;->b(Ljava/lang/Class;)Lz4/p1;

    move-result-object v3

    invoke-interface {v3}, Lz4/p1;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lz4/h2;->z()Lz4/x2;

    move-result-object p1

    invoke-static {}, Lz4/e0;->b()Lz4/c0;

    move-result-object v0

    invoke-interface {v3}, Lz4/p1;->c()Lz4/r1;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lz4/w1;->f(Lz4/x2;Lz4/c0;Lz4/r1;)Lz4/w1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lz4/h2;->x()Lz4/x2;

    move-result-object p1

    invoke-static {}, Lz4/e0;->c()Lz4/c0;

    move-result-object v0

    invoke-interface {v3}, Lz4/p1;->c()Lz4/r1;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lz4/w1;->f(Lz4/x2;Lz4/c0;Lz4/r1;)Lz4/w1;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lz4/g1;->b(Lz4/p1;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lz4/a2;->b()Lz4/y1;

    move-result-object v4

    invoke-static {}, Lz4/b1;->d()Lz4/b1;

    move-result-object v5

    invoke-static {}, Lz4/h2;->z()Lz4/x2;

    move-result-object v6

    invoke-static {}, Lz4/e0;->b()Lz4/c0;

    move-result-object v7

    invoke-static {}, Lz4/o1;->b()Lz4/m1;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lz4/v1;->h(Ljava/lang/Class;Lz4/p1;Lz4/y1;Lz4/b1;Lz4/x2;Lz4/c0;Lz4/m1;)Lz4/v1;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lz4/a2;->b()Lz4/y1;

    move-result-object v4

    invoke-static {}, Lz4/b1;->d()Lz4/b1;

    move-result-object v5

    invoke-static {}, Lz4/h2;->z()Lz4/x2;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lz4/o1;->b()Lz4/m1;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lz4/v1;->h(Ljava/lang/Class;Lz4/p1;Lz4/y1;Lz4/b1;Lz4/x2;Lz4/c0;Lz4/m1;)Lz4/v1;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v3}, Lz4/g1;->b(Lz4/p1;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lz4/a2;->a()Lz4/y1;

    move-result-object v4

    invoke-static {}, Lz4/b1;->c()Lz4/b1;

    move-result-object v5

    invoke-static {}, Lz4/h2;->x()Lz4/x2;

    move-result-object v6

    invoke-static {}, Lz4/e0;->c()Lz4/c0;

    move-result-object v7

    invoke-static {}, Lz4/o1;->a()Lz4/m1;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lz4/v1;->h(Ljava/lang/Class;Lz4/p1;Lz4/y1;Lz4/b1;Lz4/x2;Lz4/c0;Lz4/m1;)Lz4/v1;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lz4/a2;->a()Lz4/y1;

    move-result-object v4

    invoke-static {}, Lz4/b1;->c()Lz4/b1;

    move-result-object v5

    invoke-static {}, Lz4/h2;->y()Lz4/x2;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lz4/o1;->a()Lz4/m1;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lz4/v1;->h(Ljava/lang/Class;Lz4/p1;Lz4/y1;Lz4/b1;Lz4/x2;Lz4/c0;Lz4/m1;)Lz4/v1;

    move-result-object p1

    return-object p1
.end method
