.class public final Lr4/m32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/l32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/f21;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/s22;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/l71;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/f21;",
            ">;",
            "Lr4/is3<",
            "Lr4/s22;",
            ">;",
            "Lr4/is3<",
            "Lr4/l71;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m32;->a:Lr4/is3;

    iput-object p2, p0, Lr4/m32;->b:Lr4/is3;

    iput-object p3, p0, Lr4/m32;->c:Lr4/is3;

    iput-object p4, p0, Lr4/m32;->d:Lr4/is3;

    iput-object p5, p0, Lr4/m32;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/m32;->b()Lr4/l32;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/l32;
    .locals 7

    iget-object v0, p0, Lr4/m32;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/f21;

    iget-object v0, p0, Lr4/m32;->b:Lr4/is3;

    check-cast v0, Lr4/t22;

    invoke-virtual {v0}, Lr4/t22;->b()Lr4/s22;

    move-result-object v3

    iget-object v0, p0, Lr4/m32;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/l71;

    iget-object v0, p0, Lr4/m32;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v6}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lr4/l32;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/l32;-><init>(Lr4/f21;Lr4/s22;Lr4/l71;Ljava/util/concurrent/ScheduledExecutorService;Lr4/i83;)V

    return-object v0
.end method
