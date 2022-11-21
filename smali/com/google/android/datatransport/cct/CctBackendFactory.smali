.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lj2/h;)Lj2/m;
    .locals 3

    new-instance v0, Lg2/d;

    invoke-virtual {p1}, Lj2/h;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lj2/h;->e()Lr2/a;

    move-result-object v2

    invoke-virtual {p1}, Lj2/h;->d()Lr2/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lg2/d;-><init>(Landroid/content/Context;Lr2/a;Lr2/a;)V

    return-object v0
.end method
