.class public final Lr4/ux1;
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
.field public final synthetic a:Lr4/vx1;


# direct methods
.method public constructor <init>(Lr4/vx1;)V
    .locals 0

    iput-object p1, p0, Lr4/ux1;->a:Lr4/vx1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lr4/bp2;

    iget-object v0, p0, Lr4/ux1;->a:Lr4/vx1;

    invoke-static {v0}, Lr4/vx1;->b(Lr4/vx1;)Lr4/ea1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/ea1;->A0(Lr4/bp2;)V

    return-void
.end method
