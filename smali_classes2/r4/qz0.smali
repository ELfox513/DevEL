.class public final Lr4/qz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/iz0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/na0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/im;",
            ">;",
            "Lr4/is3<",
            "Lr4/na0;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qz0;->a:Lr4/is3;

    iput-object p2, p0, Lr4/qz0;->b:Lr4/is3;

    iput-object p3, p0, Lr4/qz0;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/qz0;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/im;

    iget-object v1, p0, Lr4/qz0;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/na0;

    invoke-static {}, Lr4/zr2;->a()Lr4/i83;

    move-result-object v2

    invoke-static {v2}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lr4/iz0;

    invoke-virtual {v0}, Lr4/im;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1, v2}, Lr4/iz0;-><init>(Ljava/lang/String;Lr4/na0;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
