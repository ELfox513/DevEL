.class public final Lr4/tf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/uf2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/im0;


# direct methods
.method public constructor <init>(Lr4/i83;Landroid/content/Context;Lr4/im0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tf2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/tf2;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/tf2;->c:Lr4/im0;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/uf2;
    .locals 10

    new-instance v8, Lr4/uf2;

    iget-object v0, p0, Lr4/tf2;->b:Landroid/content/Context;

    invoke-static {v0}, Ld4/e;->a(Landroid/content/Context;)Ld4/d;

    move-result-object v0

    invoke-virtual {v0}, Ld4/d;->g()Z

    move-result v1

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/tf2;->b:Landroid/content/Context;

    invoke-static {v0}, Lb3/k2;->h(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lr4/tf2;->c:Lr4/im0;

    iget-object v3, v0, Lr4/im0;->a:Ljava/lang/String;

    invoke-static {}, Lz2/t;->f()Lb3/g;

    invoke-static {}, Lb3/g;->s()Z

    move-result v4

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/tf2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v5, v0

    :goto_0
    iget-object v0, p0, Lr4/tf2;->b:Landroid/content/Context;

    const-string v6, "com.google.android.gms.ads.dynamite"

    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lr4/tf2;->b:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    move-object v0, v8

    move v6, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lr4/uf2;-><init>(ZZLjava/lang/String;ZIII)V

    return-object v8
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/uf2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/tf2;->a:Lr4/i83;

    new-instance v1, Lr4/sf2;

    invoke-direct {v1, p0}, Lr4/sf2;-><init>(Lr4/tf2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
