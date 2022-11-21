.class public final Lr4/oc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/mc2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/lq1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;",
            "Lr4/is3<",
            "Lr4/lq1;",
            ">;",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/oc2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/oc2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/oc2;->c:Lr4/is3;

    iput-object p4, p0, Lr4/oc2;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr4/oc2;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/lq1;

    iget-object v2, p0, Lr4/oc2;->c:Lr4/is3;

    check-cast v2, Lr4/z61;

    invoke-virtual {v2}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v2

    iget-object v3, p0, Lr4/oc2;->d:Lr4/is3;

    invoke-interface {v3}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lr4/mc2;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/mc2;-><init>(Lr4/i83;Lr4/lq1;Lr4/hp2;Ljava/lang/String;)V

    return-object v4
.end method
