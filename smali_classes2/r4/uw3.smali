.class public final Lr4/uw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/l7;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/l7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lr4/wd;

    invoke-direct {v0}, Lr4/wd;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr4/uw3;->a:Landroid/content/Context;

    iput-object v0, p0, Lr4/uw3;->b:Lr4/l7;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lr4/o8;
    .locals 3

    new-instance v0, Lr4/vw3;

    iget-object v1, p0, Lr4/uw3;->a:Landroid/content/Context;

    iget-object v2, p0, Lr4/uw3;->b:Lr4/l7;

    check-cast v2, Lr4/wd;

    invoke-virtual {v2}, Lr4/wd;->f()Lr4/bg;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lr4/vw3;-><init>(Landroid/content/Context;Lr4/o8;)V

    return-object v0
.end method
