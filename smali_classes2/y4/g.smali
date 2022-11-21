.class public final Ly4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/n1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly4/n1<",
        "Ly4/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly4/k;


# direct methods
.method public constructor <init>(Ly4/k;)V
    .locals 0

    iput-object p1, p0, Ly4/g;->a:Ly4/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ly4/i;

    iget-object v1, p0, Ly4/g;->a:Ly4/k;

    invoke-static {v1}, Ly4/k;->d(Ly4/k;)Ly4/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly4/i;-><init>(Ly4/k;Ly4/g;)V

    return-object v0
.end method
