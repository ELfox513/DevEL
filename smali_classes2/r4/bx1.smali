.class public final Lr4/bx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/bp2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/cx1;


# direct methods
.method public constructor <init>(Lr4/cx1;)V
    .locals 0

    iput-object p1, p0, Lr4/bx1;->a:Lr4/cx1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lr4/bx1;->a:Lr4/cx1;

    invoke-static {p1}, Lr4/cx1;->b(Lr4/cx1;)Lr4/ia1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr4/ia1;->Q(Z)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lr4/bp2;

    iget-object v0, p0, Lr4/bx1;->a:Lr4/cx1;

    invoke-static {v0}, Lr4/cx1;->a(Lr4/cx1;)Lr4/ea1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/ea1;->A0(Lr4/bp2;)V

    return-void
.end method
