.class public final Lr4/tp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/sp2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/c12;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pu2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/so2;",
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
            "Lr4/c12;",
            ">;",
            "Lr4/is3<",
            "Lr4/pu2;",
            ">;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;",
            "Lr4/is3<",
            "Lr4/so2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tp2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/tp2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/tp2;->c:Lr4/is3;

    iput-object p4, p0, Lr4/tp2;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/tp2;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/c12;

    iget-object v1, p0, Lr4/tp2;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/pu2;

    iget-object v2, p0, Lr4/tp2;->c:Lr4/is3;

    check-cast v2, Lr4/y31;

    invoke-virtual {v2}, Lr4/y31;->b()Lr4/no2;

    move-result-object v2

    iget-object v3, p0, Lr4/tp2;->d:Lr4/is3;

    check-cast v3, Lr4/a41;

    invoke-virtual {v3}, Lr4/a41;->b()Lr4/so2;

    move-result-object v3

    new-instance v4, Lr4/sp2;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/sp2;-><init>(Lr4/c12;Lr4/pu2;Lr4/no2;Lr4/so2;)V

    return-object v4
.end method
