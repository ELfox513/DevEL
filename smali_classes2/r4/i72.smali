.class public final Lr4/i72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/h72<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mt2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/n00;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/q72;",
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
            "Lr4/mt2;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;",
            "Lr4/is3<",
            "Lr4/n00;",
            ">;",
            "Lr4/is3<",
            "Lr4/q72;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i72;->a:Lr4/is3;

    iput-object p2, p0, Lr4/i72;->b:Lr4/is3;

    iput-object p3, p0, Lr4/i72;->c:Lr4/is3;

    iput-object p4, p0, Lr4/i72;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/i72;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/mt2;

    iget-object v0, p0, Lr4/i72;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr4/i83;

    iget-object v0, p0, Lr4/i72;->c:Lr4/is3;

    check-cast v0, Lr4/k72;

    invoke-virtual {v0}, Lr4/k72;->b()Lr4/n00;

    move-result-object v4

    iget-object v0, p0, Lr4/i72;->d:Lr4/is3;

    check-cast v0, Lr4/r72;

    invoke-virtual {v0}, Lr4/r72;->b()Lr4/q72;

    move-result-object v5

    new-instance v0, Lr4/h72;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/h72;-><init>(Lr4/mt2;Lr4/i83;Lr4/n00;Lr4/q72;[B)V

    return-object v0
.end method
