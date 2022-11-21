.class public final Lr4/l41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/m41;


# direct methods
.method public constructor <init>(Lr4/m41;)V
    .locals 0

    iput-object p1, p0, Lr4/l41;->a:Lr4/m41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lr4/l41;->a:Lr4/m41;

    invoke-static {p1}, Lr4/m41;->a(Lr4/m41;)Lr4/tc1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/tc1;->M0(Z)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lr4/l41;->a:Lr4/m41;

    invoke-static {p1}, Lr4/m41;->a(Lr4/m41;)Lr4/tc1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr4/tc1;->M0(Z)V

    return-void
.end method
