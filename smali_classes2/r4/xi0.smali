.class public final Lr4/xi0;
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
.field public final synthetic a:Lr4/h83;


# direct methods
.method public constructor <init>(Lr4/yi0;Lr4/h83;)V
    .locals 0

    iput-object p2, p0, Lr4/xi0;->a:Lr4/h83;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lr4/yi0;->d()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lr4/xi0;->a:Lr4/h83;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-static {}, Lr4/yi0;->d()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lr4/xi0;->a:Lr4/h83;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
