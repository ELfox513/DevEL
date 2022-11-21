.class public final Lr4/xu2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lr4/xu2;->a:Z

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lr4/iw2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lr4/xu2;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/xu2;->a:Z

    invoke-static {}, Lr4/uv2;->a()Lr4/uv2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/uv2;->b(Landroid/content/Context;)V

    invoke-static {}, Lr4/pv2;->a()Lr4/pv2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pv2;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lr4/gw2;->a(Landroid/content/Context;)V

    invoke-static {}, Lr4/rv2;->a()Lr4/rv2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/rv2;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
