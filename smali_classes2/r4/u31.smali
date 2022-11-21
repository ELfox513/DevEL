.class public final Lr4/u31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/p31;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/t73;

.field public final synthetic b:Lr4/w31;


# direct methods
.method public constructor <init>(Lr4/w31;Lr4/t73;)V
    .locals 0

    iput-object p1, p0, Lr4/u31;->b:Lr4/w31;

    iput-object p2, p0, Lr4/u31;->a:Lr4/t73;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lr4/u31;->a:Lr4/t73;

    invoke-interface {v0, p1}, Lr4/t73;->a(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lr4/u31;->b:Lr4/w31;

    invoke-static {p1}, Lr4/w31;->d(Lr4/w31;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lr4/p31;

    iget-object v0, p0, Lr4/u31;->b:Lr4/w31;

    iget-object p1, p1, Lr4/p31;->a:Ljava/util/List;

    iget-object v1, p0, Lr4/u31;->a:Lr4/t73;

    invoke-static {v0, p1, v1}, Lr4/w31;->b(Lr4/w31;Ljava/util/List;Lr4/t73;)V

    return-void
.end method
