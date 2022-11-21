.class public final Lr4/xw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ww1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/wv1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
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
            "Lr4/f02;",
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
            "Lr4/hp2;",
            ">;",
            "Lr4/is3<",
            "Lr4/wv1;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lr4/is3<",
            "Lr4/f02;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xw1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/xw1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/xw1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/xw1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/xw1;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/xw1;->a:Lr4/is3;

    check-cast v0, Lr4/z61;

    invoke-virtual {v0}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v2

    iget-object v0, p0, Lr4/xw1;->b:Lr4/is3;

    check-cast v0, Lr4/xv1;

    invoke-virtual {v0}, Lr4/xv1;->b()Lr4/wv1;

    move-result-object v3

    sget-object v4, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v4}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/xw1;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lr4/xw1;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/f02;

    new-instance v0, Lr4/ww1;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/ww1;-><init>(Lr4/hp2;Lr4/wv1;Lr4/i83;Ljava/util/concurrent/ScheduledExecutorService;Lr4/f02;)V

    return-object v0
.end method
