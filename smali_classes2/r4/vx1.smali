.class public final Lr4/vx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xx1;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/is3<",
            "Lr4/xx1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/i83;

.field public final c:Lr4/ea1;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lr4/i83;Lr4/ea1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/is3<",
            "Lr4/xx1;",
            ">;>;",
            "Lr4/i83;",
            "Lr4/ea1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vx1;->a:Ljava/util/Map;

    iput-object p2, p0, Lr4/vx1;->b:Lr4/i83;

    iput-object p3, p0, Lr4/vx1;->c:Lr4/ea1;

    return-void
.end method

.method public static synthetic b(Lr4/vx1;)Lr4/ea1;
    .locals 0

    iget-object p0, p0, Lr4/vx1;->c:Lr4/ea1;

    return-object p0
.end method


# virtual methods
.method public final a(Lr4/og0;)Lr4/h83;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            ")",
            "Lr4/h83<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/vx1;->c:Lr4/ea1;

    invoke-virtual {v0, p1}, Lr4/ea1;->c0(Lr4/og0;)V

    new-instance v0, Lr4/sv1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lr4/sv1;-><init>(I)V

    invoke-static {v0}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/rz;->R5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lr4/vx1;->a:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/is3;

    if-eqz v4, :cond_0

    new-instance v5, Lr4/tx1;

    invoke-direct {v5, v4, p1}, Lr4/tx1;-><init>(Lr4/is3;Lr4/og0;)V

    const-class v4, Lr4/sv1;

    iget-object v6, p0, Lr4/vx1;->b:Lr4/i83;

    invoke-static {v0, v4, v5, v6}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lr4/ux1;

    invoke-direct {p1, p0}, Lr4/ux1;-><init>(Lr4/vx1;)V

    sget-object v1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, p1, v1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
