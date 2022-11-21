.class public final Lr4/ti2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ri2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/nl0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/cl0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/nl0;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lr4/is3<",
            "Lr4/cl0;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ti2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/ti2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/ti2;->c:Lr4/is3;

    iput-object p4, p0, Lr4/ti2;->d:Lr4/is3;

    iput-object p5, p0, Lr4/ti2;->e:Lr4/is3;

    iput-object p6, p0, Lr4/ti2;->f:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lr4/ti2;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/nl0;

    iget-object v0, p0, Lr4/ti2;->b:Lr4/is3;

    check-cast v0, Lr4/ji2;

    invoke-virtual {v0}, Lr4/ji2;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Lr4/cl0;

    invoke-direct {v4}, Lr4/cl0;-><init>()V

    sget-object v5, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v5}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/ti2;->e:Lr4/is3;

    check-cast v0, Lr4/gi2;

    invoke-virtual {v0}, Lr4/gi2;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lr4/ti2;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lr4/ri2;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lr4/ri2;-><init>(Lr4/nl0;ZLr4/cl0;Lr4/i83;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;[B)V

    return-object v0
.end method
