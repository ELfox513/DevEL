.class public final Lr4/qc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/kc2<",
        "Lr4/kg2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mg2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lc4/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/mg2;",
            ">;",
            "Lr4/is3<",
            "Lc4/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qc2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/qc2;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/qc2;->a:Lr4/is3;

    check-cast v0, Lr4/ng2;

    invoke-virtual {v0}, Lr4/ng2;->b()Lr4/mg2;

    move-result-object v0

    iget-object v1, p0, Lr4/qc2;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc4/f;

    new-instance v2, Lr4/kc2;

    sget-object v3, Lr4/x00;->a:Lr4/u00;

    invoke-virtual {v3}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4, v1}, Lr4/kc2;-><init>(Lr4/eg2;JLc4/f;)V

    return-object v2
.end method
