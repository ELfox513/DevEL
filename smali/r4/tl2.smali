.class public final Lr4/tl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/p03<",
        "Lr4/og0;",
        "Lr4/vl2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/wl2;


# direct methods
.method public constructor <init>(Lr4/wl2;)V
    .locals 0

    iput-object p1, p0, Lr4/tl2;->a:Lr4/wl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    check-cast p1, Lr4/og0;

    iget-object v0, p0, Lr4/tl2;->a:Lr4/wl2;

    new-instance v1, Lr4/vl2;

    new-instance v2, Lr4/gr2;

    iget-object v3, p1, Lr4/og0;->u:Ljava/lang/String;

    invoke-direct {v2, v3}, Lr4/gr2;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lr4/vl2;-><init>(Lr4/og0;Lr4/er2;Lr4/ul2;)V

    invoke-static {v0, v1}, Lr4/wl2;->a(Lr4/wl2;Lr4/vl2;)Lr4/vl2;

    iget-object p1, p0, Lr4/tl2;->a:Lr4/wl2;

    invoke-static {p1}, Lr4/wl2;->b(Lr4/wl2;)Lr4/vl2;

    move-result-object p1

    return-object p1
.end method
