.class public final Lr4/k50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 0

    iput-object p1, p0, Lr4/k50;->a:Lr4/cs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lb3/g1;

    iget-object v1, p0, Lr4/k50;->a:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lr4/k50;->a:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->n()Lr4/im0;

    move-result-object v2

    iget-object v2, v2, Lr4/im0;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lb3/g1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb3/d0;->c()Lr4/h83;

    return-void
.end method
