.class public final Lr4/v31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/i31;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/t73;

.field public final synthetic b:Lr4/w31;


# direct methods
.method public constructor <init>(Lr4/w31;Lr4/t73;)V
    .locals 0

    iput-object p1, p0, Lr4/v31;->b:Lr4/w31;

    iput-object p2, p0, Lr4/v31;->a:Lr4/t73;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lr4/v31;->b:Lr4/w31;

    invoke-static {v0}, Lr4/w31;->d(Lr4/w31;)V

    iget-object v0, p0, Lr4/v31;->a:Lr4/t73;

    invoke-interface {v0, p1}, Lr4/t73;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lr4/i31;

    iget-object v0, p0, Lr4/v31;->b:Lr4/w31;

    invoke-static {v0}, Lr4/w31;->d(Lr4/w31;)V

    iget-object v0, p0, Lr4/v31;->a:Lr4/t73;

    invoke-interface {v0, p1}, Lr4/t73;->b(Ljava/lang/Object;)V

    return-void
.end method
