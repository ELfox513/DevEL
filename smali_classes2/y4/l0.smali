.class public final Ly4/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly4/k1<",
        "Ly4/k0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly4/n1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/n1<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/l0;->a:Ly4/n1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly4/l0;->a:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Ly4/k0;

    invoke-direct {v1, v0}, Ly4/k0;-><init>(Landroid/app/Application;)V

    return-object v1
.end method
