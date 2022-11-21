.class public final Lr4/yb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/zb2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lr4/i83;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yb2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/yb2;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/zb2;
    .locals 10

    iget-object v0, p0, Lr4/yb2;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-static {}, Lz2/t;->i()Lb3/h;

    move-result-object v0

    invoke-virtual {v0}, Lb3/h;->b()F

    move-result v8

    invoke-static {}, Lz2/t;->i()Lb3/h;

    move-result-object v0

    invoke-virtual {v0}, Lb3/h;->d()Z

    move-result v9

    new-instance v0, Lr4/zb2;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lr4/zb2;-><init>(IZZIIIFZ)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/zb2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/yb2;->a:Lr4/i83;

    new-instance v1, Lr4/xb2;

    invoke-direct {v1, p0}, Lr4/xb2;-><init>(Lr4/yb2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
