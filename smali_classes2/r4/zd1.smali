.class public final Lr4/zd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/g52;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/bd1;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lc4/f;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/h52;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/v12;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/bd1;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bd1;",
            "Lr4/is3<",
            "Lc4/f;",
            ">;",
            "Lr4/is3<",
            "Lr4/h52;",
            ">;",
            "Lr4/is3<",
            "Lr4/v12;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zd1;->a:Lr4/bd1;

    iput-object p2, p0, Lr4/zd1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/zd1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/zd1;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/zd1;->a:Lr4/bd1;

    iget-object v1, p0, Lr4/zd1;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc4/f;

    iget-object v2, p0, Lr4/zd1;->c:Lr4/is3;

    check-cast v2, Lr4/i52;

    invoke-virtual {v2}, Lr4/i52;->b()Lr4/h52;

    move-result-object v2

    iget-object v3, p0, Lr4/zd1;->d:Lr4/is3;

    invoke-interface {v3}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/v12;

    invoke-virtual {v0, v1, v2, v3}, Lr4/bd1;->q(Lc4/f;Lr4/h52;Lr4/v12;)Lr4/g52;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
