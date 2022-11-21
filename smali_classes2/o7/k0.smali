.class public final Lo7/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/i1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/k0$b;
    }
.end annotation


# static fields
.field public static final b:Lo7/r0;


# instance fields
.field public final a:Lo7/r0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/k0$a;

    invoke-direct {v0}, Lo7/k0$a;-><init>()V

    sput-object v0, Lo7/k0;->b:Lo7/r0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lo7/k0;->b()Lo7/r0;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/k0;-><init>(Lo7/r0;)V

    return-void
.end method

.method public constructor <init>(Lo7/r0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lo7/a0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo7/r0;

    iput-object p1, p0, Lo7/k0;->a:Lo7/r0;

    return-void
.end method

.method public static b()Lo7/r0;
    .locals 4

    new-instance v0, Lo7/k0$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lo7/r0;

    invoke-static {}, Lo7/x;->b()Lo7/x;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lo7/k0;->c()Lo7/r0;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo7/k0$b;-><init>([Lo7/r0;)V

    return-object v0
.end method

.method public static c()Lo7/r0;
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

    check-cast v0, Lo7/r0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lo7/k0;->b:Lo7/r0;

    return-object v0
.end method

.method public static d(Lo7/q0;)Z
    .locals 1

    invoke-interface {p0}, Lo7/q0;->c()Lo7/c1;

    move-result-object p0

    sget-object v0, Lo7/c1;->a:Lo7/c1;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/Class;Lo7/q0;)Lo7/h1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo7/q0;",
            ")",
            "Lo7/h1<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lo7/y;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lo7/k0;->d(Lo7/q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo7/z0;->b()Lo7/x0;

    move-result-object v3

    invoke-static {}, Lo7/i0;->b()Lo7/i0;

    move-result-object v4

    invoke-static {}, Lo7/j1;->M()Lo7/o1;

    move-result-object v5

    invoke-static {}, Lo7/s;->b()Lo7/q;

    move-result-object v6

    invoke-static {}, Lo7/p0;->b()Lo7/n0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lo7/v0;->K(Ljava/lang/Class;Lo7/q0;Lo7/x0;Lo7/i0;Lo7/o1;Lo7/q;Lo7/n0;)Lo7/v0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo7/z0;->b()Lo7/x0;

    move-result-object v2

    invoke-static {}, Lo7/i0;->b()Lo7/i0;

    move-result-object v3

    invoke-static {}, Lo7/j1;->M()Lo7/o1;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lo7/p0;->b()Lo7/n0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lo7/v0;->K(Ljava/lang/Class;Lo7/q0;Lo7/x0;Lo7/i0;Lo7/o1;Lo7/q;Lo7/n0;)Lo7/v0;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lo7/k0;->d(Lo7/q0;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo7/z0;->a()Lo7/x0;

    move-result-object v3

    invoke-static {}, Lo7/i0;->a()Lo7/i0;

    move-result-object v4

    invoke-static {}, Lo7/j1;->H()Lo7/o1;

    move-result-object v5

    invoke-static {}, Lo7/s;->a()Lo7/q;

    move-result-object v6

    invoke-static {}, Lo7/p0;->a()Lo7/n0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lo7/v0;->K(Ljava/lang/Class;Lo7/q0;Lo7/x0;Lo7/i0;Lo7/o1;Lo7/q;Lo7/n0;)Lo7/v0;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Lo7/z0;->a()Lo7/x0;

    move-result-object v2

    invoke-static {}, Lo7/i0;->a()Lo7/i0;

    move-result-object v3

    invoke-static {}, Lo7/j1;->I()Lo7/o1;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lo7/p0;->a()Lo7/n0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lo7/v0;->K(Ljava/lang/Class;Lo7/q0;Lo7/x0;Lo7/i0;Lo7/o1;Lo7/q;Lo7/n0;)Lo7/v0;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lo7/h1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo7/h1<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lo7/j1;->J(Ljava/lang/Class;)V

    iget-object v0, p0, Lo7/k0;->a:Lo7/r0;

    invoke-interface {v0, p1}, Lo7/r0;->a(Ljava/lang/Class;)Lo7/q0;

    move-result-object v0

    invoke-interface {v0}, Lo7/q0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lo7/y;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lo7/j1;->M()Lo7/o1;

    move-result-object p1

    invoke-static {}, Lo7/s;->b()Lo7/q;

    move-result-object v1

    invoke-interface {v0}, Lo7/q0;->b()Lo7/s0;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lo7/w0;->i(Lo7/o1;Lo7/q;Lo7/s0;)Lo7/w0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lo7/j1;->H()Lo7/o1;

    move-result-object p1

    invoke-static {}, Lo7/s;->a()Lo7/q;

    move-result-object v1

    invoke-interface {v0}, Lo7/q0;->b()Lo7/s0;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lo7/w0;->i(Lo7/o1;Lo7/q;Lo7/s0;)Lo7/w0;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, v0}, Lo7/k0;->e(Ljava/lang/Class;Lo7/q0;)Lo7/h1;

    move-result-object p1

    return-object p1
.end method
