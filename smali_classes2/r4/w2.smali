.class public final Lr4/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/u2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lr4/v2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr4/w2;->a:Landroid/content/Context;

    new-instance p1, Lr4/u2;

    invoke-direct {p1, p0, p2, p3}, Lr4/u2;-><init>(Lr4/w2;Landroid/os/Handler;Lr4/v2;)V

    iput-object p1, p0, Lr4/w2;->b:Lr4/u2;

    return-void
.end method
