.class public final Lr4/ha2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/fa2;",
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
            "Landroid/content/Context;",
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
            "Landroid/view/ViewGroup;",
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
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;",
            "Lr4/is3<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ha2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/ha2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/ha2;->c:Lr4/is3;

    iput-object p4, p0, Lr4/ha2;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/ha2;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/i83;

    iget-object v1, p0, Lr4/ha2;->b:Lr4/is3;

    check-cast v1, Lr4/mq2;

    invoke-virtual {v1}, Lr4/mq2;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lr4/ha2;->c:Lr4/is3;

    check-cast v2, Lr4/z61;

    invoke-virtual {v2}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v2

    iget-object v3, p0, Lr4/ha2;->d:Lr4/is3;

    check-cast v3, Lr4/f11;

    invoke-virtual {v3}, Lr4/f11;->b()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lr4/fa2;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/fa2;-><init>(Lr4/i83;Landroid/content/Context;Lr4/hp2;Landroid/view/ViewGroup;)V

    return-object v4
.end method
