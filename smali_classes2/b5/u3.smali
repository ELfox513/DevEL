.class public final Lb5/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb5/y;

.field public final b:Lb5/v4;

.field public final c:Lb5/v4;

.field public final d:Lb5/y7;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb5/y;

    invoke-direct {v0}, Lb5/y;-><init>()V

    iput-object v0, p0, Lb5/u3;->a:Lb5/y;

    new-instance v1, Lb5/v4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lb5/v4;-><init>(Lb5/v4;Lb5/y;)V

    iput-object v1, p0, Lb5/u3;->c:Lb5/v4;

    invoke-virtual {v1}, Lb5/v4;->a()Lb5/v4;

    move-result-object v0

    iput-object v0, p0, Lb5/u3;->b:Lb5/v4;

    new-instance v0, Lb5/y7;

    invoke-direct {v0}, Lb5/y7;-><init>()V

    iput-object v0, p0, Lb5/u3;->d:Lb5/y7;

    new-instance v2, Lb5/xf;

    invoke-direct {v2, v0}, Lb5/xf;-><init>(Lb5/y7;)V

    const-string v3, "require"

    invoke-virtual {v1, v3, v2}, Lb5/v4;->g(Ljava/lang/String;Lb5/q;)V

    sget-object v2, Lb5/t2;->a:Lb5/t2;

    const-string v3, "internal.platform"

    invoke-virtual {v0, v3, v2}, Lb5/y7;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    new-instance v0, Lb5/i;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lb5/i;-><init>(Ljava/lang/Double;)V

    const-string v2, "runtime.counter"

    invoke-virtual {v1, v2, v0}, Lb5/v4;->g(Ljava/lang/String;Lb5/q;)V

    return-void
.end method


# virtual methods
.method public final varargs a(Lb5/v4;[Lb5/p5;)Lb5/q;
    .locals 4

    sget-object v0, Lb5/q;->c:Lb5/q;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p2, v2

    invoke-static {v0}, Lb5/x6;->a(Lb5/p5;)Lb5/q;

    move-result-object v0

    iget-object v3, p0, Lb5/u3;->c:Lb5/v4;

    invoke-static {v3}, Lb5/w5;->c(Lb5/v4;)I

    instance-of v3, v0, Lb5/r;

    if-nez v3, :cond_0

    instance-of v3, v0, Lb5/p;

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lb5/u3;->a:Lb5/y;

    invoke-virtual {v3, p1, v0}, Lb5/y;->a(Lb5/v4;Lb5/q;)Lb5/q;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
