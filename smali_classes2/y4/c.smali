.class public final Ly4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly4/k1<",
        "Ly4/k2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/s1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/l;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly4/n1;Ly4/n1;Ly4/n1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/n1<",
            "Ly4/s1;",
            ">;",
            "Ly4/n1<",
            "Ly4/l;",
            ">;",
            "Ly4/n1<",
            "Ly4/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/c;->a:Ly4/n1;

    iput-object p2, p0, Ly4/c;->b:Ly4/n1;

    iput-object p3, p0, Ly4/c;->c:Ly4/n1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly4/c;->b()Ly4/k2;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ly4/k2;
    .locals 4

    iget-object v0, p0, Ly4/c;->a:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/s1;

    iget-object v1, p0, Ly4/c;->b:Ly4/n1;

    check-cast v1, Ly4/m;

    invoke-virtual {v1}, Ly4/m;->b()Ly4/l;

    move-result-object v1

    iget-object v2, p0, Ly4/c;->c:Ly4/n1;

    invoke-interface {v2}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4/n;

    new-instance v3, Ly4/k2;

    invoke-direct {v3, v0, v1, v2}, Ly4/k2;-><init>(Ly4/s1;Ly4/l;Ly4/n;)V

    return-object v3
.end method
